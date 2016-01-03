.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.super Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    }
.end annotation


# static fields
.field private static final ADMIN_ALL:I = 0x0

.field private static final APK_PATH:Ljava/lang/String; = "/system/container/"

.field private static final CREATETIME_INSTALL_LIST:[Ljava/lang/String;

.field private static final CREATION_PARAMS:Ljava/lang/String; = "creation_params"

.field private static final FLAG_BASE:I = 0x1

.field private static final FLAG_MIGRATION:I = 0x100

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final HANDLER_APK:Ljava/lang/String; = "KnoxSecureHandler.apk"

.field private static final INTENT_B2B_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2b"

.field private static final INTENT_B2B_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2b"

.field private static final INTENT_B2C_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2c"

.field private static final INTENT_B2C_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2c"

.field private static final INTENT_KNOX_SETUPWIZARD_DIED:Ljava/lang/String; = "com.sec.knox.died.SETUP_WIZARD"

.field private static final INTENT_PERSONA_MDM_LOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmlocked"

.field private static final INTENT_PERSONA_MDM_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmunlocked"

.field private static final INTENT_START_MIGRATION_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.MIGRATION_WIZARD"

.field private static final INTENT_START_SETUP_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.SETUP_WIZARD"

.field private static final INTENT_VALIDATE_LICENSE_KEY_STATUS_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.licensekey.status"

.field private static final LWC_FOLDERHEADERICON_HEIGHT:I = 0x11

.field private static final LWC_FOLDERHEADERICON_WIDTH:I = 0x5a

.field private static final MIGRATION_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final SETUP_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.knoxsetupwizardclient"

.field private static TAG:Ljava/lang/String; = null

.field private static TYPE_FILE_PATH:Ljava/lang/String; = null

.field private static final VALID_KLMS_LICENSE_CODE:I = 0x5a

.field private static final WIZARD_APK:Ljava/lang/String; = "ContainerAgent2.apk"

.field private static mContext:Landroid/content/Context;

.field private static mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;


# instance fields
.field private final DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

.field private final SECOND_KNOX_ICON_PATH:Ljava/lang/String;

.field private containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

.field private final mContainerReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFotaRequired:Z

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field mParser:Lorg/xmlpull/v1/XmlPullParser;

.field mPersona:Landroid/os/PersonaManager;

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

.field private mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

.field private mSetupWizardUid:I

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    const-string v0, "KnoxMUMContainerPolicy"

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    .line 178
    const-string v0, "/data/system/container/"

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    .line 211
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.memo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.sbrowsertry"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.samsung.android.snote"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.hancom.androidpc.appwidget"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 239
    sput-boolean v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SEANDROID_SECURITY_VERIFICATION:Z

    .line 244
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->FOTA_DEBUG_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 256
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;-><init>()V

    .line 201
    const-string v3, "/system/container/resources/knox_icon.png"

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

    .line 202
    const-string v3, "/system/container/resources/knox_icon2.png"

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SECOND_KNOX_ICON_PATH:Ljava/lang/String;

    .line 204
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    .line 225
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 226
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    .line 230
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    .line 231
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 232
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    .line 233
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    .line 236
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 240
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupWizardUid:I

    .line 241
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 242
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    .line 243
    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    .line 245
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    .line 412
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 429
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    sput-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 258
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 259
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 269
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->prepareEnterprisePolicyData()V

    .line 273
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v2, "filter1":Landroid/content/IntentFilter;
    const-string v3, "com.sec.knox.containeragent.klms.licensekey.status"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 278
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 279
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->unregisterPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 173
    sput-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    return-void
.end method

.method static synthetic access$2100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 173
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 173
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2550
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v0

    .line 2551
    .local v0, "ret":Z
    if-ne v0, v1, :cond_0

    .line 2552
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2553
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 2556
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addContainerOwnerRelationship(II)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1849
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Add Container owner relationship."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/4 v1, 0x0

    .line 1852
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    move-result v1

    .line 1853
    if-eqz v1, :cond_0

    .line 1854
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container Added to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :goto_0
    return v1

    .line 1863
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add container to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at addContainerToDB "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string v1, "KnoxMUMContainerPolicy"

    .line 397
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    sget-boolean v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 400
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 402
    throw v0

    .line 404
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEANDROID_SECURITY_VERIFICATION false, printing exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkForFOTA()V
    .locals 14

    .prologue
    .line 343
    iget-boolean v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    if-eqz v10, :cond_1

    .line 344
    const/4 v7, 0x0

    .line 345
    .local v7, "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    const/4 v2, 0x0

    .line 347
    .local v2, "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "reading from xml resource for fota"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10f0007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 349
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10f0004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 351
    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v4, p0, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 352
    .local v4, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 353
    invoke-virtual {v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    .line 355
    if-eqz v2, :cond_0

    .line 356
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 357
    .local v0, "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromCustomXml()Ljava/util/List;

    move-result-object v1

    .line 358
    .local v1, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 364
    .end local v0    # "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 394
    .end local v2    # "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v7    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_1
    :goto_0
    return-void

    .line 360
    .restart local v2    # "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :catch_0
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to open file - Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :cond_2
    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v11

    .line 369
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 370
    .local v6, "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v6, :cond_3

    .line 373
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Upgrading type object:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v10, 0x0

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v8

    .line 376
    .local v8, "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Knox config found existing:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz v8, :cond_4

    .line 378
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v9

    .line 379
    .local v9, "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v6, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 380
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 382
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v8    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v9    # "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 385
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v8    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 386
    iget-object v10, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    .end local v6    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v8    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 390
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 4557
    if-nez p0, :cond_1

    .line 4558
    const/4 p0, 0x0

    .line 4564
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 4560
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4561
    .restart local v0    # "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 4564
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private dumpAsString()V
    .locals 3

    .prologue
    .line 1516
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1517
    .local v1, "param":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->describeContents()I

    goto :goto_0

    .line 1519
    .end local v1    # "param":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_0
    return-void
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1086
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1087
    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1091
    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private filterType(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v2, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1097
    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1098
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1101
    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    return-object v2
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 1105
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1106
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 1107
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1108
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1113
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findMatchingComponent(II)Landroid/content/ComponentName;
    .locals 15
    .param p1, "userId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1890
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adminPackageUid parameter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1892
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v14, 0x8080

    move/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 1896
    .local v3, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1897
    :cond_0
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "No admins found."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/4 v12, 0x0

    .line 1923
    :goto_0
    return-object v12

    .line 1900
    :cond_1
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 1901
    .local v10, "packages":[Ljava/lang/String;
    if-eqz v10, :cond_3

    array-length v12, v10

    if-lez v12, :cond_3

    .line 1902
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 1904
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1905
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1906
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1907
    .local v9, "packageName":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1908
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    .line 1909
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "packageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-direct {p0, v10, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchPackages([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1913
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v12, v11}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 1914
    .local v5, "dpi":Landroid/app/admin/DeviceAdminInfo;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin match returning component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_0

    .line 1916
    .end local v5    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :catch_0
    move-exception v6

    .line 1917
    .local v6, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "Exception throw during creating  DeviceAdminInfo "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1923
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private getAdminComponentName(II)Landroid/content/ComponentName;
    .locals 12
    .param p1, "id"    # I
    .param p2, "uid"    # I

    .prologue
    .line 4806
    const/4 v3, 0x0

    .line 4807
    .local v3, "componentName":Landroid/content/ComponentName;
    const/4 v9, -0x1

    if-eq p2, v9, :cond_1

    .line 4808
    const/4 v2, 0x0

    .line 4809
    .local v2, "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 4810
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    .line 4812
    .local v4, "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4814
    .local v0, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 4815
    .local v1, "admin":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4816
    .local v7, "pName":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current admin loop :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 4820
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4832
    :cond_0
    if-eqz v2, :cond_2

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, p2, :cond_2

    .line 4833
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin found :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    move-object v3, v1

    .line 4842
    .end local v0    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v1    # "admin":Landroid/content/ComponentName;
    .end local v2    # "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "pName":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return-object v3

    .line 4821
    .restart local v0    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v1    # "admin":Landroid/content/ComponentName;
    .restart local v2    # "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "pName":Ljava/lang/String;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .line 4822
    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getting app info failed. package Name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->findMatchingComponent(II)Landroid/content/ComponentName;

    move-result-object v3

    .line 4826
    if-eqz v3, :cond_0

    .line 4827
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4839
    .end local v5    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v2, 0x0

    .line 4840
    goto/16 :goto_0
.end method

.method private getAdminId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4773
    const/4 v0, -0x1

    .line 4774
    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 4775
    .local v6, "userId":I
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p2, v8, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4778
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_2

    .line 4779
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v5

    .line 4781
    .local v5, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v7, -0x2710

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v4

    .line 4783
    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 4784
    .local v3, "pdai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packages Info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4785
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4786
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4787
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pdai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v5    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_1
    :goto_0
    return v0

    .line 4792
    :cond_2
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App Info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4793
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method private getAvailableInternalMemory()J
    .locals 13

    .prologue
    .line 1564
    const-wide/16 v4, 0x0

    .line 1565
    .local v4, "blockSize":J
    const-wide/16 v0, 0x0

    .line 1566
    .local v0, "availableBlocks":J
    const-wide/16 v7, 0x0

    .line 1567
    .local v7, "mAvailSize":J
    const-wide/16 v2, 0x0

    .line 1569
    .local v2, "availableMemoryInMB":J
    :try_start_0
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v9, "stat":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 1571
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 1572
    mul-long v7, v0, v4

    .line 1573
    const-wide/32 v10, 0x100000

    div-long v2, v7, v10

    .line 1574
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Available internal memory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v12, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and availableMemoryInMB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    .end local v9    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 1575
    :catch_0
    move-exception v6

    .line 1576
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private getContainers(I)Ljava/util/List;
    .locals 11
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2280
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers: admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2283
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2285
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .line 2286
    .local v5, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v5, :cond_1

    .line 2287
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 2288
    .local v4, "pInfo":Landroid/content/pm/PersonaInfo;
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 2289
    .local v3, "ownerUid":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    if-ne v3, p1, :cond_0

    .line 2291
    iget v8, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2295
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownerUid":I
    .end local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v0

    .line 2296
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2298
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2300
    return-object v2

    .line 2298
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 1460
    const/4 v3, 0x0

    .line 1461
    .local v3, "params":Lcom/sec/knox/container/ContainerCreationParams;
    const/4 v1, 0x0

    .line 1462
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v5

    .line 1463
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1464
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1465
    .local v2, "item":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1466
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    .line 1467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1468
    move-object v3, v2

    goto :goto_0

    .line 1473
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    monitor-exit v5

    .line 1474
    return-object v3

    .line 1473
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getDefaultTypeObj(Z)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 5
    .param p1, "isUserManaged"    # Z

    .prologue
    .line 2560
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDefaultConfigurationTypes()Ljava/util/List;

    move-result-object v2

    .line 2561
    .local v2, "defaultTypes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2562
    :cond_0
    const/4 v0, 0x0

    .line 2570
    :cond_1
    return-object v0

    .line 2564
    :cond_2
    const/4 v0, 0x0

    .line 2565
    .local v0, "defaultType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2566
    .local v1, "defaultTypeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v4

    if-ne v4, p1, :cond_3

    .line 2567
    move-object v0, v1

    goto :goto_0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4382
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4383
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    .line 4393
    :goto_0
    return-object v0

    .line 4385
    :cond_0
    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4386
    .local v0, "pdaVersion":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4388
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1118
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .prologue
    .line 4852
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4853
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4854
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4858
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v1, v3

    .line 4860
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getResolveInfo "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    return-object v1

    .line 4858
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSSID(I)Ljava/util/Set;
    .locals 10
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4531
    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ContainerOnly_wifiAP"

    const-string/jumbo v9, "wifiSSIDforKNOX"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4533
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4534
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 4535
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4536
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 4537
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4540
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 1071
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private static getTIMAStatus()I
    .locals 9

    .prologue
    .line 1536
    const/4 v1, -0x1

    .line 1537
    .local v1, "timaStatus":I
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1559
    :goto_0
    return v1

    .line 1540
    :cond_0
    const/4 v2, 0x0

    .local v2, "timaVersion20":Z
    const/4 v3, 0x0

    .line 1541
    .local v3, "timaVersion30":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1543
    .local v4, "token":J
    :try_start_0
    const-string v6, "2.0"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1544
    if-nez v2, :cond_1

    .line 1545
    const-string v6, "3.0"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1547
    :cond_1
    if-eqz v3, :cond_3

    .line 1548
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1556
    :cond_2
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTIMAStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1549
    :cond_3
    if-eqz v2, :cond_2

    .line 1550
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 1551
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1556
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 1530
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 1532
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private installDefaultApplications(ILjava/util/List;)V
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p2, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1134
    .local v1, "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1135
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .restart local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1137
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 1138
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1139
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    .line 1145
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Landroid/os/PersonaManager;->installApplications(ILjava/util/List;)Z

    .line 1146
    return-void
.end method

.method private isEnoughMemoryToCreateContainer()Z
    .locals 4

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAvailableInternalMemory()J

    move-result-wide v1

    long-to-int v0, v1

    .line 1583
    .local v0, "availableSpace":I
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AvailableSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const/16 v1, 0x264

    if-lt v0, v1, :cond_0

    .line 1585
    const/4 v1, 0x1

    .line 1587
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFOTARequired()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 325
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v3

    .line 326
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 327
    :cond_0
    monitor-exit v3

    .line 339
    :goto_0
    return v2

    .line 329
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 330
    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_2

    .line 331
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFOTARequired currentversion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 333
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Fota required......"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v3

    goto :goto_0

    .line 338
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isKioskEnabledOnOwner()Z
    .locals 6

    .prologue
    .line 1591
    const/4 v2, 0x0

    .line 1593
    .local v2, "status":Z
    :try_start_0
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 1594
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_0

    .line 1595
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isKioskModeEnabledAsUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1600
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKioskEnabledOnOwner ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return v2

    .line 1597
    :catch_0
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isTIMAEnabled()Z
    .locals 4

    .prologue
    .line 1522
    const-string v1, "1"

    const-string v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1523
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_0

    .line 1524
    const/4 v1, 0x1

    .line 1526
    :goto_0
    return v1

    .line 1525
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "TIMA is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 5
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1810
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1812
    if-eqz p1, :cond_2

    .line 1813
    const/4 v2, 0x0

    .line 1814
    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1815
    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1816
    move-object v2, v1

    .line 1820
    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    if-eqz v2, :cond_2

    .line 1826
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private matchPackages([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1927
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1928
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages for uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1930
    const/4 v4, 0x1

    .line 1933
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return v4

    .line 1927
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1933
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private prepareEnterprisePolicyData()V
    .locals 13

    .prologue
    .line 284
    const/4 v5, 0x0

    .line 285
    .local v5, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 287
    .local v2, "customlParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "enterprisedata.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 289
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "reading from xml resource"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10f0007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 291
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10f0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 298
    :goto_0
    new-instance v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v3, p0, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 299
    .local v3, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 300
    invoke-virtual {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 301
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isFOTARequired()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    .line 303
    if-eqz v2, :cond_0

    .line 304
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 305
    .local v0, "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromCustomXml()Ljava/util/List;

    move-result-object v1

    .line 306
    .local v1, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    .line 308
    .end local v0    # "customEnterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkForFOTA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    if-eqz v5, :cond_1

    .line 316
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 322
    .end local v3    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 293
    .restart local v4    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "reading from xml file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 296
    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v10, 0x0

    invoke-interface {v9, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 309
    .end local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 310
    .local v7, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open file - IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    if-eqz v5, :cond_1

    .line 316
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 318
    :catch_1
    move-exception v7

    .line 319
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 311
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 312
    .local v8, "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_6
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get parser- exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    if-eqz v5, :cond_1

    .line 316
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 318
    :catch_3
    move-exception v7

    .line 319
    .restart local v7    # "ioe":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 314
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    .line 315
    :goto_5
    if-eqz v5, :cond_3

    .line 316
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 314
    :cond_3
    :goto_6
    throw v9

    .line 318
    :catch_4
    move-exception v7

    .line 319
    .restart local v7    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 318
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v3    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .restart local v4    # "file":Ljava/io/File;
    :catch_5
    move-exception v7

    .line 319
    .restart local v7    # "ioe":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 314
    .end local v3    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 311
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v8

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 309
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v7

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method private processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 3
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v1, 0x0

    .line 2491
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2492
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2509
    :cond_0
    :goto_0
    return v1

    .line 2495
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 2503
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2495
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x11000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)V
    .locals 8
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1478
    if-eqz p1, :cond_1

    .line 1479
    const/4 v2, 0x0

    .line 1480
    .local v2, "processed":Z
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1481
    .local v4, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getLockType()I

    move-result v0

    .line 1482
    .local v0, "lockType":I
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v3

    .line 1483
    .local v3, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    packed-switch v0, :pswitch_data_0

    .line 1508
    :cond_0
    :goto_0
    invoke-virtual {p1, v7}, Lcom/sec/knox/container/ContainerCreationParams;->setPassword(Ljava/lang/String;)V

    .line 1509
    if-eqz v2, :cond_1

    .line 1510
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Container creation params processed successfully"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v0    # "lockType":I
    .end local v2    # "processed":Z
    .end local v3    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    return-void

    .line 1486
    .restart local v0    # "lockType":I
    .restart local v2    # "processed":Z
    .restart local v3    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v4    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1487
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 1488
    const/4 v2, 0x1

    goto :goto_0

    .line 1492
    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1493
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1494
    .local v1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 1495
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 1496
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 1497
    const/high16 v5, 0x10000

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 1498
    const/4 v2, 0x1

    .line 1499
    goto :goto_0

    .line 1502
    .end local v1    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :pswitch_2
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 1503
    const/4 v2, 0x1

    .line 1504
    goto :goto_0

    .line 1483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 17
    .param p1, "callingUid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2656
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2657
    .local v12, "userHandle":I
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 2658
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    .line 2660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 2662
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 2663
    .local v10, "screenDimesions":Landroid/graphics/Point;
    const/4 v9, 0x0

    .line 2664
    .local v9, "profileDimesions":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 2665
    .local v2, "badgeDimesions":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 2666
    .local v5, "folderHeaderDimensions":Landroid/graphics/Point;
    const/16 v14, 0x5a

    const/16 v15, 0x11

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Point;->set(II)V

    .line 2668
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 2669
    .local v13, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2671
    iget v14, v10, Landroid/graphics/Point;->x:I

    iget v15, v10, Landroid/graphics/Point;->y:I

    if-le v14, v15, :cond_c

    .line 2672
    iget v14, v10, Landroid/graphics/Point;->x:I

    iput v14, v10, Landroid/graphics/Point;->y:I

    .line 2676
    :goto_0
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Screen dimension: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    const-string v3, "/data/container2.0/"

    .line 2678
    .local v3, "basedir":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2679
    .local v7, "outDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2680
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2681
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/io/File;->setWritable(Z)Z

    .line 2682
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2687
    const-string v3, "/data/container2.0/icon/"

    .line 2688
    new-instance v7, Ljava/io/File;

    .end local v7    # "outDir":Ljava/io/File;
    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2689
    .restart local v7    # "outDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2690
    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2691
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/io/File;->setWritable(Z)Z

    .line 2692
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2697
    const/4 v4, 0x0

    .line 2698
    .local v4, "destPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2699
    .local v11, "status":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/container2.0/icon/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2701
    .local v8, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 2702
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomBadgeIcon.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2703
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v2}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2705
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    if-nez v11, :cond_2

    .line 2707
    const/4 v4, 0x0

    .line 2709
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    .line 2712
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 2713
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomHomeScreenWallpaper.jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2714
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2716
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    if-nez v11, :cond_4

    .line 2718
    const/4 v4, 0x0

    .line 2720
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    .line 2723
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 2724
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomLockScreenWallpaper.jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2725
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2727
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    if-nez v11, :cond_6

    .line 2729
    const/4 v4, 0x0

    .line 2731
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    .line 2734
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 2735
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CustomStatusIcon.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2736
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v14, v15, v4, v9}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2738
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image paths: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    if-nez v11, :cond_8

    .line 2740
    const/4 v4, 0x0

    .line 2742
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    .line 2745
    :cond_9
    move-object/from16 v0, p2

    instance-of v14, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v14, :cond_b

    move-object/from16 v14, p2

    .line 2746
    check-cast v14, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v6

    .line 2747
    .local v6, "headerIcon":Ljava/lang/String;
    if-eqz v6, :cond_b

    .line 2748
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "FolderHeaderIcon.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2749
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v6, v14, v4, v5}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 2751
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dest image path folder header icon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " status value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    if-nez v11, :cond_a

    .line 2753
    const/4 v4, 0x0

    :cond_a
    move-object/from16 v14, p2

    .line 2755
    check-cast v14, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    invoke-virtual {v14, v4}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    .line 2759
    .end local v6    # "headerIcon":Ljava/lang/String;
    :cond_b
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Images after copy in services:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    const/4 v14, 0x1

    .end local v4    # "destPath":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v11    # "status":Z
    :goto_1
    return v14

    .line 2674
    .end local v3    # "basedir":Ljava/lang/String;
    .end local v7    # "outDir":Ljava/io/File;
    :cond_c
    iget v14, v10, Landroid/graphics/Point;->y:I

    iput v14, v10, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2684
    .restart local v3    # "basedir":Ljava/lang/String;
    .restart local v7    # "outDir":Ljava/io/File;
    :cond_d
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cannot create folder: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    const/4 v14, 0x0

    goto :goto_1

    .line 2694
    :cond_e
    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cannot create folder: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private registerPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1018
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    .line 1019
    .local v0, "observer":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 1020
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    .end local v0    # "observer":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    :cond_0
    return-void
.end method

.method private removeConfigurationTypeInternal(ILjava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2586
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v2

    .line 2587
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 2588
    .local v0, "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2589
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2590
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v1

    monitor-exit v2

    .line 2594
    :goto_0
    return v1

    .line 2593
    :cond_1
    monitor-exit v2

    .line 2594
    const/4 v1, 0x0

    goto :goto_0

    .line 2593
    .end local v0    # "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 12
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v9, 0x0

    .line 2598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v8, v9

    .line 2648
    :goto_0
    return v8

    .line 2601
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2603
    .local v6, "token":J
    const/4 v3, 0x0

    .line 2604
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v5

    .line 2605
    .local v5, "iconPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2606
    .local v1, "deleted":Z
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "badge icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    if-eqz v5, :cond_6

    .line 2608
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2609
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2610
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "badge icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :goto_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v5

    .line 2613
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCustomHomeScreenWallpaper icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    if-eqz v5, :cond_2

    .line 2615
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2616
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2617
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "home screen wall paper icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .line 2619
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v5

    .line 2620
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCustomLockScreenWallpaper icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    if-eqz v5, :cond_3

    .line 2622
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2623
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2624
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lock screen wall paper icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v3

    .line 2626
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_3
    :try_start_5
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v5

    .line 2627
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCustomStatusIcon icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    if-eqz v5, :cond_4

    .line 2629
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2630
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2631
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "custom status icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v3

    .line 2633
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_4
    :try_start_7
    instance-of v8, p1, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v8, :cond_5

    .line 2634
    move-object v0, p1

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v5

    .line 2635
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFolderHeaderIcon icon file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    if-eqz v5, :cond_5

    .line 2637
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2638
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2639
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "folder header icon file deletion status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :goto_2
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2644
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2645
    const/4 v8, 0x1

    .line 2650
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2646
    .end local v1    # "deleted":Z
    .end local v5    # "iconPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2647
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_9
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2650
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2648
    goto/16 :goto_0

    .line 2650
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 2646
    .restart local v1    # "deleted":Z
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "iconPath":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_5
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    :cond_6
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private removeContainer(IZ)I
    .locals 22
    .param p1, "containerId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2196
    const/16 v13, -0x4b1

    .line 2197
    .local v13, "retVal":I
    const-wide/16 v16, 0x0

    .line 2199
    .local v16, "token":J
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 2200
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "removeContainer: CONTAINER_CREATION_IN_PROGRESS is in progress."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    const/16 v19, -0x3f6

    .line 2252
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2260
    :goto_1
    return v19

    .line 2204
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2205
    if-nez p2, :cond_1

    .line 2206
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    .line 2207
    .local v11, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_1

    .line 2208
    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 2209
    const/16 v19, -0x4b2

    goto :goto_0

    .line 2213
    .end local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v10

    .line 2214
    .local v10, "ownerUid":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainerOwnerRelationship(I)Z

    .line 2215
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v18

    .line 2216
    .local v18, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v18, :cond_4

    .line 2217
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2218
    new-instance v19, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v20}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    .line 2219
    .local v8, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v8, :cond_2

    .line 2220
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2221
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2222
    .local v6, "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v19, 0xbb

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v6, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->allowHardwareKeys(Ljava/util/List;Z)Ljava/util/List;

    .line 2225
    .end local v6    # "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v20, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2226
    .local v5, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 2227
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    .line 2230
    .end local v5    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_3
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    .line 2231
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 2232
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "removeContainer: configuration list updated successfully."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_4
    new-instance v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2236
    .local v4, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v15

    .line 2237
    .local v15, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    .line 2238
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v9

    .line 2239
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v9, :cond_6

    .line 2240
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 2241
    .local v12, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v12}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 2242
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_5

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2243
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2249
    .end local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v10    # "ownerUid":I
    .end local v12    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v15    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v18    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v3

    .line 2250
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2252
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2254
    sget-object v19, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "removeContainer("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerRemovalIntent(II)V

    move/from16 v19, v13

    .line 2260
    goto/16 :goto_1

    .line 2247
    .restart local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v10    # "ownerUid":I
    .restart local v15    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v18    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_6
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->removePersona(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    goto :goto_3

    .line 2252
    .end local v4    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v10    # "ownerUid":I
    .end local v15    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v18    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v19

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method private removeContainerOwnerRelationship(I)Z
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 1872
    const/4 v2, 0x0

    .line 1873
    .local v2, "retVal":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 1875
    .local v1, "ownerUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeMUMContainer(I)Z

    move-result v2

    .line 1876
    if-eqz v2, :cond_0

    .line 1877
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container removed from ownership DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :goto_0
    return v2

    .line 1879
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container not found or Failed to remove container from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at removeContainerOwnerRelationship "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 6
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1830
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1832
    const/4 v2, 0x0

    .line 1833
    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1834
    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1835
    move-object v2, v1

    .line 1839
    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    if-eqz v2, :cond_2

    .line 1840
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCreationParams ->  :  match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1842
    const/4 v3, 0x1

    .line 1845
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 4568
    if-nez p0, :cond_1

    .line 4569
    const/4 p0, 0x0

    .line 4575
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 4571
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4572
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 4573
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .locals 7
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4492
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4493
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4494
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4496
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    const-string/jumbo v5, "wifiSSIDforKNOX"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4498
    return-void
.end method

.method private sendContainerAdminLockIntent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.locked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    :cond_0
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method private sendContainerAdminUnlockIntent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.unlocked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 845
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    :cond_0
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method private sendContainerCreationIntent(Ljava/lang/String;III)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "retCode"    # I
    .param p3, "requestId"    # I
    .param p4, "uid"    # I

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.container.creation.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    :cond_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const-string v1, "requestId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method private sendContainerCreationIntentBC(Ljava/lang/String;III)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "requestId"    # I
    .param p4, "adminUid"    # I

    .prologue
    .line 772
    if-lez p2, :cond_2

    .line 774
    new-instance v1, Landroid/content/Intent;

    const-string v4, "enterprise.container.created.nonactive"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v1, "creationSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 777
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    :cond_0
    const-string v4, "containerid"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 783
    new-instance v3, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.success"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v3, "setupSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 786
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    :cond_1
    const-string v4, "containerid"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 810
    .end local v1    # "creationSuccess":Landroid/content/Intent;
    .end local v3    # "setupSuccess":Landroid/content/Intent;
    :goto_0
    return-void

    .line 791
    :cond_2
    const/16 v4, -0x3f9

    if-ne p2, v4, :cond_4

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string v4, "enterprise.container.cancelled"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, "creationCancelled":Landroid/content/Intent;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 795
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    :cond_3
    const-string v4, "containerid"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const-string v4, "requestid"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 802
    .end local v0    # "creationCancelled":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.failure"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v2, "creationfailure":Landroid/content/Intent;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 805
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    :cond_5
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendContainerRemovalIntent(II)V
    .locals 5
    .param p1, "retVal"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 813
    new-instance v0, Landroid/content/Intent;

    const-string v2, "enterprise.container.remove.progress"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, "removeInProgress":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 819
    const/4 v1, 0x0

    .line 820
    .local v1, "removeStatus":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 821
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.uninstalled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .restart local v1    # "removeStatus":Landroid/content/Intent;
    :goto_0
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 830
    return-void

    .line 824
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.unmountfailure"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "removeStatus":Landroid/content/Intent;
    goto :goto_0
.end method

.method private sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "oldState"    # I
    .param p5, "newState"    # I

    .prologue
    .line 755
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.enterprise.container_state_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 757
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    const-string v2, "container_old_state"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 763
    const-string v2, "container_new_state"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 765
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 766
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method private setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 2931
    const/4 v2, 0x0

    .line 2932
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2933
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2934
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2935
    const-string v4, "propertyName"

    const-string v5, "EnforceAuthForContainer"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " EnforceAuthForContainer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 2939
    .local v0, "count":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnforceAuthForContainer: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    if-lez v0, :cond_2

    .line 2942
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2943
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2944
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 2951
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_0

    .line 2952
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnforceAuthForContainer failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_0
    return v2

    .line 2939
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2947
    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2948
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1
.end method

.method private setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 37
    .param p1, "adminComp"    # Landroid/content/ComponentName;
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    .line 1938
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v26

    .line 1939
    .local v26, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v26, :cond_0

    .line 1940
    const/16 v34, 0x0

    .line 2183
    .end local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v34

    .line 1943
    .restart local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v9

    .line 1944
    .local v9, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v35, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v35

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v9, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v20

    .line 1946
    .local v20, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-nez v20, :cond_1

    .line 1947
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "failed to get container manager"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const/16 v34, 0x0

    goto :goto_0

    .line 1951
    :cond_1
    if-nez p4, :cond_2

    .line 1952
    new-instance v34, Ljava/lang/NullPointerException;

    const-string v35, "Container type object is null."

    invoke-direct/range {v34 .. v35}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2179
    .end local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v20    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v7

    .line 2180
    .local v7, "e":Ljava/lang/Exception;
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Exception:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    const/16 v34, 0x0

    goto :goto_0

    .line 1953
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v20    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v26    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    if-gtz p3, :cond_3

    .line 1954
    :try_start_1
    new-instance v34, Ljava/lang/NullPointerException;

    const-string v35, "PersonaInfo is null."

    invoke-direct/range {v34 .. v35}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 1956
    :cond_3
    const-string v34, "KNOX"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 1957
    const-string v34, "/system/container/resources/knox_icon.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    .line 1962
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v29

    .line 1964
    .local v29, "quality":I
    if-lez v29, :cond_4

    .line 1965
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordQuality: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 1969
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v10

    .line 1970
    .local v10, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_5

    .line 1971
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setForbiddenStrings: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Landroid/app/enterprise/PasswordPolicy;->setForbiddenStrings(Ljava/util/List;)Z

    .line 1975
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v24

    .line 1976
    .local v24, "patternRestriction":Ljava/lang/String;
    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_6

    .line 1977
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setRequiredPasswordPattern: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setRequiredPasswordPattern(Ljava/lang/String;)Z

    .line 1981
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v33

    .line 1982
    .local v33, "value":I
    if-lez v33, :cond_7

    .line 1983
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumCharacterOccurrences: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterOccurrences(I)Z

    .line 1987
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v33

    .line 1988
    if-lez v33, :cond_8

    .line 1989
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumCharacterSequenceLength: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterSequenceLength(I)Z

    .line 1993
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v33

    .line 1994
    if-lez v33, :cond_9

    .line 1995
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumFailedPasswordsForWipe: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 1999
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v33

    .line 2000
    if-lez v33, :cond_a

    .line 2001
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumNumericSequenceLength: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumNumericSequenceLength(I)Z

    .line 2005
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v33

    .line 2006
    if-lez v33, :cond_b

    .line 2007
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumLength: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 2011
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v33

    .line 2012
    if-lez v33, :cond_c

    .line 2013
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumLetters: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 2017
    :cond_c
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v33

    .line 2018
    if-lez v33, :cond_d

    .line 2019
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumNonLetter: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 2023
    :cond_d
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v33

    .line 2024
    if-lez v33, :cond_e

    .line 2025
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumSymbols: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 2029
    :cond_e
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v33

    .line 2030
    if-lez v33, :cond_f

    .line 2031
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setMaximumTimeToLock: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 2035
    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v33

    .line 2036
    if-lez v33, :cond_10

    .line 2037
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumUpperCase: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 2041
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v33

    .line 2042
    if-lez v33, :cond_11

    .line 2043
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setPasswordMinimumLowerCase: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 2047
    :cond_11
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2048
    .local v5, "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-nez v34, :cond_12

    .line 2049
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set setSimplePasswordEnabled: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const-string v34, "device_policy"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v31

    check-cast v31, Lcom/android/server/DevicePolicyManagerService;

    .line 2052
    .local v31, "service":Lcom/android/server/DevicePolicyManagerService;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v34

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V

    .line 2055
    .end local v31    # "service":Lcom/android/server/DevicePolicyManagerService;
    :cond_12
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2056
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_13

    .line 2057
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy set enforceMultifactorAuthentication: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v34

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->enforceMultifactorAuthentication(Z)V

    .line 2061
    :cond_13
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v30

    .line 2062
    .local v30, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v32

    .line 2063
    .local v32, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v32, :cond_17

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_17

    .line 2064
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 2065
    .local v28, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 2066
    .local v23, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_14
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2067
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v23, Ljava/util/List;

    .line 2068
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v23, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_14

    .line 2069
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy setAllowChangeDataSyncPolicy for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2071
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 2072
    .local v22, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v35

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)Z

    goto :goto_3

    .line 1959
    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .end local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v24    # "patternRestriction":Ljava/lang/String;
    .end local v28    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "quality":I
    .end local v30    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .end local v32    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v33    # "value":I
    :cond_15
    const-string v34, "/system/container/resources/knox_icon2.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2075
    .restart local v5    # "booleanVal":Ljava/lang/Boolean;
    .restart local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v24    # "patternRestriction":Ljava/lang/String;
    .restart local v28    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "quality":I
    .restart local v30    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .restart local v32    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v33    # "value":I
    :cond_16
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 2080
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v28    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v32

    .line 2081
    if-eqz v32, :cond_1a

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_1a

    .line 2082
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    .local v21, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 2084
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2085
    .restart local v17    # "key":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v23, Ljava/util/List;

    .line 2086
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v23, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_18

    .line 2087
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Policy setNotificationSyncPolicy for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2089
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_19

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 2090
    .restart local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 2092
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    goto :goto_4

    .line 2097
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1a
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v25

    .line 2098
    .local v25, "personaIcon":Ljava/lang/String;
    if-eqz v25, :cond_1b

    const-string v34, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v34

    if-nez v34, :cond_1b

    .line 2100
    :try_start_2
    invoke-static/range {v25 .. v25}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2101
    .local v4, "bmp":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/PersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 2102
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Persona Bitmap:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2109
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    :cond_1b
    :goto_6
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->setScreenCapture(Z)Z

    .line 2110
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->allowRemoteControl(Z)Z

    .line 2113
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2114
    .restart local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2115
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2116
    .local v12, "handlerPkgName":Ljava/lang/String;
    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_1c

    .line 2117
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    :cond_1c
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 2120
    .local v27, "pkg":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    goto :goto_7

    .line 2103
    .end local v12    # "handlerPkgName":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 2104
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Bitmap decodeFile:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2122
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "handlerPkgName":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v21    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    .line 2123
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    .line 2124
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    .line 2127
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 2129
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "Disabling google apps from container"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v11

    .line 2131
    .local v11, "googlePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_23

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_23

    .line 2132
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Google apps size "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 2134
    .local v6, "disablePackages":[Ljava/lang/String;
    if-eqz v6, :cond_22

    array-length v0, v6

    move/from16 v34, v0

    if-lez v34, :cond_22

    .line 2135
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 2143
    .end local v6    # "disablePackages":[Ljava/lang/String;
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    .line 2144
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->allowTaskManager(Z)Z

    .line 2148
    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v16, v0

    .line 2149
    .local v16, "isKioskModeEnabled":Z
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isKioskModeEnabled- "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    if-eqz v16, :cond_21

    .line 2151
    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v19, v0

    .line 2152
    .local v19, "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->allowSettingsChanges(Z)Z

    .line 2153
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->allowStatusBarExpansion(Z)Z

    .line 2154
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->setHomeKeyState(Z)Z

    .line 2156
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v34

    if-eqz v34, :cond_1e

    .line 2157
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/kioskmode/KioskMode;->clearAllNotifications()Z

    .line 2159
    :cond_1e
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2160
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 2161
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/kioskmode/KioskMode;->wipeRecentTasks()Z

    .line 2164
    :cond_1f
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v35, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v35

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v8, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2165
    .local v8, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_20

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    if-eqz v34, :cond_20

    .line 2166
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    .line 2170
    :cond_20
    new-instance v34, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v35, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v34 .. v35}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v18

    .line 2171
    .local v18, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v18, :cond_21

    .line 2172
    const/16 v34, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2173
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2174
    .local v13, "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v34, 0xbb

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2175
    const/16 v34, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-virtual {v0, v13, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->allowHardwareKeys(Ljava/util/List;Z)Ljava/util/List;

    .line 2183
    .end local v8    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v13    # "hwKeyId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v19    # "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    :cond_21
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 2137
    .end local v16    # "isKioskModeEnabled":Z
    .restart local v6    # "disablePackages":[Ljava/lang/String;
    :cond_22
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "Error converting List[] to String[]"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2140
    .end local v6    # "disablePackages":[Ljava/lang/String;
    :cond_23
    sget-object v34, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v35, "No Google apps to disable"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8
.end method

.method private static translateStatus(I)I
    .locals 0
    .param p0, "status"    # I

    .prologue
    .line 1033
    packed-switch p0, :pswitch_data_0

    .line 1065
    .end local p0    # "status":I
    :goto_0
    return p0

    .line 1037
    .restart local p0    # "status":I
    :pswitch_0
    const/4 p0, -0x1

    goto :goto_0

    .line 1043
    :pswitch_1
    const/16 p0, 0x5f

    goto :goto_0

    .line 1049
    :pswitch_2
    const/16 p0, 0x5b

    goto :goto_0

    .line 1053
    :pswitch_3
    const/16 p0, 0x5a

    goto :goto_0

    .line 1058
    :pswitch_4
    const/16 p0, 0x5d

    goto :goto_0

    .line 1062
    :pswitch_5
    const/16 p0, 0x5e

    goto :goto_0

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 4398
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    const/4 v0, 0x0

    .line 4400
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4401
    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4405
    :goto_0
    return-object v0

    .line 4403
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private unregisterPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    .line 1027
    .local v0, "observer":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;
    if-eqz v0, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/PersonaManager;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V

    .line 1030
    :cond_0
    return-void
.end method

.method private updateConfigurationXml()V
    .locals 3

    .prologue
    .line 2188
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    monitor-enter v2

    .line 2189
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2190
    .local v0, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->setTypeList(Ljava/util/List;)V

    .line 2191
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->writeToXml()V

    .line 2192
    monitor-exit v2

    .line 2193
    return-void

    .line 2192
    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    .locals 10
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "retVal"    # I
    .param p3, "adminUid"    # I

    .prologue
    const/4 v9, 0x3

    .line 716
    if-nez p1, :cond_0

    .line 717
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "updateContainerCreationStatus: creation params: NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getCreatorUid()I

    move-result v1

    .line 721
    .local v1, "creatorUid":I
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateContainerCreationStatus retVal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "admin uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "creator Uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 723
    .local v3, "msg":Landroid/os/Message;
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v9

    .line 724
    .local v0, "arguments":[Ljava/lang/Integer;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 725
    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v7

    .line 726
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    .line 727
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 731
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-virtual {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->reset()V

    .line 732
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 733
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Process kill observer unregistered."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 735
    .end local v4    # "token":J
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NullPointerException :("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 737
    :catch_1
    move-exception v2

    .line 738
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException :("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "types"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 2515
    const/4 v2, 0x0

    .line 2516
    .local v2, "uid":I
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v6, "Activate Container permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_1

    .line 2520
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2525
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2546
    :cond_0
    :goto_1
    return v3

    .line 2522
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_0

    .line 2528
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2530
    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v1, :cond_0

    .line 2535
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter name :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfigurationTypeByName value :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2540
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2541
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 2543
    :catch_0
    move-exception v0

    .line 2544
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4471
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4472
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNetworkSSID - ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    if-nez p2, :cond_1

    .line 4487
    :cond_0
    :goto_0
    return v2

    .line 4477
    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4479
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 4480
    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4482
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4483
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4484
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 4485
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public cancelCreateContainer(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 6
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1794
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCreateContainer ->  :  adminParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const/4 v1, 0x0

    .line 1796
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v3

    .line 1797
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 1798
    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1799
    const/16 v2, -0x3f9

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1800
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v1

    .line 1801
    if-eqz v1, :cond_0

    .line 1802
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelCreateContainer ->  :  result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_0
    monitor-exit v3

    .line 1806
    return v1

    .line 1805
    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public changeContainerOwner(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 28
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4669
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v26, "changeContainerOwner"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 4671
    :cond_0
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "Package name cannot be null or empty"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 4674
    :cond_1
    const-string v25, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 4676
    const/16 v17, 0x0

    .line 4677
    .local v17, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 4679
    .local v21, "token":J
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4680
    .local v4, "containerId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v19

    .line 4681
    .local v19, "service":Landroid/os/PersonaManager;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 4682
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Container Id : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " exists "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAdminId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v24

    .line 4684
    .local v24, "uid":I
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Admin Uid : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v3

    .line 4688
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    .line 4689
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Transferred Active Component Name : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    move/from16 v5, v24

    .line 4692
    .local v5, "creatorUid":I
    move v11, v4

    .line 4693
    .local v11, "id":I
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/os/PersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v20

    .line 4695
    .local v20, "success":Z
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateMUMContainer(II)Z

    move-result v20

    .line 4697
    :goto_0
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Updated MUM Container : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4698
    if-eqz v20, :cond_3

    .line 4700
    :try_start_1
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 4702
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v8

    .line 4704
    .local v8, "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v9

    .line 4706
    .local v9, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v26, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-direct {v0, v1, v11}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v12

    .line 4709
    .local v12, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v12}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->updateApplicationTable(III)Z

    .line 4711
    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    .line 4713
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v26, "Deactivating Proxy Admin  "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    invoke-virtual {v7, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v13

    .line 4716
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v13, :cond_5

    .line 4717
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 4718
    .local v15, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v15}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 4719
    .local v18, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 4722
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v26, "Removes Proxy Admin  "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4745
    .end local v7    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v15    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .line 4746
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception cannot change Ownership :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4758
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "containerId":I
    .end local v5    # "creatorUid":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "id":I
    .end local v19    # "service":Landroid/os/PersonaManager;
    .end local v20    # "success":Z
    .end local v24    # "uid":I
    :cond_3
    :goto_2
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4760
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "changeContainerOwnership status : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    return v17

    .line 4695
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "containerId":I
    .restart local v5    # "creatorUid":I
    .restart local v11    # "id":I
    .restart local v19    # "service":Landroid/os/PersonaManager;
    .restart local v20    # "success":Z
    .restart local v24    # "uid":I
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4727
    .restart local v7    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v8    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v12    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 4729
    .local v16, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Resolve Info for component Name :  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    new-instance v14, Landroid/app/admin/ProxyDeviceAdminInfo;

    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 4733
    .local v14, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v7, v14, v0, v3, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 4736
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v3, v0, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 4737
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v26, "Activating Proxy Admin  "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v23

    .line 4739
    .local v23, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual/range {v23 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 4740
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v3, v1, v11, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    .line 4742
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v26, "Setup default policy called."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4744
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 4753
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "containerId":I
    .end local v5    # "creatorUid":I
    .end local v7    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v11    # "id":I
    .end local v12    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v16    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "service":Landroid/os/PersonaManager;
    .end local v20    # "success":Z
    .end local v23    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v24    # "uid":I
    :catch_1
    move-exception v6

    .line 4754
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v25, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failed at KnoxContainerManager API changeContainerOwnership "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 4758
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25
.end method

.method public clearNetworkSSID(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4544
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4545
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearNetworkSSID - admin UID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4549
    .local v0, "adminUid":I
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    .line 4550
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 4552
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public createContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "adminParam"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .prologue
    .line 1614
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "createContainer ->  :  cxtInfo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", type-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",adminParam-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",flags-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isTIMAEnabled()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1617
    const/16 v13, -0x3fa

    .line 1771
    :cond_0
    :goto_0
    return v13

    .line 1619
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTIMAStatus()I

    move-result v13

    .line 1620
    .local v13, "tima_code":I
    if-eqz v13, :cond_2

    .line 1621
    if-lez v13, :cond_0

    .line 1623
    mul-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1629
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEnoughMemoryToCreateContainer()Z

    move-result v20

    if-nez v20, :cond_3

    .line 1630
    const/16 v13, -0x3f3

    goto :goto_0

    .line 1633
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1634
    const/16 v6, -0x3f6

    .line 1635
    .local v6, "id":I
    if-eqz p3, :cond_6

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1636
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v22, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v23, "Activate Container permission"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :goto_1
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    if-lez v20, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1644
    :cond_5
    sget-object v22, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bad arguments: caller uid: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez p1, :cond_7

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, " type: "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    monitor-exit v21

    move v13, v6

    goto/16 :goto_0

    .line 1640
    :cond_6
    const-string v20, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_1

    .line 1772
    .end local v13    # "tima_code":I
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 1644
    .restart local v13    # "tima_code":I
    :cond_7
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_2

    .line 1648
    :cond_8
    const/16 v19, 0x0

    .line 1649
    .local v19, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1650
    .local v3, "creatorUid":I
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 1651
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    .line 1656
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1660
    .local v14, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1661
    new-instance v20, Ljava/lang/SecurityException;

    const-string v22, "Admin inside container cannot create another container"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1653
    .end local v14    # "token":J
    :cond_9
    move/from16 v19, v3

    goto :goto_3

    .line 1666
    .restart local v14    # "token":J
    :cond_a
    :try_start_2
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "createContainer ->  :  uid -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v20

    if-eqz v20, :cond_b

    .line 1669
    const/16 v13, -0x3fc

    .line 1685
    .end local v13    # "tima_code":I
    :try_start_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1669
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1672
    .restart local v13    # "tima_code":I
    :cond_b
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    .line 1673
    .local v11, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v11, :cond_c

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    .line 1674
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Containers max limit reached, returning.."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Personasize exclude dying : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1676
    const/16 v13, -0x3f4

    .line 1685
    .end local v13    # "tima_code":I
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1676
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1677
    .restart local v13    # "tima_code":I
    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_18

    .line 1678
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpAsString()V

    .line 1679
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Creation already in progress, returning.."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1680
    const/16 v13, -0x3f8

    .line 1685
    .end local v13    # "tima_code":I
    :try_start_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1680
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1682
    .end local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v13    # "tima_code":I
    :catch_0
    move-exception v4

    .line 1683
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getPersonas exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1685
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1688
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v18

    .line 1689
    .local v18, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v18, :cond_d

    .line 1690
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v18

    .line 1693
    :cond_d
    const/4 v8, 0x0

    .line 1694
    .local v8, "name":Ljava/lang/String;
    if-nez v18, :cond_e

    .line 1695
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TYPE with name "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " not found!!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/16 v13, -0x3f6

    monitor-exit v21

    goto/16 :goto_0

    .line 1685
    .end local v8    # "name":Ljava/lang/String;
    .end local v18    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_1
    move-exception v20

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 1698
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v18    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_e
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Type object firmware version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Device firmware version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v20

    if-eqz v20, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 1702
    const/16 v13, -0x3fb

    monitor-exit v21

    goto/16 :goto_0

    .line 1704
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v8

    .line 1705
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1706
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1707
    .local v9, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v20

    if-nez v20, :cond_11

    .line 1708
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v20

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 1709
    invoke-virtual {v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 1716
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_12
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 1717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v16

    .line 1719
    .local v16, "token1":J
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isKioskEnabledOnOwner()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v20

    if-eqz v20, :cond_13

    .line 1720
    const/16 v13, -0x3fe

    .line 1733
    .end local v13    # "tima_code":I
    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1720
    monitor-exit v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 1722
    .restart local v13    # "tima_code":I
    :cond_13
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    .line 1723
    .restart local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v11, :cond_14

    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v20

    if-lez v20, :cond_14

    .line 1724
    const/16 v13, -0x3fd

    .line 1733
    .end local v13    # "tima_code":I
    :try_start_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1724
    monitor-exit v21

    goto/16 :goto_0

    .line 1727
    .restart local v13    # "tima_code":I
    :cond_14
    if-eqz p3, :cond_17

    .line 1728
    const/16 v13, -0x3ff

    .line 1733
    .end local v13    # "tima_code":I
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1728
    monitor-exit v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 1730
    .end local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v13    # "tima_code":I
    :catch_1
    move-exception v4

    .line 1731
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_e
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getPersonas exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1733
    :try_start_f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1737
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v16    # "token1":J
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v12

    .line 1738
    .local v12, "requestId":I
    new-instance v10, Lcom/sec/knox/container/ContainerCreationParams;

    invoke-direct {v10}, Lcom/sec/knox/container/ContainerCreationParams;-><init>()V

    .line 1739
    .local v10, "params":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v10, v12}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestId(I)V

    .line 1740
    invoke-virtual {v10, v8}, Lcom/sec/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    .line 1741
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminUid(I)V

    .line 1742
    invoke-virtual {v10, v3}, Lcom/sec/knox/container/ContainerCreationParams;->setCreatorUid(I)V

    .line 1743
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    .line 1744
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setFlags(I)V

    .line 1745
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1747
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1748
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1749
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Process kill observer registered."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1755
    :try_start_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1757
    :goto_7
    const/4 v7, 0x0

    .line 1759
    .local v7, "msg":Landroid/os/Message;
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    const/16 v22, 0x100

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1760
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Calling handler MSG_START_MIGRATION_WIZARD"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1768
    :goto_8
    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    monitor-exit v21

    move v13, v12

    goto/16 :goto_0

    .line 1733
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v12    # "requestId":I
    .restart local v16    # "token1":J
    :catchall_2
    move-exception v20

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1750
    .end local v16    # "token1":J
    .restart local v10    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .restart local v12    # "requestId":I
    :catch_2
    move-exception v4

    .line 1751
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_12
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NullPointerException :("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1755
    :try_start_13
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 1752
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v4

    .line 1753
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_14
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RemoteException :("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1755
    :try_start_15
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v20

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 1765
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_16
    sget-object v20, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v22, "Calling handler MSG_START_SETUP_WIZARD"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    goto/16 :goto_8

    .line 1733
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v12    # "requestId":I
    .restart local v11    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v16    # "token1":J
    :cond_17
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    .line 1685
    .end local v8    # "name":Ljava/lang/String;
    .end local v16    # "token1":J
    .end local v18    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_18
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_4
.end method

.method public createContainerInternal(Lcom/sec/knox/container/ContainerCreationParams;)I
    .locals 54
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1156
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createContainerInternal --> requestId:"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/16 v32, -0x3f6

    .line 1158
    .local v32, "id":I
    const/4 v6, 0x0

    .line 1159
    .local v6, "containerName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1160
    .local v10, "type":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1161
    .local v11, "adminParam":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1162
    .local v29, "flags":I
    const/16 v52, 0x0

    .line 1163
    .local v52, "uid":I
    const/16 v51, 0x0

    .line 1164
    .local v51, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v37, 0x0

    .line 1165
    .local v37, "isUserManaged":Z
    const/16 v36, 0x0

    .line 1166
    .local v36, "isLightWeightContainer":Z
    const/16 v46, 0x0

    .line 1167
    .local v46, "requestFound":Z
    const/16 v35, 0x0

    .line 1168
    .local v35, "isKioskModeEnabled":Z
    if-nez p1, :cond_1

    .line 1169
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "ContainerCreationParams is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v33, v32

    .line 1420
    .end local v32    # "id":I
    .local v33, "id":I
    :goto_1
    return v33

    .line 1156
    .end local v6    # "containerName":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "adminParam":Ljava/lang/String;
    .end local v29    # "flags":I
    .end local v33    # "id":I
    .end local v35    # "isKioskModeEnabled":Z
    .end local v36    # "isLightWeightContainer":Z
    .end local v37    # "isUserManaged":Z
    .end local v46    # "requestFound":Z
    .end local v51    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v52    # "uid":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 1173
    .restart local v6    # "containerName":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "adminParam":Ljava/lang/String;
    .restart local v29    # "flags":I
    .restart local v32    # "id":I
    .restart local v35    # "isKioskModeEnabled":Z
    .restart local v36    # "isLightWeightContainer":Z
    .restart local v37    # "isUserManaged":Z
    .restart local v46    # "requestFound":Z
    .restart local v51    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v52    # "uid":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1174
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminParam()Ljava/lang/String;

    move-result-object v11

    .line 1175
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getFlags()I

    move-result v29

    .line 1176
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v51

    .line 1177
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1178
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v52

    .line 1179
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v37

    .line 1181
    move-object/from16 v0, v51

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_2

    .line 1182
    const/16 v35, 0x1

    .line 1184
    :cond_2
    move-object/from16 v0, v51

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v5, :cond_3

    .line 1185
    const/16 v36, 0x1

    .line 1188
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v7

    .line 1189
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v46

    .line 1190
    if-nez v46, :cond_4

    .line 1191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1192
    monitor-exit v7

    move/from16 v33, v32

    .end local v32    # "id":I
    .restart local v33    # "id":I
    goto :goto_1

    .line 1194
    .end local v33    # "id":I
    .restart local v32    # "id":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    move/from16 v24, v52

    .line 1199
    .local v24, "creatorUid":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createContainerInternal: type: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "adminParam-"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, ",flags-"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " uid: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v49

    .line 1202
    .local v49, "token":J
    :try_start_1
    new-instance v30, Ljava/io/File;

    const-string v5, "/system/container/KnoxSecureHandler.apk"

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v30, "handlerApk":Ljava/io/File;
    new-instance v53, Ljava/io/File;

    const-string v5, "/system/container/ContainerAgent2.apk"

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v53, "wizardApk":Ljava/io/File;
    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 1205
    .local v12, "handlerApkUri":Landroid/net/Uri;
    invoke-static/range {v53 .. v53}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 1207
    .local v13, "wizardApkUri":Landroid/net/Uri;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v51

    .line 1208
    if-nez v51, :cond_5

    .line 1209
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v51

    .line 1211
    :cond_5
    if-nez v51, :cond_6

    .line 1212
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TYPE with name "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " not found!!"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1415
    invoke-static/range {v49 .. v50}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v33, v32

    .line 1214
    .end local v32    # "id":I
    .restart local v33    # "id":I
    goto/16 :goto_1

    .line 1195
    .end local v12    # "handlerApkUri":Landroid/net/Uri;
    .end local v13    # "wizardApkUri":Landroid/net/Uri;
    .end local v24    # "creatorUid":I
    .end local v30    # "handlerApk":Ljava/io/File;
    .end local v33    # "id":I
    .end local v49    # "token":J
    .end local v53    # "wizardApk":Ljava/io/File;
    .restart local v32    # "id":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1217
    .restart local v12    # "handlerApkUri":Landroid/net/Uri;
    .restart local v13    # "wizardApkUri":Landroid/net/Uri;
    .restart local v24    # "creatorUid":I
    .restart local v30    # "handlerApk":Ljava/io/File;
    .restart local v49    # "token":J
    .restart local v53    # "wizardApk":Ljava/io/File;
    :cond_6
    const/16 v44, 0x0

    .line 1218
    .local v44, "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/16 v39, 0x0

    .line 1219
    .local v39, "matchedAdmin":Landroid/content/ComponentName;
    const/16 v22, 0x0

    .line 1220
    .local v22, "adminActInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v15, 0x0

    .line 1221
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/admin/DevicePolicyManager;

    .line 1223
    .local v25, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 1224
    .local v20, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin param :"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    .line 1227
    .local v41, "pm":Landroid/content/pm/PackageManager;
    if-nez v11, :cond_e

    if-eqz v20, :cond_e

    .line 1228
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v48

    .line 1229
    .local v48, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v43, 0x0

    .line 1231
    .local v43, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :try_start_4
    invoke-static/range {v52 .. v52}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v43

    .line 1235
    :goto_2
    if-eqz v43, :cond_a

    .line 1236
    :try_start_5
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1237
    .local v42, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v42 .. v42}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v52

    if-ne v5, v0, :cond_7

    .line 1238
    invoke-virtual/range {v42 .. v42}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v39

    .line 1239
    invoke-virtual/range {v42 .. v42}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 1240
    move-object/from16 v44, v42

    goto :goto_3

    .line 1232
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v42    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    :catch_0
    move-exception v26

    .line 1233
    .local v26, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getting proxyadmin list failed:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1412
    .end local v12    # "handlerApkUri":Landroid/net/Uri;
    .end local v13    # "wizardApkUri":Landroid/net/Uri;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v30    # "handlerApk":Ljava/io/File;
    .end local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v41    # "pm":Landroid/content/pm/PackageManager;
    .end local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v53    # "wizardApk":Ljava/io/File;
    :catch_1
    move-exception v26

    .line 1413
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1415
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_4
    invoke-static/range {v49 .. v50}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1417
    if-gtz v32, :cond_9

    .line 1418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    :cond_9
    move/from16 v33, v32

    .line 1420
    .end local v32    # "id":I
    .restart local v33    # "id":I
    goto/16 :goto_1

    .line 1245
    .end local v33    # "id":I
    .restart local v12    # "handlerApkUri":Landroid/net/Uri;
    .restart local v13    # "wizardApkUri":Landroid/net/Uri;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v30    # "handlerApk":Ljava/io/File;
    .restart local v32    # "id":I
    .restart local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v41    # "pm":Landroid/content/pm/PackageManager;
    .restart local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v53    # "wizardApk":Ljava/io/File;
    :cond_a
    if-nez v39, :cond_c

    .line 1246
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    .line 1247
    .local v21, "admin":Landroid/content/ComponentName;
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v40

    .line 1248
    .local v40, "pName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current admin loop :"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1250
    if-eqz v40, :cond_b

    if-eqz v41, :cond_b

    .line 1252
    const/4 v5, 0x0

    :try_start_8
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v22

    .line 1256
    :goto_5
    if-eqz v22, :cond_b

    :try_start_9
    move-object/from16 v0, v22

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v52

    if-ne v5, v0, :cond_b

    .line 1257
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin found :"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "Uid: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    move-object/from16 v39, v21

    .line 1259
    new-instance v47, Landroid/content/Intent;

    invoke-direct/range {v47 .. v47}, Landroid/content/Intent;-><init>()V

    .line 1260
    .local v47, "resolveIntent":Landroid/content/Intent;
    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1261
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v7, 0x80

    invoke-static/range {v52 .. v52}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v5, v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v34

    .line 1263
    .local v34, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v34, :cond_c

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1264
    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 1272
    .end local v21    # "admin":Landroid/content/ComponentName;
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v34    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v40    # "pName":Ljava/lang/String;
    .end local v47    # "resolveIntent":Landroid/content/Intent;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_c
    if-eqz v39, :cond_d

    if-nez v15, :cond_e

    .line 1273
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1274
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown admin: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1415
    .end local v12    # "handlerApkUri":Landroid/net/Uri;
    .end local v13    # "wizardApkUri":Landroid/net/Uri;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v30    # "handlerApk":Ljava/io/File;
    .end local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v41    # "pm":Landroid/content/pm/PackageManager;
    .end local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v53    # "wizardApk":Ljava/io/File;
    :catchall_1
    move-exception v5

    invoke-static/range {v49 .. v50}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1253
    .restart local v12    # "handlerApkUri":Landroid/net/Uri;
    .restart local v13    # "wizardApkUri":Landroid/net/Uri;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v21    # "admin":Landroid/content/ComponentName;
    .restart local v22    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v30    # "handlerApk":Ljava/io/File;
    .restart local v31    # "i$":Ljava/util/Iterator;
    .restart local v39    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v40    # "pName":Ljava/lang/String;
    .restart local v41    # "pm":Landroid/content/pm/PackageManager;
    .restart local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v44    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v53    # "wizardApk":Ljava/io/File;
    :catch_2
    move-exception v28

    .line 1254
    .local v28, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_a
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getting app info failed. package Name: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1278
    .end local v21    # "admin":Landroid/content/ComponentName;
    .end local v28    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v40    # "pName":Ljava/lang/String;
    .end local v43    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_e
    move/from16 v0, v29

    int-to-long v8, v0

    .line 1279
    .local v8, "personaflags":J
    const/16 v45, -0x1

    .line 1280
    .local v45, "removeid":I
    if-eqz v37, :cond_f

    .line 1281
    const-wide/16 v16, 0x80

    or-long v8, v8, v16

    .line 1284
    :cond_f
    if-eqz v35, :cond_10

    .line 1285
    const-wide/16 v16, 0x400

    or-long v8, v8, v16

    .line 1287
    :cond_10
    if-eqz v36, :cond_11

    .line 1288
    const-wide/16 v16, 0x200

    or-long v8, v8, v16

    .line 1291
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v5 .. v13}, Landroid/os/PersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v32

    .line 1292
    if-lez v32, :cond_18

    .line 1293
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->installDefaultApplications(ILjava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1294
    if-nez v11, :cond_16

    .line 1296
    :try_start_b
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Enabling proxy admins."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    new-instance v27, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1298
    .local v27, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v14, 0x0

    .line 1299
    .local v14, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    if-eqz v44, :cond_15

    .line 1300
    new-instance v14, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v44 .. v44}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v18

    invoke-virtual/range {v44 .. v44}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v14 .. v19}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .line 1306
    .restart local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_6
    move/from16 v0, v32

    move/from16 v1, v52

    invoke-static {v0, v1}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v5

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v52

    invoke-virtual {v0, v14, v5, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 1307
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 1308
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Activating proxy admins done."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1329
    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v27    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_7
    if-lez v32, :cond_13

    .line 1331
    if-eqz v39, :cond_17

    .line 1332
    :try_start_c
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Admin container relationship added."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addContainerOwnerRelationship(II)Z

    .line 1334
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v52

    move/from16 v3, v32

    move-object/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1336
    move/from16 v45, v32

    .line 1337
    const/16 v32, -0x3f5

    .line 1339
    :cond_12
    if-lez v32, :cond_13

    if-eqz v11, :cond_13

    if-eqz v39, :cond_13

    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1342
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v48

    .line 1344
    .restart local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v48

    move/from16 v1, v24

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->restoreContainerAdminData(ILjava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v5

    if-nez v5, :cond_13

    .line 1346
    move/from16 v45, v32

    .line 1347
    const/16 v32, -0x3f5

    .line 1366
    .end local v48    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_13
    :goto_8
    if-lez v32, :cond_1a

    .line 1369
    :try_start_d
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v38

    .line 1370
    .local v38, "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v38, :cond_14

    .line 1371
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***************************Writing to type object : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 1374
    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    .line 1375
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 1376
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "removeContainerId from create. Hmm fishy: configuration list updated successfully."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_14
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "***************************Writing to type object : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    if-eqz v11, :cond_19

    .line 1381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "knox-b2c-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->clone(Ljava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v23

    .line 1382
    .local v23, "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    .line 1386
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v52

    move/from16 v1, v32

    invoke-direct {v5, v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/16 v16, 0x0

    aput-object v23, v7, v16

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    .line 1387
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V

    .line 1388
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Byod case, cloning a new type"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    .end local v23    # "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_9
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    .line 1397
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1398
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v7, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    .line 1401
    .end local v38    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_3
    move-exception v26

    .line 1402
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_e
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error creating persona:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1403
    move/from16 v45, v32

    .line 1404
    const/16 v32, -0x3f5

    .line 1405
    goto/16 :goto_4

    .line 1304
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v27    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_15
    :try_start_f
    new-instance v14, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .restart local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_6

    .line 1309
    .end local v14    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v27    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_4
    move-exception v26

    .line 1311
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_10
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception cannot create or activate proxyadmins:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1312
    move/from16 v45, v32

    .line 1313
    const/16 v32, -0x3f5

    .line 1314
    goto/16 :goto_7

    .line 1317
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_16
    :try_start_11
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Admin is inside container. Need to find admin."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->getAdminUidForPersona(I)I

    move-result v52

    .line 1320
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->findMatchingComponent(II)Landroid/content/ComponentName;

    move-result-object v39

    .line 1321
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin found in findMatchingComponent: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v39 .. v39}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_7

    .line 1322
    :catch_5
    move-exception v26

    .line 1323
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_12
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception while getting admin id or finding admin removeContainer:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1325
    move/from16 v45, v32

    .line 1326
    const/16 v32, -0x3f5

    goto/16 :goto_7

    .line 1351
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_17
    :try_start_13
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "matchedAdmin is null. removeContainer"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1353
    move/from16 v45, v32

    .line 1354
    const/16 v32, -0x3f5

    goto/16 :goto_8

    .line 1356
    :catch_6
    move-exception v26

    .line 1358
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_14
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception:"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    move/from16 v45, v32

    .line 1360
    const/16 v32, -0x3f5

    .line 1361
    goto/16 :goto_8

    .line 1364
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_18
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Error creating persona."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_8

    .line 1390
    .restart local v38    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_19
    :try_start_15
    invoke-virtual/range {v51 .. v51}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 1391
    move-object/from16 v0, v51

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    .line 1392
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    .line 1393
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_9

    .line 1407
    .end local v38    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1a
    const/16 v5, 0x64

    move/from16 v0, v45

    if-lt v0, v5, :cond_8

    .line 1408
    const/4 v5, 0x1

    :try_start_16
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_4
.end method

.method public createContainerMarkSuccess(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 4
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1778
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContainerMarkSuccess ->  : param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v2

    .line 1781
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 1782
    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    .line 1784
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    .line 1785
    const/4 v1, 0x1

    monitor-exit v2

    .line 1788
    :goto_0
    return v1

    .line 1787
    :cond_0
    monitor-exit v2

    .line 1788
    const/4 v1, 0x0

    goto :goto_0

    .line 1787
    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createContainerWithCallback(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "adminParam"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 1607
    sput-object p5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 1608
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public doSelfUninstall()V
    .locals 8

    .prologue
    .line 3082
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v6, "Activate Container permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3087
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3090
    .local v2, "token":J
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3097
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3098
    return-void

    .line 3093
    :catch_0
    move-exception v1

    .line 3094
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail doSelfUninstall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enforceMultifactorAuthentication(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3026
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3027
    if-eqz p1, :cond_0

    .line 3028
    const/4 v2, 0x0

    .line 3029
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3030
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3031
    const-string v4, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3032
    const-string v4, "propertyName"

    const-string v7, "MultifactorAuthentication"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MultifactorAuthentication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3036
    .local v0, "count":I
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    if-lez v0, :cond_2

    .line 3039
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3040
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3041
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 3048
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_3

    .line 3049
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceMultifactorAuthentication failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_0
    :goto_2
    return v6

    .restart local v0    # "count":I
    .restart local v2    # "result":Z
    .restart local v3    # "where":Landroid/content/ContentValues;
    :cond_1
    move v4, v6

    .line 3036
    goto :goto_0

    .line 3044
    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3045
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v6, v5

    .line 3052
    goto :goto_2
.end method

.method public forceResetPassword(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2418
    if-nez p1, :cond_0

    .line 2467
    :goto_0
    return v8

    .line 2421
    :cond_0
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "forceResetPassword: containerId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string v10, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2426
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2427
    .local v2, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_2

    .line 2465
    .end local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2430
    .restart local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    :try_start_1
    iget v10, v2, Landroid/content/pm/PersonaInfo;->state:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_3

    iget-boolean v10, v2, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-ne v10, v9, :cond_4

    .line 2431
    :cond_3
    const-string v10, "password_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2433
    .local v3, "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v3, :cond_1

    .line 2434
    const/4 v10, 0x0

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v1

    .line 2436
    .local v1, "enforcePwdStatus":I
    if-lez v1, :cond_1

    .line 2437
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v10, v11, v12}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 2439
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "forceResetPassword: cleared enforcepwdchange state."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2465
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2441
    goto :goto_0

    .line 2445
    .end local v1    # "enforcePwdStatus":I
    .end local v3    # "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :cond_4
    :try_start_2
    iget-boolean v10, v2, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v10, :cond_5

    .line 2446
    const-string v10, "persona"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersonaManagerService;

    .line 2448
    .local v5, "service":Lcom/android/server/pm/PersonaManagerService;
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lcom/android/server/pm/PersonaManagerService;->setResetPasswordState(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2465
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2449
    goto :goto_0

    .line 2452
    .end local v5    # "service":Lcom/android/server/pm/PersonaManagerService;
    :cond_5
    :try_start_3
    const-string v10, "persona_state_manager"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersonaStateManagerService;

    .line 2454
    .local v5, "service":Lcom/android/server/pm/PersonaStateManagerService;
    if-eqz v5, :cond_1

    .line 2455
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    new-instance v11, Landroid/content/pm/PersonaEvent;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-virtual {v5, v10, v11}, Lcom/android/server/pm/PersonaStateManagerService;->postEventForPersona(ILandroid/content/pm/PersonaEvent;)I

    move-result v4

    .line 2457
    .local v4, "result":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    .line 2458
    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "forceResetPassword: successfully posted event"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2465
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v9

    .line 2459
    goto/16 :goto_0

    .line 2462
    .end local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    .end local v4    # "result":I
    .end local v5    # "service":Lcom/android/server/pm/PersonaStateManagerService;
    :catch_0
    move-exception v0

    .line 2463
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Failed to post force reset event"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2465
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public getConfigurationType(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2768
    const/4 v2, 0x0

    .line 2769
    .local v2, "uid":I
    if-eqz p1, :cond_1

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v5, :cond_1

    .line 2770
    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2771
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2777
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2778
    .local v3, "userHandle":I
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2779
    if-ne p2, v3, :cond_2

    .line 2780
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2797
    .end local v3    # "userHandle":I
    :cond_0
    :goto_1
    return-object v4

    .line 2773
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_0

    .line 2782
    .restart local v3    # "userHandle":I
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Caller inside persona ? : false throw exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No priviledge on containerId "

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2795
    .end local v3    # "userHandle":I
    :catch_0
    move-exception v1

    .line 2796
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2786
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "userHandle":I
    :cond_3
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 2787
    .local v0, "cType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-eq v5, v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-nez v5, :cond_0

    .line 2790
    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2472
    const/4 v0, 0x0

    .line 2473
    .local v0, "callingUid":I
    if-eqz p1, :cond_1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v2, :cond_1

    .line 2474
    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2475
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2479
    :goto_0
    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 2480
    .local v1, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v1, :cond_0

    .line 2481
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 2483
    :cond_0
    if-nez v1, :cond_2

    .line 2484
    const/4 v2, 0x0

    .line 2486
    :goto_1
    return-object v2

    .line 2477
    .end local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0

    .line 2486
    .restart local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method public getConfigurationTypes(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2829
    const/4 v3, 0x0

    .line 2830
    .local v3, "uid":I
    if-eqz p1, :cond_3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_3

    .line 2831
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2832
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2836
    :goto_0
    const/4 v1, 0x0

    .line 2837
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: input uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2839
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_0

    .line 2840
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    if-nez v1, :cond_2

    .line 2842
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2844
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2834
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_0

    .line 2847
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_4
    return-object v1
.end method

.method public getContainerCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 2
    .param p1, "containerId"    # I

    .prologue
    .line 2820
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 2821
    .local v0, "params":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    .line 2822
    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->clone()Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v1

    .line 2824
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainers(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2305
    const/4 v0, 0x0

    .line 2306
    .local v0, "callingUid":I
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_0

    .line 2307
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2308
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2312
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2310
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultConfigurationTypes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2804
    const/4 v1, 0x0

    .line 2805
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2806
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-nez v3, :cond_0

    .line 2807
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    if-nez v1, :cond_1

    .line 2809
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2811
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2814
    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_2
    return-object v1
.end method

.method public getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2852
    if-eqz p1, :cond_2

    .line 2853
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v7

    .line 2856
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2857
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2858
    const-string v5, "propertyName"

    const-string v8, "EnforceAuthForContainer"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 2860
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2861
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 2863
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2865
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2866
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 2878
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 2869
    goto :goto_0

    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 2874
    goto :goto_0

    .line 2877
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 2878
    goto :goto_0
.end method

.method public getHibernationTimeout(Landroid/app/enterprise/ContextInfo;)J
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    .line 4411
    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 4412
    if-eqz p1, :cond_2

    .line 4413
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v11

    .line 4416
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4417
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4418
    const-string v5, "propertyName"

    const-string v8, "HibernationTimeout"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 4420
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4421
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 4423
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4424
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "time=- "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4426
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-wide v5, v6

    .line 4438
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return-wide v5

    .line 4429
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    .line 4433
    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed to get value from DB > returning true"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v6

    .line 4434
    goto :goto_0

    .line 4437
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed > returning true"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v6

    .line 4438
    goto :goto_0
.end method

.method public getNetworkSSID(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4520
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4521
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkSSID - adminUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 4524
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4525
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4527
    .end local v0    # "aux":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getOwnContainers()[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 15

    .prologue
    .line 2317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2318
    .local v0, "callingUid":I
    const/4 v9, 0x0

    .line 2319
    .local v9, "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    const/4 v3, 0x0

    .line 2320
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2322
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v8

    .line 2323
    .local v8, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v8, :cond_1

    .line 2324
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2325
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const/4 v5, 0x0

    .line 2326
    .local v5, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .line 2327
    .local v7, "pInfo":Landroid/content/pm/PersonaInfo;
    iget-object v12, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v13, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 2328
    .local v6, "ownerUid":I
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    if-ne v6, v0, :cond_0

    .line 2330
    new-instance v5, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .end local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-direct {v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .line 2331
    .restart local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    iget v12, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v12}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    .line 2332
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 2333
    iget-object v12, v7, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 2334
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2338
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v6    # "ownerUid":I
    .end local v7    # "pInfo":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 2339
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :goto_1
    :try_start_2
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getOwnContainers exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2341
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 2344
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-interface {v3, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    check-cast v9, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 2346
    .restart local v9    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_2
    return-object v9

    .line 2341
    :catchall_0
    move-exception v12

    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    goto :goto_3

    .line 2338
    .end local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v5    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v8    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    move-object v3, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    goto :goto_2
.end method

.method public getStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2351
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2352
    const/4 v1, -0x1

    .line 2353
    .local v1, "status":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2355
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonaState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2359
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I

    move-result v4

    return v4

    .line 2356
    :catch_0
    move-exception v0

    .line 2357
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStatus exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2359
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isMultifactorAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2992
    if-eqz p1, :cond_2

    .line 2993
    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v7

    .line 2996
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2997
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2998
    const-string v5, "propertyName"

    const-string v8, "MultifactorAuthentication"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 3000
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3001
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EnforceAuthForContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 3005
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 3006
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3008
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 3020
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 3011
    goto :goto_0

    .line 3015
    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 3016
    goto :goto_0

    .line 3019
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 3020
    goto :goto_0
.end method

.method public lockContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2366
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "lockContainer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2368
    const/4 v1, 0x0

    .line 2369
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2371
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2372
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2377
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    return v1

    .line 2374
    :catch_0
    move-exception v0

    .line 2375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API adminLockPersona "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2377
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 4350
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4355
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdminRemoval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 4360
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreAdminRemoval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v1

    .line 4363
    .local v1, "containerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4364
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting containers for owner Uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4367
    .local v0, "containerId":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4368
    :catch_0
    move-exception v2

    .line 4369
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4374
    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz p1, :cond_1

    .line 4375
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 4376
    .local v4, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    goto :goto_1

    .line 4379
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    return-void
.end method

.method public registerBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 2884
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2886
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2887
    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2888
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 2889
    .local v2, "retVal":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 2890
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const/4 v6, 0x0

    .line 2903
    :goto_0
    return v6

    .line 2893
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2895
    .local v3, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v5, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2901
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2903
    goto :goto_0

    .line 2897
    :catch_0
    move-exception v1

    .line 2898
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2901
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public removeConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2575
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2576
    const/4 v0, 0x0

    .line 2577
    .local v0, "uid":I
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_0

    .line 2578
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2582
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 2580
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0
.end method

.method public removeContainer(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2267
    :try_start_0
    const-string v1, "removeContainer"

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2272
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2273
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I

    move-result v1

    .line 2275
    :goto_1
    return v1

    .line 2268
    :catch_0
    move-exception v0

    .line 2269
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEAMS invalidated caller. lets go for MDM. Printing stack anyway :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0

    .line 2275
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/16 v1, -0x4b2

    goto :goto_1
.end method

.method public removeNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 4501
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4502
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNetworkSSID - SSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    if-nez p2, :cond_0

    .line 4505
    const/4 v2, 0x0

    .line 4516
    :goto_0
    return v2

    .line 4508
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 4510
    .local v0, "adminUid":I
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4512
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 4513
    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4514
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 4516
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public resetContainerOnReboot(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3063
    if-nez p1, :cond_0

    .line 3064
    const/4 v1, 0x0

    .line 3078
    :goto_0
    return v1

    .line 3066
    :cond_0
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3067
    const/4 v1, 0x0

    .line 3068
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3070
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3071
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3076
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3073
    :catch_0
    move-exception v0

    .line 3074
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API resetPersonaOnBoot "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3076
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public resetContainerPolicies(Landroid/app/enterprise/ContextInfo;)Z
    .locals 26
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4591
    const/16 v16, 0x0

    .line 4592
    .local v16, "retVal":Z
    const-string v23, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 4594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4596
    .local v19, "token":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v18

    .line 4597
    .local v18, "service":Landroid/os/PersonaManager;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 4598
    .local v5, "containerId":I
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 4599
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v22, v0

    .line 4600
    .local v22, "uid":I
    const/4 v3, 0x1

    .line 4601
    .local v3, "DUMMY_ADMIN":I
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 4603
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v8

    .line 4605
    .local v8, "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v9

    .line 4606
    .local v9, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v24, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v0, v1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v11

    .line 4607
    .local v11, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v4

    .line 4608
    .local v4, "componentName":Landroid/content/ComponentName;
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Component Name :  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    invoke-virtual {v11}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->updateApplicationTable(III)Z

    .line 4610
    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    .line 4611
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "Deactivating Proxy Admin  "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    invoke-virtual {v7, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v12

    .line 4614
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v12, :cond_2

    .line 4615
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 4616
    .local v14, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v14}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 4617
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 4619
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "Removes Proxy Admin  "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4638
    .end local v3    # "DUMMY_ADMIN":I
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "containerId":I
    .end local v7    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v14    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "service":Landroid/os/PersonaManager;
    .end local v22    # "uid":I
    :catch_0
    move-exception v6

    .line 4639
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "Failed at KnoxMUMContainerPolicy API resetContainerPolicies "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4642
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4644
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Returned Value for Reset Policies : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    return v16

    .line 4624
    .restart local v3    # "DUMMY_ADMIN":I
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "containerId":I
    .restart local v7    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v8    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v11    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v18    # "service":Landroid/os/PersonaManager;
    .restart local v22    # "uid":I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v21

    .line 4625
    .local v21, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 4626
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Resolve Info "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    new-instance v13, Landroid/app/admin/ProxyDeviceAdminInfo;

    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v13, v15, v0}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 4629
    .local v13, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move/from16 v0, v22

    invoke-static {v5, v0}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v7, v13, v0, v4, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 4631
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v4, v0, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 4632
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "Activating Proxy Admin  "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    invoke-virtual {v11}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->updateApplicationTable(III)Z

    .line 4634
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v4, v1, v5, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    .line 4635
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "Setup default policy called."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4636
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 4642
    .end local v3    # "DUMMY_ADMIN":I
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "containerId":I
    .end local v7    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v9    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v11    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v13    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "service":Landroid/os/PersonaManager;
    .end local v21    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v22    # "uid":I
    :catchall_0
    move-exception v23

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23
.end method

.method public setEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2959
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2960
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-ne v6, p2, :cond_0

    .line 2987
    :goto_0
    return v4

    .line 2963
    :cond_0
    if-eqz p1, :cond_3

    .line 2964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2966
    .local v2, "token":J
    if-nez p2, :cond_1

    .line 2967
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v6}, Landroid/os/PersonaManager;->disablePersonaKeyGuard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2968
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 2984
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2970
    :cond_1
    if-ne p2, v4, :cond_2

    .line 2971
    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    .line 2972
    .local v1, "ret":Z
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->enablePersonaKeyGuard(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2973
    if-eqz v1, :cond_2

    .line 2974
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->refreshTimer(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2981
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 2982
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2984
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_3
    move v4, v5

    .line 2987
    goto :goto_0

    .line 2977
    .restart local v1    # "ret":Z
    .restart local v2    # "token":J
    :cond_4
    if-eqz v1, :cond_2

    .line 2978
    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2984
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setHibernationTimeout(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # J

    .prologue
    .line 4444
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 4446
    const/4 v2, 0x0

    .line 4447
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4448
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4449
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4450
    const-string v4, "propertyName"

    const-string v5, "HibernationTimeout"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 4452
    .local v0, "count":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHibernationTimeout: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    if-lez v0, :cond_2

    .line 4455
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4456
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4457
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 4464
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_0

    .line 4465
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHibernationTimeout failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    :cond_0
    return v2

    .line 4452
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 4460
    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4461
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 1077
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "SystemReady called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    .line 1081
    new-instance v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    .line 1082
    return-void
.end method

.method public unlockContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2384
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "unlockContainer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const-string v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2386
    const/4 v7, 0x0

    .line 2387
    .local v7, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2389
    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2390
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Landroid/os/PersonaManager;->adminUnLockPersona(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2395
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2399
    if-eqz v7, :cond_2

    .line 2400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2401
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2402
    .local v10, "userId":I
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2403
    .local v6, "pkgNames":[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 2404
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 2405
    .local v5, "pkgName":Ljava/lang/String;
    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5, v11, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    .line 2404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2392
    .end local v0    # "adminUid":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :catch_0
    move-exception v2

    .line 2393
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v12, "Failed at KnoxMUMContainerPolicy API adminUnLockPersona "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2395
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 2408
    .restart local v0    # "adminUid":I
    .restart local v6    # "pkgNames":[Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_1
    const/4 v11, 0x0

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    .line 2413
    .end local v0    # "adminUid":I
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :cond_2
    return v7
.end method

.method public unregisterBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 2907
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2909
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2910
    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2911
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 2912
    .local v2, "retVal":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 2913
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    const/4 v6, 0x0

    .line 2927
    :goto_0
    return v6

    .line 2916
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2918
    .local v3, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v5, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->unregisterBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2925
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2927
    goto :goto_0

    .line 2921
    :catch_0
    move-exception v1

    .line 2922
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2925
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
