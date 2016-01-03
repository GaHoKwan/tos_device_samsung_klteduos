.class public Lcom/android/server/DrmEventService;
.super Landroid/app/Service;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DrmEventService$OpenDatabaseHelper;,
        Lcom/android/server/DrmEventService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final CONTENT_MIME_TYPE_B_DRM_ROAP_TRIGGER_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+wbxml"

.field private static final DRM_MIMETYPE_RIGHTS_WBXML:I = 0x4

.field public static final DRM_MIMETYPE_RIGHTS_WBXML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field private static final DRM_MIMETYPE_RIGHTS_XML:I = 0x3

.field public static final DRM_MIMETYPE_RIGHTS_XML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field private static final DRM_TIME_PATH:Ljava/lang/String; = "/data/data/.drm/.playready/beforeTime.ini"

.field private static final HANDLE_DRM_INIT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DrmEventService_CMCC"

.field private static final TIME_CLOCK_UPDATE:I = 0x6

.field private static final WAP_PUSH_UPDATE:I = 0x5

.field private static final drmDbPath:Ljava/lang/String; = "/data/system/databases/drmdatabase.db"

.field private static final drmDbPath_movieNand:Ljava/lang/String; = "/data/system/databases/drmdatabase.db"

.field private static final drmDbPath_oneNand:Ljava/lang/String; = "/dbdata/databases/com.sec.android.providers.drm/drmdatabase.db"

.field private static final drmLegacyDbPath:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/databases/drmdatabase.db"

.field private static final drmPath:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/databases"

.field private static final drmPath_movieNand:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/databases"

.field private static final drmPath_oneNand:Ljava/lang/String; = "/dbdata/databases/com.sec.android.providers.drm"

.field private static final drmcertiPath:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/.cert"

.field private static final drmcertiPath_movieNand:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/.cert"

.field private static final drmcertiPath_oneNand:Ljava/lang/String; = "/dbdata/databases/com.sec.android.providers.drm/.cert"

.field static isLogEnabled:Z


# instance fields
.field private bNitzReceived:Z

.field private bTimeChangeReceived:Z

.field private bTimeReceivedFromGPS:Z

.field contentId:Ljava/lang/String;

.field drmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field gpstimeforDRMReceiver:Landroid/content/BroadcastReceiver;

.field private isRegisteredBootTime:Z

.field mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mIs24HourFormat:Z

.field private mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field mTvOutReceiver:Landroid/content/BroadcastReceiver;

.field nitZReceiver:Landroid/content/BroadcastReceiver;

.field nitzFilter:Landroid/content/IntentFilter;

.field private timeFormat:Ljava/lang/String;

.field userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

.field wapPushReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 107
    iput-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 108
    iput-object v1, p0, Lcom/android/server/DrmEventService;->nitzFilter:Landroid/content/IntentFilter;

    .line 109
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->bTimeChangeReceived:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->bNitzReceived:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->bTimeReceivedFromGPS:Z

    .line 114
    iput-object v1, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    .line 116
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->mIs24HourFormat:Z

    .line 388
    new-instance v0, Lcom/android/server/DrmEventService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$1;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->gpstimeforDRMReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v0, Lcom/android/server/DrmEventService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$2;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->mTvOutReceiver:Landroid/content/BroadcastReceiver;

    .line 1127
    new-instance v0, Lcom/android/server/DrmEventService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$3;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->nitZReceiver:Landroid/content/BroadcastReceiver;

    .line 1135
    new-instance v0, Lcom/android/server/DrmEventService$4;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$4;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 1144
    new-instance v0, Lcom/android/server/DrmEventService$5;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$5;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->wapPushReceiver:Landroid/content/BroadcastReceiver;

    .line 1235
    new-instance v0, Lcom/android/server/DrmEventService$6;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$6;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->drmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 1371
    new-instance v0, Lcom/android/server/DrmEventService$7;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$7;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 1401
    return-void
.end method

.method public static GetCIDFromRoapTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "roapTrigger"    # Ljava/lang/String;

    .prologue
    .line 1393
    if-eqz p0, :cond_0

    .line 1394
    const-string v2, "<contentID>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0xb

    .line 1395
    .local v1, "startPosition":I
    const-string v2, "</contentID>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1396
    .local v0, "endPostion":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1398
    .end local v0    # "endPostion":I
    .end local v1    # "startPosition":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/DrmEventService;ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DrmEventService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/drm/DrmInfo;
    .param p3, "x3"    # Landroid/drm/DrmInfoRequest;
    .param p4, "x4"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DrmEventService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DrmEventService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DrmEventService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DrmEventService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/DrmEventService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DrmEventService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/DrmEventService;->bTimeReceivedFromGPS:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/DrmEventService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DrmEventService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/DrmEventService;->userUpdateHandler(Landroid/content/Intent;)V

    return-void
.end method

.method private static checkForFileorDirectoryExists(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1442
    const/4 v2, 0x1

    .line 1443
    .local v2, "result":I
    if-eqz p0, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1444
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1445
    .local v0, "len":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 1446
    const-string v3, "DrmEventService_CMCC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length is NOT ZERO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v2, 0x3

    .line 1455
    .end local v0    # "len":J
    :goto_0
    return v2

    .line 1449
    .restart local v0    # "len":J
    :cond_0
    const/4 v2, 0x2

    .line 1450
    const-string v3, "DrmEventService_CMCC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length is ZERO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1453
    .end local v0    # "len":J
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 616
    :try_start_0
    const-string v0, "CREATE UNIQUE INDEX asset_idx_cid ON drm2asset (c_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 617
    const-string v0, "CREATE INDEX\tmetering_idx_riid ON drm2meteringReport (ri_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    const-string v0, "CREATE INDEX  rights_idx_time ON drm2rights (time_t);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 619
    const-string v0, "CREATE INDEX\trights_idx_play ON drm2rights (play_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 620
    const-string v0, "CREATE INDEX\trights_idx_display ON drm2rights (display_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 621
    const-string v0, "CREATE INDEX\trights_idx_execute ON drm2rights (execute_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    const-string v0, "CREATE INDEX\trights_idx_print ON drm2rights (print_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    const-string v0, "CREATE INDEX\trights_idx_export ON drm2rights (export_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    const-string v0, "CREATE INDEX\tcertInfo_idx_dev_id ON drm2certInfo (dev_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    const-string v0, "CREATE INDEX\tcertChainInfo_idx_no ON drm2certChainInfo (no);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 626
    const-string v0, "CREATE INDEX\tcertChainInfo_idx_id ON drm2certChainInfo (id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 627
    const-string v0, "CREATE INDEX\tcertChainInfo_idx_subject ON drm2certChainInfo (subject);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    const-string v0, "CREATE INDEX\tdoContext_idx_do_id ON drm2doContext (do_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 629
    const-string v0, "CREATE INDEX\tdoContext_idx_rictx_id ON drm2doContext (rictx_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    const-string v0, "CREATE INDEX\tdoKeyList_idx_doctx_id ON drm2doKeyList (doctx_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    const-string v0, "CREATE INDEX\tvalidData_idx_rictx_id ON drm2validData (rictx_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    const-string v0, "CREATE INDEX\tUCWhiteList_idx_fqdn ON drm2UCWhiteList (ri_fqdn);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 633
    const-string v0, "CREATE INDEX\tUCWhiteList_idx_riid ON drm2UCWhiteList (ri_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    const-string v0, "CREATE INDEX\tdoWhiteList_idx_url ON drm2doWhiteList (url);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 635
    const-string v0, "CREATE INDEX\tdrm2contentInfo_idx_fn ON drm2contentInfo (filepath);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 636
    const-string v0, "CREATE INDEX\tdrm2contentdir_idx_d_id ON drm2contentdir (d_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 637
    const-string v0, "CREATE INDEX\tdrm2contentInfo_mmc_idx_fn ON drm2contentInfo_mmc (filepath);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 638
    const-string v0, "CREATE INDEX\tdrm2contentdir_mmc_idx_d_id ON drm2contentdir_mmc (d_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 640
    const-string v0, "INSERT INTO drm2RegistryInt (Deltasec) VALUES (0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const-string v0, "INSERT INTO drm2RegistryString ( Cts ) VALUES (\'NONE\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 651
    return-void

    .line 649
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 656
    :try_start_0
    const-string v0, "CREATE TABLE drm2asset (a_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,c_id VARCHAR(256) DEFAULT NULL,digest_method INT DEFAULT 0,digest_value VARCHAR(30) DEFAULT NULL,key_size INT DEFAULT 0,key_value VARCHAR(128) DEFAULT NULL,key_value_hash VARCHAR(30),ro_dnld INT DEFAULT 0,ref INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 665
    const-string v0, "CREATE TABLE drm2meteringReport (m_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,ri_id VARCHAR(30) NOT NULL,c_id VARCHAR(256) NOT NULL,guid VARCHAR(256) DEFAULT NULL,play_curr_duration INT DEFAULT 0,display_curr_duration INT DEFAULT 0,execute_curr_duration INT DEFAULT 0,print_curr_duration INT DEFAULT 0,export_curr_duration INT DEFAULT 0,play_count INT DEFAULT 0,play_duration INT DEFAULT 0,display_count INT DEFAULT 0,display_duration INT DEFAULT 0,execute_count INT DEFAULT 0,execute_duration INT DEFAULT 0,print_count INT DEFAULT 0,print_duration INT DEFAULT 0,export_count INT DEFAULT 0,export_duration INT DEFAULT 0,ref_count INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    const-string v0, "CREATE TABLE drm2TrackedInfo (ri_id VARCHAR(30) NOT NULL PRIMARY KEY,flag_remind CHAR(1) DEFAULT \'1\' );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 689
    const-string v0, "CREATE TABLE drm2rights (r_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,name VARCHAR(256) DEFAULT NULL,ro_alias VARCHAR(100) DEFAULT NULL,guid VARCHAR(256),time_t DATETIME,play_size INT DEFAULT 0,play_concurr_cnt INT DEFAULT 0,play_rights VARCHAR(512) DEFAULT NULL,play_hash VARCHAR(30) DEFAULT NULL,play_eval INT DEFAULT 0,display_size INT DEFAULT 0,display_concurr_cnt INT DEFAULT 0,display_rights VARCHAR(512) DEFAULT NULL,display_hash VARCHAR(30) DEFAULT NULL,display_eval INT DEFAULT 0,execute_size INT DEFAULT 0,execute_concurr_cnt INT DEFAULT 0,execute_rights VARCHAR(512) DEFAULT NULL,execute_hash VARCHAR(30) DEFAULT NULL,execute_eval INT DEFAULT 0,print_size INT DEFAULT 0,print_concurr_cnt INT DEFAULT 0,print_rights VARCHAR(512) DEFAULT NULL,print_hash VARCHAR(30) DEFAULT NULL,print_eval INT DEFAULT 0,export_size INT DEFAULT 0,export_concurr_cnt INT DEFAULT 0,export_rights VARCHAR(512) DEFAULT NULL,export_hash VARCHAR(30) DEFAULT NULL,export_eval INT DEFAULT 0,export_mode INT DEFAULT 0,p_id INT DEFAULT 0,ri_context INT DEFAULT 0,do_context INT DEFAULT 0, disable_ind CHAR(1) DEFAULT \'0\' );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 722
    const-string v0, "CREATE TABLE drm2lookup (a_id INT DEFAULT 0,r_id INT DEFAULT 0,dmn_id INT DEFAULT 0,usages CHAR(6));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    const-string v0, "CREATE TABLE drm2certInfo (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,path VARCHAR(128) DEFAULT NULL,dev_id VARCHAR(30) DEFAULT NULL,dev_offset INT DEFAULT 0,dev_length INT DEFAULT 0,pri_offset INT DEFAULT 0,pri_length INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    const-string v0, "CREATE TABLE drm2certChainInfo (info_id INT,no INT DEFAULT 0,id VARCHAR(30) DEFAULT NULL,subject VARCHAR(256) DEFAULT NULL,offset INT DEFAULT 0,length INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    const-string v0, "CREATE TABLE drm2riContext (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,dev_id VARCHAR(30) DEFAULT NULL,ver INT,ri_id VARCHAR(30) ,ri_pkey VARCHAR(512),ri_pkey_modsize INT,ri_pkey_keysize INT,ri_alias VARCHAR(100),ri_url VARCHAR(1024),expiry_time DATETIME,caching_ind CHAR(1),OCSP_id VARCHAR(30),OCSP_pkey VARCHAR(512),OCSP_pkey_modsize INT,OCSP_pkey_keysize INT,OCSP_next_update DATETIME,expiry_time_hash VARCHAR(30),hash VARCHAR(30),selected_algos VARCHAR(20));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 750
    const-string v0, "CREATE TABLE drm2validData (rictx_id INT NOT NULL,no INT,certid VARCHAR(174),certid_size INT,hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 754
    const-string v0, "CREATE TABLE drm2doContext (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,do_id VARCHAR(18),do_no INT,do_alias VARCHAR(100),expiry_time DATETIME,noConsumeAfter DATETIME,hchain_ind char(1),rictx_id INT,hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 760
    const-string v0, "CREATE TABLE drm2doKeyList (doctx_id INT,do_no INT,do_key VARCHAR(50),do_key_hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    const-string v0, "CREATE TABLE drm2UCWhiteList (ri_fqdn VARCHAR(100) NOT NULL,ri_id VARCHAR(30) NOT NULL,flag_roap CHAR(1) DEFAULT \'0\',flag_meter CHAR(1) DEFAULT \'0\', PRIMARY KEY(ri_fqdn, ri_id) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    const-string v0, "CREATE TABLE drm2doWhiteList (url VARCHAR(100),rictx_id INT,hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 773
    const-string v0, "CREATE TABLE drm2replaycache (t_stamp DATETIME,guid VARCHAR(256),hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 776
    const-string v0, "CREATE TABLE drm2replaycacheguid (rep_id INT NOT NULL PRIMARY KEY,guid VARCHAR(256),hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    const-string v0, "CREATE TABLE drm2contentInfo (mo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT , filepath VARCHAR(256), location INT, drm_type INT, tr_id CHAR(17), hash VARCHAR(30),no INT, a_id INT, g_id INT, enc_method INT, content_type VARCHAR(32) , DCFIntegrityCheck INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 787
    const-string v0, "CREATE TABLE drm2contentdir (d_id INTEGER PRIMARY KEY AUTOINCREMENT, d_path VARCHAR(256) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 790
    const-string v0, "CREATE TABLE drm2contentInfo_mmc (mo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT  , filepath VARCHAR(256), location INT, drm_type INT, tr_id CHAR(17), hash VARCHAR(30), no INT, a_id INT, g_id INT, enc_method INT, content_type VARCHAR(32) , DCFIntegrityCheck INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 798
    const-string v0, "CREATE TABLE drm2contentdir_mmc (d_id INTEGER PRIMARY KEY AUTOINCREMENT, d_path VARCHAR(256) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 801
    const-string v0, "CREATE TABLE drm2_ro_store(rights_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,domainname VARCHAR(20) DEFAULT \' \',ri_id VARCHAR(50),ro_id VARCHAR(256),ro_type INT,rights_size INT,rights VARCHAR(8000),install_status INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 808
    const-string v0, "CREATE TABLE drm2OnExpiredURLInfo (asset_uid VARCHAR(256) NOT NULL PRIMARY KEY,onexpired_url VARCHAR(1024) NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 811
    const-string v0, "CREATE TABLE Drm2ExpiryTimeTable( idx int primary key,\tcontainerNo int default 0, szFilePath\t\t\tvarchar(256) not null, expirytime\t\t\tbigint\tnot null, expirytype\t\t\tint default -1, settingCategory \tint default 0, count\t\t\t\tint default 0, context \t\t\tint default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 819
    const-string v0, "CREATE TABLE drm2RegistryInt( \tregint_id INTEGER PRIMARY KEY AUTOINCREMENT, \tDeltasec\t\t\t\tINT \tDEFAULT  0, \tTracking\t\t\t\tINT \tDEFAULT  0, \tNextUID \t\t\t\tINT \tDEFAULT  0, \tVersion \t\t\t\tINT \tDEFAULT  1, \tIMSILen \t\t\t\tINT \tDEFAULT  0, \tIMEILen \t\t\t\tINT \tDEFAULT  0, \tExpiryReminderAlarmID\tINT \tDEFAULT  0, \tExpRemSettingCategory\tINT \tDEFAULT -1, \tExpRemExpiryType\t\tINT \tDEFAULT -1, \tExpiryReminderTime\t\tFLOAT\tDEFAULT  0.00);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 831
    const-string v0, "CREATE TABLE drm2RegistryString( regstring_id INTEGER PRIMARY KEY AUTOINCREMENT, Cts \t\t\tVARCHAR(256) DEFAULT NONE, IMSI\t\t\tVARCHAR(256) DEFAULT FFFFFFFFFFFFFFF, IMEI\t\t\tVARCHAR(256) DEFAULT FFFFFFFFFFFFFFFFFF, ExpRemFilePath\tVARCHAR(256) DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 837
    const-string v0, "CREATE TABLE Drm2RunAlarmTable(\tRoID\t\t\t\t\tint , ExpiryDateTime\t\t\tbigint\tnot null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 844
    return-void

    .line 842
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private deleteDRMDBFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 859
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private static deleteLegacydb(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1465
    if-eqz p0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1466
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "DrmEventService_CMCC"

    const-string v1, "deleteLegacydb DB exists .. so trying to delete "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    const-string v0, "DrmEventService_CMCC"

    const-string v1, "deleted old db "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :goto_0
    return-void

    .line 1473
    :cond_1
    const-string v0, "DrmEventService_CMCC"

    const-string v1, "failed to delete old db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1476
    :cond_2
    const-string v0, "DrmEventService_CMCC"

    const-string v1, "deleteLegacydb DB does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBeforeTime()J
    .locals 10

    .prologue
    .line 862
    const-wide/16 v0, 0x0

    .line 863
    .local v0, "beforeTime":J
    const/4 v2, 0x0

    .line 865
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/data/.drm/.playready/beforeTime.ini"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_0

    .line 867
    const-string v7, "DrmEventService_CMCC"

    const-string v8, "FileReading Start"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    const-string v5, ""

    .line 869
    .local v5, "nextLine":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 870
    .local v6, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 871
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 882
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 884
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 894
    if-eqz v2, :cond_1

    .line 896
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 901
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_2
    return-wide v0

    .line 873
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_4
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_3

    .line 874
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 878
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_4

    .line 879
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme in Long is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 894
    :cond_4
    if-eqz v3, :cond_5

    .line 896
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_3
    move-object v2, v3

    .line 899
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 885
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v4

    .line 887
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 888
    const-wide/16 v0, -0x64

    .line 894
    if-eqz v2, :cond_1

    .line 896
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 897
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 889
    :catch_3
    move-exception v4

    .line 891
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 894
    if-eqz v2, :cond_1

    .line 896
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 894
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v2, :cond_6

    .line 896
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 894
    :cond_6
    :goto_7
    throw v7

    .line 897
    :catch_4
    move-exception v8

    goto :goto_7

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_5
    move-exception v7

    goto :goto_3

    .line 894
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 889
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 885
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 882
    :catch_8
    move-exception v4

    goto/16 :goto_1
.end method

.method private declared-synchronized handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I
    .locals 6
    .param p1, "operation"    # I
    .param p2, "drmInfo"    # Landroid/drm/DrmInfo;
    .param p3, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1483
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_0

    .line 1484
    const-string v3, "DrmEventService_CMCC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDbOperation case "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    const/4 v1, -0x1

    .line 1487
    .local v1, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 1542
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    .line 1543
    const-string v3, "DrmEventService_CMCC"

    const-string v4, "Not a valid operation requested in handleDbOperation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 1491
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v3, :cond_3

    .line 1492
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2

    .line 1493
    const-string v3, "DrmEventService_CMCC"

    const-string v4, "handleDbOperation processDrmInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_2
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p2}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    .line 1496
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    .line 1497
    const-string v3, "DrmEventService_CMCC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processDrmInfo ret is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1483
    .end local v1    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1500
    .restart local v1    # "ret":I
    :cond_3
    :try_start_2
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    .line 1501
    const-string v3, "DrmEventService_CMCC"

    const-string v4, "Failed to Install the rights received. No DRM manager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :pswitch_1
    const/4 v2, 0x0

    .line 1508
    .local v2, "status":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1510
    .local v0, "result_info":Landroid/drm/DrmInfo;
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v3, :cond_7

    .line 1511
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_4

    .line 1512
    const-string v3, "DrmEventService_CMCC"

    const-string v4, "handleDbOperation acquireDrmInfo "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_4
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_6

    .line 1515
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1516
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_5

    .line 1517
    const-string v3, "DrmEventService_CMCC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireDrmInfo status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_5
    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1520
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1523
    :cond_6
    const-string v3, "DrmEventService_CMCC"

    const-string v4, " no response from SecureClock "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1527
    :cond_7
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    .line 1528
    const-string v3, "DrmEventService_CMCC"

    const-string v4, "Failed to Install the rights received. No DRM manager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1535
    .end local v0    # "result_info":Landroid/drm/DrmInfo;
    .end local v2    # "status":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p4}, Lcom/android/server/DrmEventService;->handleDrmInit(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1536
    const/4 v1, 0x0

    .line 1538
    goto/16 :goto_0

    .line 1487
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleDrmInit(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V

    .line 508
    const-string v6, "/data/system/databases/drmdatabase.db"

    invoke-static {v6}, Lcom/android/server/DrmEventService;->checkForFileorDirectoryExists(Ljava/lang/String;)I

    move-result v5

    .line 509
    .local v5, "temp":I
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_0

    .line 510
    const-string v6, "DrmEventService_CMCC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "temp Value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 512
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_1

    .line 513
    const-string v6, "DrmEventService_CMCC"

    const-string v7, "DRM Initialization is Not Yet Done /data/system/databases/drmdatabase.db"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    :try_start_0
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 517
    .local v3, "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 519
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 521
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 523
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 525
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    :cond_2
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v2

    .line 534
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 539
    :try_start_1
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_4

    .line 540
    const-string v6, "DrmEventService_CMCC"

    const-string v7, "DRM Initialization is not done:calling initOmaDRM/data/system/databases/drmdatabase.db"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_4
    const-string v6, "/data/system/databases/drmdatabase.db"

    invoke-direct {p0, v6}, Lcom/android/server/DrmEventService;->deleteDRMDBFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 542
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 544
    .restart local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 546
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 548
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 550
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 552
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 563
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    :catch_1
    move-exception v2

    .line 564
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_2

    .line 561
    const-string v6, "DrmEventService_CMCC"

    const-string v7, "File could not able to delete "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 566
    :cond_6
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 568
    :try_start_3
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_7

    .line 569
    const-string v6, "DrmEventService_CMCC"

    const-string v7, "Verify all tables are created properly or not ?"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_7
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 572
    .restart local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 573
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 574
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 575
    .local v4, "tablesCount":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 576
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 577
    const/16 v6, 0x1b

    if-ge v4, v6, :cond_9

    .line 579
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 580
    const-string v6, "/data/system/databases/drmdatabase.db"

    invoke-direct {p0, v6}, Lcom/android/server/DrmEventService;->deleteDRMDBFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 581
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    .end local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 583
    .restart local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 585
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 587
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 589
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 591
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 607
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local v4    # "tablesCount":I
    :catch_2
    move-exception v2

    .line 608
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 599
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "mOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    .restart local v4    # "tablesCount":I
    :cond_8
    :try_start_4
    const-string v6, "DrmEventService_CMCC"

    const-string v7, "File could not able to delete "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    :cond_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 605
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method private declared-synchronized registerReceiever()V
    .locals 8

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_0

    .line 334
    const-string v5, "DrmEventService_CMCC"

    const-string v6, "Registering for both NITZ and Timeset"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v4, "userTimeFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v2, "nitzFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/DrmEventService;->mIs24HourFormat:Z

    .line 353
    iget-boolean v5, p0, Lcom/android/server/DrmEventService;->mIs24HourFormat:Z

    if-eqz v5, :cond_4

    .line 354
    const-string v5, "24"

    iput-object v5, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    .line 358
    :goto_0
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_1

    .line 359
    const-string v5, "DrmEventService_CMCC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time Format is: :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->nitZReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v3, "tvOutFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->mTvOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_2

    .line 375
    const-string v5, "DrmEventService_CMCC"

    const-string v6, "[GPS Time for DRM] registerReceiever GPS_TIME_FOR_DRM"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v1, "gpstimeforDRMFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.GPS_SET_TIME"

    .line 378
    .local v0, "ACTION_GPS_SET_TIME":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->gpstimeforDRMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    .line 383
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_3

    .line 384
    const-string v5, "DrmEventService_CMCC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerReceiever, All registration over, isRegisteredBootTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_3
    monitor-exit p0

    return-void

    .line 356
    .end local v0    # "ACTION_GPS_SET_TIME":Ljava/lang/String;
    .end local v1    # "gpstimeforDRMFilter":Landroid/content/IntentFilter;
    .end local v3    # "tvOutFilter":Landroid/content/IntentFilter;
    :cond_4
    :try_start_1
    const-string v5, "12"

    iput-object v5, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v2    # "nitzFilter":Landroid/content/IntentFilter;
    .end local v4    # "userTimeFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private setPermissions()V
    .locals 0

    .prologue
    .line 856
    return-void
.end method

.method private userUpdateHandler(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "nowTimeFormat":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 436
    .local v0, "autoEnable":I
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_0

    .line 437
    const-string v4, "DrmEventService_CMCC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v4, "DrmEventService_CMCC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v4, "DrmEventService_CMCC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 444
    .local v1, "now":Ljava/util/Date;
    iget-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 445
    const-string v4, "24"

    iput-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    .line 448
    :cond_1
    if-nez v2, :cond_2

    .line 449
    const-string v2, "24"

    .line 451
    :cond_2
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_3

    .line 452
    const-string v4, "DrmEventService_CMCC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v4, "DrmEventService_CMCC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3
    iget-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 458
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_4

    .line 459
    const-string v4, "DrmEventService_CMCC"

    const-string/jumbo v5, "userUpdatedTimeReceiver time format is not changed check if it is NITZ Update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_4
    if-nez v0, :cond_7

    .line 462
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_5

    .line 463
    const-string v4, "DrmEventService_CMCC"

    const-string v5, "This is a not NITZ update.Time format is also not changed.Update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/DrmEventService;->bTimeReceivedFromGPS:Z

    if-nez v4, :cond_6

    .line 466
    const-string v4, "DrmEventService_CMCC"

    const-string v5, "[GPS Time for DRM] bTimeReceivedFromGPS is false, need this function"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/server/DrmEventService;->handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    .line 495
    :cond_6
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/DrmEventService;->bTimeReceivedFromGPS:Z

    .line 497
    return-void

    .line 472
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 474
    .local v3, "telephonymanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_9

    .line 475
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_8

    .line 476
    const-string v4, "DrmEventService_CMCC"

    const-string v5, "Auto time update is on but sim is not in ready state hence no NITZ update will follow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/DrmEventService;->bTimeReceivedFromGPS:Z

    if-nez v4, :cond_6

    .line 479
    const-string v4, "DrmEventService_CMCC"

    const-string v5, "[GPS Time for DRM] bTimeReceivedFromGPS is false, need this function"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/DrmEventService;->handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    goto :goto_0

    .line 486
    :cond_9
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_6

    .line 487
    const-string v4, "DrmEventService_CMCC"

    const-string v5, "This is a NITZ update.So no need to update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    .end local v3    # "telephonymanager":Landroid/telephony/TelephonyManager;
    :cond_a
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_b

    .line 491
    const-string v4, "DrmEventService_CMCC"

    const-string/jumbo v5, "userUpdatedTimeReceiver format is changed no need to udpate Delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_b
    iput-object v2, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method InitializeOmaIntent(ILjava/lang/String;)V
    .locals 5
    .param p1, "rightStatus"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1198
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_0

    .line 1199
    const-string v2, "DrmEventService_CMCC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InitializeOmaIntent called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "contentIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const-string v2, "application/oma.drm.popup"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1204
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1205
    const-string v2, "result"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    const-string v2, "filePath"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v1

    .line 1211
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "DrmEventService_CMCC"

    const-string/jumbo v3, "unable to startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method InitializeOmaIntent(Ljava/lang/String;)V
    .locals 5
    .param p1, "Status"    # Ljava/lang/String;

    .prologue
    .line 1216
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_0

    .line 1217
    const-string v2, "DrmEventService_CMCC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InitializeOmaIntent called Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v0, "contentIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    const-string v2, "application/oma.drm.popup"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1223
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1224
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_1
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_1

    .line 1230
    const-string v2, "DrmEventService_CMCC"

    const-string/jumbo v3, "unable to startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleGpstimeUpdation(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 928
    const-string v5, "DrmEventService_CMCC"

    const-string v6, "[GPS Time for DRM] handleGpstimeUpdation Time :"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-eqz p1, :cond_4

    .line 935
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 936
    .local v0, "c":Ljava/util/Calendar;
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 941
    :try_start_0
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_0

    .line 943
    const-string v5, "DrmEventService_CMCC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPS Time for DRM] date is :: year"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "month"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "day"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "hour"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "minute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "second"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v5, 0x5

    const-string v6, "application/vnd.oma.drm.content"

    invoke-direct {v2, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 951
    .local v2, "mDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v5, "year"

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    const-string v5, "month"

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    const-string v5, "day"

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 954
    const-string v5, "hour"

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    const-string v5, "minute"

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    const-string v5, "second"

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_1

    .line 959
    const-string v5, "DrmEventService_CMCC"

    const-string v6, "[GPS Time for DRM] calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_1
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v4

    .line 963
    .local v4, "ret":I
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_2

    .line 964
    const-string v5, "DrmEventService_CMCC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPS Time for DRM] handleDbOperation : TIME_CLOCK_UPDATE  secure clock  ret is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_2
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v5, 0x5

    const-string/jumbo v6, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v3, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 968
    .local v3, "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v5, "year"

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 969
    const-string v5, "month"

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 970
    const-string v5, "day"

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 971
    const-string v5, "hour"

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 972
    const-string v5, "minute"

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 973
    const-string v5, "second"

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 975
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_3

    .line 976
    const-string v5, "DrmEventService_CMCC"

    const-string v6, "[GPS Time for DRM] calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_3
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v4

    .line 979
    sget-boolean v5, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v5, :cond_4

    .line 980
    const-string v5, "DrmEventService_CMCC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPS Time for DRM] handleDbOperation : TIME_CLOCK_UPDATE  secure clock for PR  ret is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v4    # "ret":I
    :cond_4
    :goto_0
    return-void

    .line 982
    .restart local v0    # "c":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 983
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public handleNitztimeUpdation(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 989
    const-wide/16 v4, 0x0

    .line 990
    .local v4, "nitzTime":J
    if-eqz p1, :cond_4

    .line 991
    const-string v7, "DrmEventService_CMCC"

    const-string v8, "handleNitztimeUpdation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 995
    .local v0, "c":Ljava/util/Calendar;
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 997
    :try_start_0
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_0

    .line 999
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "date is :: year"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "month"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "day"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "minute"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "second"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v7, 0x5

    const-string v8, "application/vnd.oma.drm.content"

    invoke-direct {v2, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1007
    .local v2, "mDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v7, "year"

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1008
    const-string v7, "month"

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1009
    const-string v7, "day"

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    const-string v7, "hour"

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    const-string v7, "minute"

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1012
    const-string v7, "second"

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_1

    .line 1025
    const-string v7, "DrmEventService_CMCC"

    const-string v8, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_1
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v6

    .line 1029
    .local v6, "ret":I
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_2

    .line 1030
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDbOperation : TIME_CLOCK_UPDATE  secure clock  ret is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_2
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v7, 0x5

    const-string/jumbo v8, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v3, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1034
    .local v3, "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v7, "year"

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1035
    const-string v7, "month"

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1036
    const-string v7, "day"

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1037
    const-string v7, "hour"

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    const-string v7, "minute"

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    const-string v7, "second"

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1048
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_3

    .line 1049
    const-string v7, "DrmEventService_CMCC"

    const-string v8, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_3
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v6

    .line 1052
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_4

    .line 1053
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDbOperation : TIME_CLOCK_UPDATE  secure clock for PR  ret is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v6    # "ret":I
    :cond_4
    :goto_0
    return-void

    .line 1055
    .restart local v0    # "c":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 1056
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x6

    .line 1064
    const-wide/16 v2, 0x0

    .line 1065
    .local v2, "beforeTime":J
    const-wide/16 v0, 0x0

    .line 1066
    .local v0, "afterTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1067
    .local v6, "now":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 1068
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->getBeforeTime()J

    move-result-wide v2

    .line 1070
    const-wide/16 v8, -0x64

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    .line 1072
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "handleUserUpdatedTimeUpdation beforeTime -100"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_2

    .line 1077
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleUserUpdatedTimeUpdation beforeTime :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and afterTime :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_2
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const-string v8, "application/vnd.oma.drm.content"

    invoke-direct {v4, v12, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1080
    .local v4, "mDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v8, "before"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    const-string v8, "after"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_3

    .line 1099
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3
    invoke-direct {p0, v12, v13, v4, v13}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v7

    .line 1103
    .local v7, "ret":I
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_4

    .line 1104
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleDbOperation : TIME_CLOCK_UPDATE Updating of secure clock ret  is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_4
    new-instance v5, Landroid/drm/DrmInfoRequest;

    const-string/jumbo v8, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v5, v12, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1107
    .local v5, "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v8, "before"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    const-string v8, "after"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1118
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_5

    .line 1119
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_5
    invoke-direct {p0, v12, v13, v5, v13}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v7

    .line 1123
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_0

    .line 1124
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleDbOperation : TIME_CLOCK_UPDATE Updating of secure clock ret  for PR is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "DrmEventService_CMCC"

    const-string v1, "DrmEventService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 260
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "DrmEventService_CMCC"

    const-string v2, "DrmEventService : onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v1, :cond_1

    .line 267
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->drmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 273
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmEventService_CMCC"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 276
    .local v0, "thread":Landroid/os/HandlerThread;
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_3

    .line 277
    const-string v1, "DrmEventService_CMCC"

    const-string v2, "DrmEventService : onCreate before thread.start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    .line 282
    new-instance v1, Lcom/android/server/DrmEventService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DrmEventService$ServiceHandler;-><init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    .line 283
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 248
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "DrmEventService_CMCC"

    const-string v1, "DrmEventService : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 251
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "DrmEventService_CMCC"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 245
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v5, 0x3

    .line 121
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "DrmEventService_CMCC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart intent.getAction() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRegisteredBootTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 126
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED.Check if registration is required"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    if-nez v2, :cond_8

    .line 130
    const-string v2, "/data/system/databases/drmdatabase.db"

    invoke-static {v2}, Lcom/android/server/DrmEventService;->checkForFileorDirectoryExists(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "temp":I
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_2

    .line 132
    const-string v2, "DrmEventService_CMCC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "temp Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    if-ne v1, v5, :cond_7

    .line 134
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_3

    .line 135
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED. register receiver called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    .line 147
    .end local v1    # "temp":I
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_5

    .line 148
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : onStart: WAP PUSH for SD rights"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_5
    invoke-virtual {p0, p0, p1}, Lcom/android/server/DrmEventService;->processWapPush(Landroid/content/Context;Landroid/content/Intent;)V

    .line 179
    :cond_6
    :goto_1
    return-void

    .line 138
    .restart local v1    # "temp":I
    :cond_7
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_4

    .line 139
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED.db is not proper "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v1    # "temp":I
    :cond_8
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_4

    .line 143
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED..already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_9
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_a

    .line 153
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_a
    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 155
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 156
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_b

    .line 160
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : Service is started.Check if registration is required"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    if-nez v2, :cond_f

    .line 163
    const-string v2, "/data/system/databases/drmdatabase.db"

    invoke-static {v2}, Lcom/android/server/DrmEventService;->checkForFileorDirectoryExists(Ljava/lang/String;)I

    move-result v1

    .line 164
    .restart local v1    # "temp":I
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_c

    .line 165
    const-string v2, "DrmEventService_CMCC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "temp Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_c
    if-ne v1, v5, :cond_e

    .line 167
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_d

    .line 168
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : This is not BootTime.So register now."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_d
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    goto :goto_1

    .line 171
    :cond_e
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_6

    .line 172
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : This is  first time after the Flash , so do not do registration"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 175
    .end local v1    # "temp":I
    :cond_f
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_6

    .line 176
    const-string v2, "DrmEventService_CMCC"

    const-string v3, "DrmEventService : Registration is already done in BootComplete.Leave it"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public processWapPush(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 182
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_0

    .line 183
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processWapPush: WapPush Receiver intent is recieved"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "rightMimeType":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_1

    .line 187
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processWapPush : MimeType - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    const-string v7, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 192
    :cond_2
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_3

    .line 193
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processWapPush : rightMimeType - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    const-string v7, "data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v3, v7

    check-cast v3, [B

    .line 195
    .local v3, "rightData":[B
    if-eqz v3, :cond_4

    array-length v7, v3

    const/4 v8, 0x7

    if-ge v7, v8, :cond_6

    .line 196
    :cond_4
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_5

    .line 197
    const-string v7, "DrmEventService_CMCC"

    const-string v8, "processWapPush: The rights data is invalid."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v3    # "rightData":[B
    :cond_5
    :goto_0
    return-void

    .line 200
    .restart local v3    # "rightData":[B
    :cond_6
    array-length v7, v3

    add-int/lit8 v7, v7, -0x6

    new-array v0, v7, [B

    .line 201
    .local v0, "actualWbxmlData":[B
    const/4 v7, 0x6

    const/4 v8, 0x0

    array-length v9, v3

    add-int/lit8 v9, v9, -0x6

    invoke-static {v3, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 203
    .local v4, "rightDataStream":Ljava/io/ByteArrayInputStream;
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 204
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rightDataStream : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_7
    const-string v7, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 208
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.WAP_ROAP_TRIGGER_RCVD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v6, "wap_intent":Landroid/content/Intent;
    const-string v7, "roap_trigger"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 210
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    .end local v6    # "wap_intent":Landroid/content/Intent;
    :cond_8
    const/4 v1, 0x0

    .line 229
    .local v1, "contentId":Ljava/lang/String;
    const-string v7, "DrmEventService_CMCC"

    const-string v8, "calling handleDbOperation : WAP_PUSH_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v7, 0x5

    new-instance v8, Landroid/drm/DrmInfo;

    const/4 v9, 0x1

    const-string v10, "application/vnd.oma.drm.content"

    invoke-direct {v8, v9, v3, v10}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    invoke-direct {p0, v7, v8, v11, v11}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v2

    .line 231
    .local v2, "ret":I
    const-string v7, "DrmEventService_CMCC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDbOperation : WAP_PUSH_UPDATE ret  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v0    # "actualWbxmlData":[B
    .end local v1    # "contentId":Ljava/lang/String;
    .end local v2    # "ret":I
    .end local v3    # "rightData":[B
    .end local v4    # "rightDataStream":Ljava/io/ByteArrayInputStream;
    :cond_9
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_5

    .line 235
    const-string v7, "DrmEventService_CMCC"

    const-string v8, "DRM PUSH RECEIVER : mimeType is not valid for WAp Push Received"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
