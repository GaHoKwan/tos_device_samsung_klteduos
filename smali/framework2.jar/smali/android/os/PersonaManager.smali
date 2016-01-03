.class public Landroid/os/PersonaManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersonaManager$AppType;
    }
.end annotation


# static fields
.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field public static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field public static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field public static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field public static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field public static final FLAG_KIOSK_ENABLED:I = 0x400

.field public static final FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x200

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_PURE_ENABLED:I = 0x800

.field public static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final FLAG_USER_MANAGED_CONTAINER:I = 0x80

.field private static final GOOGLE_MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final KNOX_SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent2"

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field private static final PERSONAL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final PERSONA_DEVICE_POLICY_SERVICE:Ljava/lang/String; = "persona_device_policy"

.field public static final PERSONA_FILE_SYSTEM_SERVICE:Ljava/lang/String; = "persona_file_system"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_LOCK_SETTINGS_SERVICE:Ljava/lang/String; = "persona_lock_settings"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_STATE_MANAGER_SERVICE:Ljava/lang/String; = "persona_state_manager"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_VALIDATION_SUCCESS:I

.field private static mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

.field private static mKnoxInfo:Landroid/os/Bundle;

.field public static m_bIsKnoxInfoInitialized:Z

.field private static personaManager:Landroid/os/PersonaManager;

.field private static personaPolicyMgr:Landroid/os/PersonaPolicyManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 180
    sput-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 211
    const-string v0, "PersonaManager"

    sput-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    .line 215
    sput-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    .line 216
    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 217
    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 228
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.shortcutsms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.hearingadjust"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 241
    sput-boolean v3, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    .line 246
    iput-object p1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    .line 247
    return-void
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1064
    if-nez p1, :cond_1

    .line 1065
    const/4 v3, 0x0

    .line 1096
    :cond_0
    :goto_0
    return-object v3

    .line 1068
    :cond_1
    const/4 v3, 0x0

    .line 1072
    .local v3, "ret":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "RequestProxy"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1073
    const-string/jumbo v5, "rcp"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    .line 1075
    .local v2, "rcpm":Landroid/os/RCPManager;
    if-eqz v2, :cond_0

    .line 1076
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 1079
    .end local v2    # "rcpm":Landroid/os/RCPManager;
    :cond_2
    const-string v5, "MoveTo"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1080
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v3    # "ret":Landroid/os/Bundle;
    .local v4, "ret":Landroid/os/Bundle;
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "action.com.sec.knox.container.exchangeData"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1084
    const-string v5, "launchFromPersonaManager"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1085
    const-string v5, "com.sec.knox.bridge"

    const-string v6, "com.sec.knox.bridge.operations.ExchangeDataReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1089
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_0

    .line 1092
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1092
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Landroid/os/Bundle;
    .restart local v4    # "ret":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 811
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 812
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 813
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 814
    const/4 v1, 0x0

    .line 815
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :try_start_1
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 821
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 822
    const-string v1, "2.0"

    .line 827
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :goto_1
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportCallerInfo"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    :cond_2
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 823
    :cond_3
    :try_start_3
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    const-string v1, "1.0"

    goto :goto_0

    .line 829
    :cond_4
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 835
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 983
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 984
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 988
    :cond_0
    :try_start_0
    const-string v1, "2.0"

    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    const-string v1, "isSupportMoveTo"

    invoke-static {p0, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :cond_1
    :goto_0
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .line 922
    const/4 v1, 0x0

    .line 924
    .local v1, "userid":I
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 925
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 928
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 933
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    sget-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    if-nez v2, :cond_2

    .line 936
    if-lt v1, v5, :cond_1

    .line 937
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxMode"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isBlockExternalSD"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isBlockBluetoothMenu"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isSamsungAccountBlocked"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_1
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 944
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 953
    :cond_2
    const-string/jumbo v2, "true"

    sget-object v3, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 954
    const-string v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 955
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    invoke-static {p0, v2, v1}, Landroid/os/PersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 959
    :cond_3
    const-string v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 960
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-lt v2, v5, :cond_7

    .line 961
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxModeActive"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_4
    :goto_1
    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 968
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 969
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :cond_5
    :goto_2
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 946
    :cond_6
    :try_start_1
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 963
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxModeActive"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 971
    :cond_8
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static isCACEnabled(I)Z
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 1635
    sget-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v1, :cond_0

    .line 1636
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    sput-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 1639
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1643
    :goto_0
    return v1

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isCACEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1643
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 901
    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 903
    .local v2, "pm":Landroid/os/PersonaManager;
    if-nez v2, :cond_0

    move v3, v4

    .line 918
    :goto_0
    return v3

    .line 907
    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v1

    .line 909
    .local v1, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v1, :cond_2

    .line 910
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 911
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    iget-boolean v3, v3, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v3, :cond_1

    .line 912
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "isKioskModeEnabled() : true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v3, 0x1

    goto :goto_0

    .line 910
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "k":I
    :cond_2
    move v3, v4

    .line 918
    goto :goto_0
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1100
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "null"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1108
    :cond_0
    :goto_0
    return v4

    .line 1103
    :cond_1
    sget-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1104
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1108
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 844
    if-eqz p2, :cond_0

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 897
    :goto_0
    return v1

    .line 848
    :cond_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 849
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 850
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_2

    .line 851
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 852
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_1

    .line 853
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 855
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_2
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_4

    .line 859
    const-class v3, Landroid/os/PersonaPolicyManager;

    monitor-enter v3

    .line 860
    :try_start_1
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_3

    .line 861
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 863
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 866
    :cond_4
    const/16 v1, 0x64

    if-lt p3, v1, :cond_11

    .line 867
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 868
    goto :goto_0

    .line 855
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 863
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 869
    :cond_5
    const-string v1, "cameraMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 870
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getCameraModeChangeEnabled(I)Z

    move-result v1

    goto :goto_0

    .line 871
    :cond_6
    const-string v1, "dlnaDataTransfer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 872
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowDLNADataTransfer(I)Z

    move-result v1

    goto :goto_0

    .line 873
    :cond_7
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 874
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_0

    .line 875
    :cond_8
    const-string v1, "allShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 876
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowAllShare(I)Z

    move-result v1

    goto/16 :goto_0

    .line 877
    :cond_9
    const-string v1, "gearSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 878
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getGearSupportEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 879
    :cond_a
    const-string/jumbo v1, "penWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 880
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getPenWindowEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 881
    :cond_b
    const-string v1, "airCommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 882
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAirCommandEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 883
    :cond_c
    const-string v1, "importFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 884
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowImportFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 885
    :cond_d
    const-string v1, "exportFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 886
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 887
    :cond_e
    const-string v1, "exportAndDeleteFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 888
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 889
    :cond_f
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 890
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_0

    .line 891
    :cond_10
    const-string v1, "contacts-import-export"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    .line 892
    goto/16 :goto_0

    .line 897
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userid"    # I

    .prologue
    .line 1000
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    if-nez p2, :cond_5

    .line 1003
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1004
    .local v1, "bd1":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1005
    .local v8, "resp":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1006
    .local v4, "personaIds":[I
    const/4 v6, 0x0

    .line 1007
    .local v6, "personaTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1009
    .local v5, "personaNames":[Ljava/lang/String;
    const-string v9, "action"

    const-string v10, "RequestProxy"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v9, "cmd"

    const-string/jumbo v10, "queryPersonaInfos"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-static {p0, v1}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1014
    if-eqz v8, :cond_0

    .line 1015
    const-string/jumbo v9, "personaIds"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1016
    const-string/jumbo v9, "personaTypes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1017
    const-string/jumbo v9, "personaNames"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1019
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaIds"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1020
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaTypes"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1021
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaNames"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1025
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1027
    .local v0, "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    array-length v9, v4

    if-lez v9, :cond_3

    .line 1030
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_1

    .line 1031
    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1034
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1035
    .local v7, "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1037
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_2
    invoke-static {}, Lcom/samsung/android/secretmode/SecretModeManager;->isPersonalPageMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1040
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .end local v3    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_3
    const-string v9, "KnoxIdNamePair"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    .end local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_4
    :goto_1
    return-void

    .line 1045
    .restart local v1    # "bd1":Landroid/os/Bundle;
    .restart local v4    # "personaIds":[I
    .restart local v5    # "personaNames":[Ljava/lang/String;
    .restart local v6    # "personaTypes":[Ljava/lang/String;
    .restart local v8    # "resp":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 1046
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1049
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_5
    const/16 v9, 0x64

    if-lt p2, v9, :cond_4

    .line 1051
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1052
    .restart local v7    # "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1054
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1056
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1057
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1393
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1395
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 755
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 757
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 762
    :goto_0
    return-object v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1443
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1445
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addPackageToInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1339
    const/4 v1, 0x0

    .line 1340
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1342
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1347
    :cond_0
    :goto_0
    return v1

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminUnLockPersona(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1351
    const/4 v1, 0x0

    .line 1352
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1354
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->adminUnLockPersona(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1359
    :cond_0
    :goto_0
    return v1

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminUnLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAppListForPersona(Landroid/os/PersonaManager$AppType;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I

    .prologue
    .line 1577
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1579
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->clearAppListForPersona(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clearAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyFileBNR(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 1146
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.copyFileBNR() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1148
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1152
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_0
    return v2

    .line 1149
    :catch_0
    move-exception v1

    .line 1150
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.copyFileBNR(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "handlerApkUri"    # Landroid/net/Uri;
    .param p8, "setupWizardApkUri"    # Landroid/net/Uri;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/os/IPersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 290
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v9

    .line 287
    .local v9, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not create a user"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v9    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 1158
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.deleteFile() ContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1160
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1164
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_0
    return v2

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.deleteFile(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1282
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1284
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->disablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1290
    :goto_0
    return v1

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to disablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1290
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1298
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1300
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->enablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1306
    :goto_0
    return v1

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to enablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1306
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public exists(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 562
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 564
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->exists(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 569
    :goto_0
    return v1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public forceRollup(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 632
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "about to force switch to owner!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getParentUserForCurrentPersona()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/PersonaManager;->switchPersona(I)Z

    .line 638
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1169
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1171
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getAdminUidForPersona()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getAdminUidForPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1177
    :goto_0
    return v1

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getAdminUidForPersona id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersonaManager$AppType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1426
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1428
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1433
    :goto_0
    return-object v1

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1433
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 8
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "mRCPGlobalContactsDir":Landroid/content/IRCPGlobalContactsDir;
    const/4 v3, 0x0

    .line 772
    .local v3, "result":Landroid/content/CustomCursor;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "PM.getCallerInfo()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v5, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "rcp"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 775
    .local v1, "rcpm":Landroid/os/RCPManager;
    if-nez v1, :cond_0

    .line 776
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received mRCPGlobalContactsDir as null from bridge manager: rcpm == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_0
    return-object v4

    .line 780
    :cond_0
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v0

    .line 781
    if-nez v0, :cond_1

    .line 782
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received result as null from bridge manager for getCallerInfo: mRCPGlobalContactsDir == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 787
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/content/IRCPGlobalContactsDir;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v3

    .line 788
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PM.getCallerInfo(): Received result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 789
    goto :goto_0

    .line 790
    :catch_0
    move-exception v2

    .line 791
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t complete call to getCallerInfo , inside PersonaManager with exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentPersonaForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 451
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getCurrentPersonaForUser(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 458
    .end local p1    # "userId":I
    :cond_0
    :goto_0
    return p1

    .line 454
    .restart local p1    # "userId":I
    :catch_0
    move-exception v0

    .line 455
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get current persona for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1562
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1564
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getDisabledHomeLaunchers(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1569
    :goto_0
    return-object v1

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getDisabledHomeLaunchers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyguardShowState(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1772
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1774
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardShowState for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getKeyguardShowState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1780
    :goto_0
    return v1

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1780
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNormalizedState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 642
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 644
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getNormalizedState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    return v1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1609
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1611
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1616
    :goto_0
    return-object v1

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPackagesFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1616
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentId(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 408
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getParentId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 415
    :goto_0
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getParentUserForCurrentPersona()I
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 370
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getParentUserForCurrentPersona()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 375
    :goto_0
    return v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent of persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1620
    const/4 v1, 0x0

    .line 1621
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1623
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getPasswordHint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2}, Landroid/os/IPersonaManager;->getPasswordHint()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1629
    :cond_0
    :goto_0
    return-object v1

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to getPasswordHint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPersonaBackgroundTime(I)J
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1113
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1115
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaBackgroundTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1120
    :goto_0
    return-wide v1

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getPersonaBackgroundTime , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 533
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 535
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 540
    :goto_0
    return-object v1

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1132
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1134
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getPersonaIdentification()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIdentification(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1140
    :goto_0
    return-object v1

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getPersonaIdentification id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIds()[I
    .locals 3

    .prologue
    .line 1364
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1366
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPersonaIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1371
    :goto_0
    return-object v1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPersonaIds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 397
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaSamsungAccount(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 498
    :goto_0
    return-object v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 735
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaService() name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_3

    .line 737
    const-string/jumbo v0, "persona_state_manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Landroid/os/PersonaStateManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_state_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaStateManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaStateHandler;)V

    .line 750
    :goto_0
    return-object v0

    .line 740
    :cond_0
    const-string/jumbo v0, "persona_file_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    new-instance v0, Landroid/os/PersonaFileManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_file_system"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaFileManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaFileHandler;)V

    goto :goto_0

    .line 743
    :cond_1
    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    goto :goto_0

    .line 746
    :cond_2
    const-string/jumbo v0, "persona_lock_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    new-instance v0, Landroid/os/PersonaLockSettingsManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaLockSettingsManager;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;)V

    goto :goto_0

    .line 750
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersonaState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 583
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 590
    :goto_0
    return v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 473
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 475
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 480
    :goto_0
    return-object v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 350
    :goto_0
    return-object v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 3
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .locals 3
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getPersonasForCreator(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the personas for a creator uid "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonasForUser(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->getPersonasForUser(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    :goto_0
    return-object v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneCaller()I
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPhoneCaller()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .prologue
    .line 798
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in getRCPInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 800
    .local v1, "rcpm":Landroid/os/RCPManager;
    const/4 v0, 0x0

    .line 801
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v1, :cond_0

    .line 802
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 803
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 807
    :goto_0
    return-object v2

    .line 806
    :cond_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScreenOffTime(I)J
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 1513
    const-wide/16 v1, 0x1388

    .line 1514
    .local v1, "screenOffTime":J
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v3, :cond_0

    .line 1516
    :try_start_0
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->getScreenOffTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :cond_0
    :goto_0
    return-wide v1

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to screenOffTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getShortcutMode(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1327
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1329
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, getShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1335
    :goto_0
    return v1

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .locals 4
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1206
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1208
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserManagedPersonas() excludeDying is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getUserManagedPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1214
    :goto_0
    return-object v1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed getUserManagedPersonas()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleHomeShow()Z
    .locals 3

    .prologue
    .line 1269
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, handleHomeShow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->handleHomeShow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1274
    :goto_0
    return v1

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get handleHomeShow "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1274
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public installApplications(ILjava/util/List;)Z
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 666
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, installDefaultApplications(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->installApplications(ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not install default apps into persona with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 4

    .prologue
    .line 1665
    const/4 v1, 0x0

    .line 1666
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1668
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "isKioskContainerExistOnDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1674
    :cond_0
    :goto_0
    return v1

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to isKioskContainerExistOnDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isKioskModeEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1651
    const/4 v1, 0x0

    .line 1652
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1654
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "isKioskModeEnabled  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->isKioskModeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1660
    :cond_0
    :goto_0
    return v1

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to isKioskModeEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1593
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1595
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1600
    :goto_0
    return v1

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isPackageInInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPersonaActivated()Z
    .locals 7

    .prologue
    .line 594
    const/4 v2, 0x0

    .line 596
    .local v2, "isKnoxActive":Z
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 598
    .local v5, "personaIds":[I
    if-eqz v5, :cond_0

    .line 599
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    .line 600
    .local v4, "personaId":I
    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 601
    const/4 v2, 0x1

    .line 607
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "personaId":I
    :cond_0
    return v2

    .line 599
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "personaId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isSessionExpired(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1251
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1253
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSessionExpired() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isSessionExpired(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1259
    :goto_0
    return v1

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public lockPersona(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1240
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1242
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->lockPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 1182
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1184
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->markForRemoval(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "markForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyKeyguardShow(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 1756
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1758
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyKeyguardShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is shown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to notifyKeyguardShow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSentinelActivityResumed()Z
    .locals 3

    .prologue
    .line 1697
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1699
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->onSentinelActivityResumed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1704
    :goto_0
    return v1

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not handle sentinel activity resuming"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1704
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .locals 7
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_0

    .line 1549
    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1550
    :catch_0
    move-exception v6

    .line 1551
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to onWakeLockChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshTimer(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1526
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1528
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->refreshTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to refreshTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/IBinder;
    .param p3, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 691
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 693
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerHandler(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register Handler, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerObserver(ILandroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 713
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 715
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->registerOutsideObserver(ILandroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerObserver(Landroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 702
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 704
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerObserver(Landroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 295
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .locals 3
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 257
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerUser(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerUser(Landroid/content/pm/IPersonaCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1410
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1412
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removeAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1459
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1461
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1462
    :catch_0
    move-exception v0

    .line 1463
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removePackageFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePersona(I)I
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 329
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 331
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->removePersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove Persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x4b1

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1472
    const/4 v1, 0x0

    .line 1473
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1475
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->resetPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1480
    :cond_0
    :goto_0
    return v1

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 653
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->resetPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 660
    :goto_0
    return v1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not reset the persona "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetPersonaOnReboot(IZ)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1712
    const/4 v1, 0x0

    .line 1713
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1715
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetPersonaOnReboot  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1721
    :cond_0
    :goto_0
    return v1

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPersonaOnReboot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rollBackToPersona(I)V
    .locals 4
    .param p1, "parentId"    # I

    .prologue
    .line 1229
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1231
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, rollBackToPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->rollBackToPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute rollBackToPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rollUpToParent(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1218
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1220
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, rollUpToParent() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->rollUpToParent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute rollUpToParent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1489
    const/4 v1, 0x0

    .line 1490
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1492
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->savePasswordInTima(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1497
    :cond_0
    :goto_0
    return v1

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to savePasswordInTima"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBackPressed(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z

    .prologue
    .line 1684
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1686
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setBackPressed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    :cond_0
    :goto_0
    return-void

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set back pressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentPersonaForUser(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 462
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setCurrentPersonaForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set current persona for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFsMountState(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 621
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 623
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setFsMountState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setFsMountState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .locals 4
    .param p1, "timeMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 1502
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1504
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setMaximumScreenOffTimeoutFromDeviceAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "personaHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 517
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 519
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 442
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaSamsungAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaState(II)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "state"    # I

    .prologue
    .line 573
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 575
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "personaType"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaType(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPhoneCaller(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 419
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setPhoneCaller(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShortcutMode(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isShortcutMode"    # Z

    .prologue
    .line 1316
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1318
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, setShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shortcut mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setShortcutMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get setShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSuperLock(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "setLock"    # Z

    .prologue
    .line 611
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 613
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setSuperLock(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setSuperLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public settingSyncAllowed(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1375
    const/4 v1, 0x0

    .line 1376
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1378
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->settingSyncAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1383
    :cond_0
    :goto_0
    return v1

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute settingSyncAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchPersona(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 307
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 309
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->switchPersona(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 314
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 318
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 325
    :goto_0
    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to persona and launch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 676
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 677
    .local v1, "result":I
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 679
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in PersonaManager, unInstallSystemApplications(), calling service API"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->unInstallSystemApplications(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 685
    :cond_0
    :goto_0
    return v1

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not uninstall system package into persona with exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmarkForRemoval(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1194
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1196
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmarkForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unmarkForRemoval(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed unmarkForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 724
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 726
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, unregisterObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not unregister observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updatePersonaInfo(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .param p4, "creatorUid"    # I

    .prologue
    .line 1737
    const/4 v1, 0x0

    .line 1738
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1740
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IPersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1746
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePersonaInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return v1

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to updatePersonaInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public userActivity(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 1536
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1538
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->userActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to userActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
