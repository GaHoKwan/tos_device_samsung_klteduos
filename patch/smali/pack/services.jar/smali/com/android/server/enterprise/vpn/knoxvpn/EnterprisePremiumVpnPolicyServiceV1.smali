.class public Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
.super Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;
.source "EnterprisePremiumVpnPolicyServiceV1.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$FirewallRule;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$DatabaseColumnValues;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnReceiver;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;
    }
.end annotation


# static fields
.field private static final ACTION_MOCANA_FIPSVPN_SERVICE:Ljava/lang/String; = "com.mocana.vpn.BIND_MOCANA_SERVICE"

.field private static final ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.vpndialogs"

.field private static final ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vpndialogs.EnterpriseVpnError"

.field private static final ADD:Ljava/lang/String; = " add "

.field private static final BLACKHOLE_PRIORITY:Ljava/lang/String; = " "

.field private static final BLOCKING_RULE_PRIORITY:Ljava/lang/String; = " "

.field private static BLOCK_APP_TRAFFIC:Ljava/lang/String; = null

.field private static final BLOCK_MARK:Ljava/lang/String; = "100"

.field private static final CAC_AUTHENTICATION:I = 0x6

.field private static final CERTIFICATE_AUTHENTICATION:I = 0x1

.field private static final CMD:Ljava/lang/String; = "command"

.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final CONTAINER_REMOVAL_INTENT:Ljava/lang/String; = "enterprise.container.uninstalled"

.field private static final DBG:Z

.field private static final DEL:Ljava/lang/String; = " del "

.field private static final DELIMITER:Ljava/lang/String; = " ; "

.field private static final DNS_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/dnsproperties.ini"

.field private static final FIPS:I = 0x1

.field private static final FIPS_ERROR:I = -0x1

.field private static final GET_STATUS_IS_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field private static final GET_STATUS_IS_CONNECTING:Ljava/lang/String; = "CONNECTING"

.field private static final GET_STATUS_IS_DISCONNECTING:Ljava/lang/String; = "DISCONNECTING"

.field private static final GET_STATUS_IS_FAILED:Ljava/lang/String; = "FAILED"

.field private static final GET_STATUS_IS_IDLE:Ljava/lang/String; = "IDLE"

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final IP4_ROUTE_CMD:Ljava/lang/String; = "ip route"

.field private static final IP4_RULE_CMD:Ljava/lang/String; = "ip rule"

.field private static final IP4_TABLE_CMD:Ljava/lang/String; = "iptables"

.field private static final IP6_ROUTE_CMD:Ljava/lang/String; = "ip route -6"

.field private static final IP6_RULE_CMD:Ljava/lang/String; = "ip rule -6"

.field private static final IP6_TABLE_CMD:Ljava/lang/String; = "ip6tables"

.field private static final IPV4:I = 0x4

.field private static final IPV6:I = 0x6

.field private static final IP_RULE_PRIORITY:Ljava/lang/String; = " "

.field private static final MAP_KEY_ERRORSTRING:Ljava/lang/String; = "errorString"

.field private static final MAP_KEY_EXTRA_REPLACING:Ljava/lang/String; = "new_install_or_update"

.field private static final MAP_KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field private static final MAP_KEY_PROFILENAME:Ljava/lang/String; = "profileName"

.field private static final MAP_KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final MAP_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MAX_DNS_SERVERS:I = 0x4

.field private static final MOCANA_SERVICE_PACKAGE:Ljava/lang/String; = "com.mocana.vpn.android"

.field private static final NON_FIPS:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "VPN_ERROR_RETRY"

.field private static final NO_ERROR_STOP_CONNECTION_CALLBACK:Ljava/lang/String; = "No Error"

.field private static final PROFILE_MAX_CHARACTERS:I = 0xf

.field private static final RULE_APPEND:I = 0x0

.field private static final RULE_DELETE:I = 0x1

.field private static final SET_FIPS:Z = true

.field private static final SET_NONFIPS:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final VPN_CALLBACK_STATE_START:I = 0x0

.field private static final VPN_CALLBACK_STATE_STOP:I = 0x1

.field private static final VPN_ERRORED_PROFILE_INFO:Ljava/lang/String; = "vpn_error_profile_info"

.field private static final VPN_ERROR_MESSAGE:Ljava/lang/String; = "vpn_error_message"

.field private static final VPN_ERROR_TITLE:Ljava/lang/String; = "vpn_error_title"

.field private static final VPN_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_VPN"

.field private static final VPN_RETRY_CALLBACK_ACTION:Ljava/lang/String; = "com.samsung.android.mdm.VPN_RETRY_CALLBACK"

.field private static kvpn_install_type:Z

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field cMocanaFipsConnect:Landroid/content/ServiceConnection;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConnectionManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mKnoxTunInterfacePrefix:Ljava/lang/String;

.field private mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

.field private mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final packageNameVpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final profileNameVpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final uidIptableBlockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uidIptableRouteMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    .line 133
    const-string v0, "EnterprisePremiumVpnPolicyServiceV1"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    .line 151
    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->kvpn_install_type:Z

    .line 157
    const-string v0, "block_traffic"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    .line 1578
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;-><init>()V

    .line 138
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    .line 178
    const-string v0, "knoxv_"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 180
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mBitmap:Landroid/graphics/Bitmap;

    .line 321
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cMocanaFipsConnect:Landroid/content/ServiceConnection;

    .line 233
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v1, "In Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    .line 235
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 236
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->uidIptableBlockMap:Ljava/util/HashMap;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->uidIptableRouteMap:Ljava/util/HashMap;

    .line 244
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 245
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 246
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->setupIntentFilter()V

    .line 247
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->initLooperThread()V

    .line 248
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->initializeHashtable()V

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->runAllVpnService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->handleMocanaServiceDisconnect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIptableBlockingRulesAfterBootComplete()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->clearDatabaseAfterContainerRemoval(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getRunningPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpRouteAndPolicyRules(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cancelNotification()V

    return-void
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpRouteAndPolicyRules(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->kvpn_install_type:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 128
    sput-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->kvpn_install_type:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isPackageRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createVpnFromDatabase()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->updateIpBlockingRule(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpBlockingRule(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkVpnModeOfOperationAfterNewinstall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkPackagesOnStartup()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printVpnState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private addIpBlockingRule(Ljava/lang/String;)V
    .locals 4
    .param p1, "calling_method"    # Ljava/lang/String;

    .prologue
    .line 3382
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIpBlockingRule API is called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3384
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ip rule add blackhole fwmark 100 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v2, "Adding blocking rules"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->runSingleCommand(Ljava/lang/String;)V

    .line 3387
    return-void
.end method

.method private addIpPolicyRules(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # I
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3281
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add iptable route : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3283
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez p3, :cond_2

    .line 3284
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add iptable route : Invalid interface name received:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    :cond_1
    :goto_0
    return-void

    .line 3286
    :cond_2
    const/4 v4, 0x6

    if-ne p1, v4, :cond_3

    const-string v0, "ip rule -6"

    .line 3288
    .local v0, "IP_RULE_CMD":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0xa

    .line 3289
    .local v3, "tableNum":I
    if-ltz v3, :cond_1

    const/16 v4, 0xff

    if-gt v3, v4, :cond_1

    .line 3292
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3293
    .local v2, "tableID":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " blackhole fwmark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3294
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fwmark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->runSingleCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 3286
    .end local v0    # "IP_RULE_CMD":Ljava/lang/String;
    .end local v2    # "tableID":Ljava/lang/String;
    .end local v3    # "tableNum":I
    :cond_3
    const-string v0, "ip rule"

    goto :goto_1
.end method

.method private addIpRoute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # I
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3300
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add iptable route : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3302
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez p3, :cond_2

    .line 3303
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add iptable route : Invalid interface name received:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :cond_1
    :goto_0
    return-void

    .line 3305
    :cond_2
    const/4 v4, 0x6

    if-ne p1, v4, :cond_3

    const-string v0, "ip route -6"

    .line 3307
    .local v0, "IP_ROUTE_CMD":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0xa

    .line 3308
    .local v3, "tableNum":I
    if-ltz v3, :cond_1

    const/16 v4, 0xff

    if-gt v3, v4, :cond_1

    .line 3311
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3312
    .local v2, "tableID":Ljava/lang/String;
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 3313
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0.0.0.0/0 table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dev "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->runSingleCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 3305
    .end local v0    # "IP_ROUTE_CMD":Ljava/lang/String;
    .end local v2    # "tableID":Ljava/lang/String;
    .end local v3    # "tableNum":I
    :cond_3
    const-string v0, "ip route"

    goto :goto_1

    .line 3316
    .restart local v0    # "IP_ROUTE_CMD":Ljava/lang/String;
    .restart local v2    # "tableID":Ljava/lang/String;
    .restart local v3    # "tableNum":I
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ::/0 table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dev "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private addIpRouteAndPolicyRules(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "calling_method"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 3235
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIpRouteAndPolicyRules is called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :cond_0
    const-string v0, " add "

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpPolicyRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 3238
    const-string v0, " add "

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    .line 3240
    const-string v0, " add "

    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpPolicyRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 3241
    const-string v0, " add "

    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    .line 3242
    return-void
.end method

.method private addIpTableMangleNatRules(IILjava/lang/String;)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "uid_app"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3329
    if-nez p3, :cond_0

    .line 3330
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "addIpTableMangleNatRules : Interface name null. To apply blocking rule:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    sget-object p3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    .line 3333
    :cond_0
    const/4 v4, 0x6

    if-ne p1, v4, :cond_1

    const-string v0, "ip6tables"

    .line 3334
    .local v0, "IP_TABLE_CMD":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3336
    .local v3, "uid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3338
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3339
    const-string v2, "100"

    .line 3344
    .local v2, "tableID":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -N "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3346
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -F "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -A "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j CONNMARK --set-mark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -A "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -m connmark --mark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j CONNMARK --restore-mark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3354
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -D OUTPUT -m owner --uid-owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3355
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -D OUTPUT -m owner --uid-owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j RETURN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -I OUTPUT -m owner --uid-owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j RETURN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3358
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t mangle -I OUTPUT -m owner --uid-owner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -t nat -A POSTROUTING -o "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j MASQUERADE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->runSingleCommand(Ljava/lang/String;)V

    .line 3362
    return-void

    .line 3333
    .end local v0    # "IP_TABLE_CMD":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "tableID":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    const-string v0, "iptables"

    goto/16 :goto_0

    .line 3341
    .restart local v0    # "IP_TABLE_CMD":Ljava/lang/String;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "uid":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tableID":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private addIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid_app"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "calling_method"    # Ljava/lang/String;

    .prologue
    .line 3255
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIpTableMangleNatRules is called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpTableMangleNatRules(IILjava/lang/String;)V

    .line 3257
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpTableMangleNatRules(IILjava/lang/String;)V

    .line 3258
    return-void
.end method

.method private addIptableBlockingRulesAfterBootComplete()V
    .locals 12

    .prologue
    .line 2460
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "addIptableBlockingRulesAfterBootComplete is reached inintally "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 2463
    .local v7, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 2464
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .line 2465
    .local v4, "length":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    .line 2466
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 2467
    .local v8, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-eqz v8, :cond_5

    .line 2468
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2469
    .local v5, "list":Ljava/util/ArrayList;
    if-eqz v5, :cond_6

    .line 2470
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 2471
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 2472
    .local v6, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    if-eqz v6, :cond_3

    .line 2473
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addIptableBlockingRulesAfterBootComplete: uid is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "and profile name is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v9

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const-string v11, "addIptableBlockingRulesAfterBootComplete"

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 2470
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2476
    :cond_3
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "List contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2484
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v4    # "length":I
    .end local v5    # "list":Ljava/util/ArrayList;
    .end local v6    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catch_0
    move-exception v0

    .line 2485
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 2481
    .restart local v1    # "i":I
    .restart local v3    # "keys":[Ljava/lang/Object;
    .restart local v4    # "length":I
    .restart local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_5
    :try_start_1
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "ProfileNameVpnEntry contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2465
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;)V
    .locals 8
    .param p1, "state"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .prologue
    .line 1765
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->syncObj:Ljava/lang/Object;

    monitor-enter v7

    .line 1767
    if-eqz p1, :cond_2

    .line 1768
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1769
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 1770
    .local v4, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 1772
    .local v5, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-nez v5, :cond_0

    .line 1773
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .end local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    invoke-direct {v5, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V

    .line 1774
    .restart local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1775
    .local v1, "list":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 1776
    .local v0, "length":I
    if-eqz v1, :cond_1

    .line 1777
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1779
    :cond_1
    if-eqz v0, :cond_5

    .line 1780
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    .end local v0    # "length":I
    .end local v1    # "list":Ljava/util/ArrayList;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_2
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 1789
    :cond_3
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    .line 1790
    :cond_4
    monitor-exit v7

    .line 1791
    return-void

    .line 1782
    .restart local v0    # "length":I
    .restart local v1    # "list":Ljava/util/ArrayList;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profileName":Ljava/lang/String;
    .restart local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->setVpnStateList(Ljava/util/ArrayList;)V

    .line 1785
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1790
    .end local v0    # "length":I
    .end local v1    # "list":Ljava/util/ArrayList;
    .end local v2    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private addVpnProfileToDatabase(ILcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;)V
    .locals 9
    .param p1, "admin_uid"    # I
    .param p2, "eVpn"    # Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    .prologue
    .line 425
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v3, "Authentication"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    const-string v3, "BackupServer_status"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupServerEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    const-string v3, "BackupServer"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupVPNServer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v3, "DPD"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->deadPeerDetect:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 431
    const-string v3, "GroupName"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->groupname:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v3, "IPSEC_Type"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->iPSecIDType:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const-string v3, "IKE"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->ikeVersion:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string v3, "Default_Route"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isDefaultrouteEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 435
    const-string v3, "User_Auth"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isUserAuthEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 436
    const-string v3, "Mobike"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->mobikeEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    const-string v3, "DH_Group"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1DHGroup:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const-string v3, "Phase_Mode"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1Mode:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v3, "PFS"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->pfs:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 440
    const-string v3, "PSK"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->psk:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v3, "SuiteBType"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->suiteBType:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const-string v3, "Host"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v3, "profile"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v3, "Username"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->username:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v3, "Password"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->password:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v3, "Split_Tunnel_type"

    iget v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->splitTunnelType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v3, "Forward_Routes"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->arrayListConverterToByteArray(Ljava/util/List;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 449
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Vpn_table"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 451
    .local v2, "status":Z
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add profile in database : status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "profile Name is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v2    # "status":Z
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add profile in database : Error at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private arrayListConverterToByteArray(Ljava/util/List;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 458
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 459
    .local v2, "dos":Ljava/io/DataOutputStream;
    if-nez p1, :cond_1

    .line 460
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v8, "The arrayListConverterToByteArray routeList value is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    const/4 v7, 0x0

    .line 480
    :goto_0
    return-object v7

    .line 464
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 466
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 467
    .local v6, "route":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrayListConverterToByteArray value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_2
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 470
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "route":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .line 471
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 475
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 480
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_0

    .line 474
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 475
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .line 479
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 473
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    .line 474
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 475
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 473
    :cond_6
    :goto_6
    throw v7

    .line 476
    :catch_1
    move-exception v4

    .line 477
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrayListConverterToByteArray  exception value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 476
    :catch_2
    move-exception v4

    .line 477
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrayListConverterToByteArray  exception value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 476
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v4

    .line 477
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrayListConverterToByteArray  exception value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 473
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":Ljava/util/Iterator;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 470
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2
.end method

.method private byteArrayToArrayListConverter(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "profilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v8, "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 485
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 486
    .local v2, "din":Ljava/io/DataInputStream;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "Vpn_table"

    const-string v11, "profile"

    const-string v12, "Forward_Routes"

    invoke-virtual {v9, v10, v11, p1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 488
    .local v7, "routeBytes":[B
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The byteArrayToArrayListConverter initial value is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    if-nez v7, :cond_3

    .line 490
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "The byteArrayToArrayListConverter routeBytes value is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    const/4 v8, 0x0

    .line 516
    .end local v8    # "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object v8

    .line 493
    .restart local v8    # "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_5

    .line 495
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v7

    if-ge v5, v9, :cond_5

    .line 496
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The byteArrayToArrayListConverter initial value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, v7, v5

    invoke-static {v11}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 499
    .end local v5    # "i":I
    :cond_5
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    .end local v2    # "din":Ljava/io/DataInputStream;
    .local v3, "din":Ljava/io/DataInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v9

    if-lez v9, :cond_7

    .line 502
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "route":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The byteArrayToArrayListConverter value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_6
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 506
    .end local v6    # "route":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "din":Ljava/io/DataInputStream;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    move-object v0, v1

    .line 507
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 510
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 511
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 512
    :catch_1
    move-exception v4

    .line 513
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 510
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "din":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "din":Ljava/io/DataInputStream;
    :cond_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 511
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_4
    move-object v2, v3

    .end local v3    # "din":Ljava/io/DataInputStream;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    move-object v0, v1

    .line 515
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_0

    .line 509
    :catchall_0
    move-exception v9

    .line 510
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 511
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 509
    :cond_9
    :goto_6
    throw v9

    .line 512
    :catch_2
    move-exception v4

    .line 513
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 512
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "din":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "din":Ljava/io/DataInputStream;
    :catch_3
    move-exception v4

    .line 513
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 509
    .end local v3    # "din":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "din":Ljava/io/DataInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "din":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "din":Ljava/io/DataInputStream;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 506
    :catch_4
    move-exception v4

    goto/16 :goto_3

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3
.end method

.method private cancelNotification()V
    .locals 5

    .prologue
    .line 2327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2328
    .local v0, "identity":J
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const-string v3, "VPN_ERROR_RETRY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 2329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2330
    return-void
.end method

.method private checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1168
    const/4 v2, 0x0

    .line 1169
    .local v2, "isAdminApplication":Z
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1170
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, -0x1

    .line 1172
    .local v4, "uid":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1173
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1174
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check system UID : uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_1

    .line 1176
    const/4 v2, 0x1

    .line 1181
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v2

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private checkIfAdminHasVpnPermission(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 207
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "packageNameList":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 209
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 210
    .local v5, "packagename":Ljava/lang/String;
    invoke-virtual {v6, p2, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 211
    .local v1, "checkVpnPermission":I
    if-nez v1, :cond_0

    .line 212
    const/4 v7, 0x1

    .line 216
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "checkVpnPermission":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "packagename":Ljava/lang/String;
    :goto_1
    return v7

    .line 209
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "checkVpnPermission":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "packagename":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "checkVpnPermission":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "packagename":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private checkIfAnyAdminHasFipsMode()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1497
    const/4 v3, -0x1

    .line 1498
    .local v3, "fips_value":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "Fips_Vpn_table"

    invoke-virtual {v6, v7, v8, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1500
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1

    .line 1501
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1502
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "fips_mode"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1503
    if-ne v3, v5, :cond_0

    .line 1511
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_0
    return v5

    .line 1508
    :catch_0
    move-exception v2

    .line 1509
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check to admin has fips : Failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private checkIfMocanaPackageInstalled(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 306
    .local v3, "pManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 308
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 309
    .local v2, "pInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 310
    .local v0, "applicationUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-nez v5, :cond_0

    .line 311
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The uid of the application is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "and the owner of the application is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v4, 0x1

    .line 318
    .end local v0    # "applicationUid":I
    .end local v2    # "pInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v4

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package installed check: Package Name not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfProfileDbIsEmpty()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    .line 3405
    const/4 v2, 0x0

    .line 3407
    .local v2, "profilePresent":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "Vpn_table"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profile"

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3409
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_0

    move v2, v3

    .line 3416
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2    # "profilePresent":Z
    :goto_0
    return v2

    .line 3412
    .restart local v2    # "profilePresent":Z
    :catch_0
    move-exception v1

    .line 3413
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error at checkIfDbIsEmpty API"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check whether the VPN Profile table is empty or not is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I
    .locals 13
    .param p1, "profieName"    # Ljava/lang/String;

    .prologue
    .line 1514
    const/4 v5, -0x1

    .line 1516
    .local v5, "success":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "Vpn_table"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profile"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Default_Route"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1518
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_2

    .line 1519
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1520
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "Default_Route"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->convertIntegerToBooleanInDatabase(I)Z

    move-result v0

    .line 1521
    .local v0, "checkIfDefaultRouteEnabled":Z
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The default route value is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    :cond_0
    if-eqz v0, :cond_1

    .line 1523
    const/4 v5, 0x1

    goto :goto_0

    .line 1525
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1529
    .end local v0    # "checkIfDefaultRouteEnabled":Z
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 1530
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfProfileHasDefaultRouteEnabled: Failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return v5
.end method

.method private checkPackagesOnStartup()V
    .locals 10

    .prologue
    .line 3202
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 3203
    .local v6, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 3204
    .local v2, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .line 3205
    .local v3, "length":I
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v8, "check to package on startup : Verifying installed packages"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 3207
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    aget-object v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 3208
    .local v4, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    if-eqz v4, :cond_1

    .line 3209
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3210
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3211
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check to package on startup : Calling removeVpn for package = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3206
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3216
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/Object;
    .end local v3    # "length":I
    .end local v4    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v6    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 3217
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check to package on startup : Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private declared-synchronized checkVpnModeOfOperationAfterNewinstall()Z
    .locals 6

    .prologue
    .line 2221
    monitor-enter p0

    const/4 v0, 0x0

    .line 2222
    .local v0, "checkIfAnyAdminHasFips":Z
    const/4 v1, -0x1

    .line 2224
    .local v1, "currentVpnMode":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v3, :cond_0

    .line 2225
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v1

    .line 2226
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check vpn mode after new install : The vpn mode and current vpn mode of operation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfAnyAdminHasFipsMode()Z

    move-result v0

    .line 2229
    if-eqz v0, :cond_1

    .line 2230
    if-nez v1, :cond_1

    .line 2231
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->switchVpnMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    :cond_1
    :goto_0
    :try_start_1
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check vpn mode after new install : The vpn mode and final value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2238
    :cond_2
    monitor-exit p0

    return v0

    .line 2234
    :catch_0
    move-exception v2

    .line 2235
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check vpn mode after new install : Error at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2221
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private clearDatabaseAfterContainerRemoval(I)V
    .locals 8
    .param p1, "container_id"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2502
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2503
    .local v0, "idValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "EnterpriseVpn"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "CID"

    aput-object v5, v4, v6

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 2505
    .local v1, "success":Z
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear database after container remove : result  is called and the removal is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    return-void
.end method

.method private convertIntegerToBooleanInDatabase(I)Z
    .locals 4
    .param p1, "databaseValue"    # I

    .prologue
    const/4 v0, 0x1

    .line 2241
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert int to boolean : before is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_0
    if-ne p1, v0, :cond_2

    .line 2243
    .local v0, "success":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert int to boolean : after  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_1
    return v0

    .line 2242
    .end local v0    # "success":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNotification()V
    .locals 29

    .prologue
    .line 2258
    sget-object v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v27, "In create notification : creating notification"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 2260
    .local v16, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getRunningPackages()Ljava/util/List;

    move-result-object v19

    .line 2262
    .local v19, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2263
    .local v7, "entry":Ljava/lang/String;
    sget-boolean v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v26, :cond_1

    sget-object v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "In create notification : KeySet key :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 2265
    .local v24, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v17

    .line 2266
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    const/4 v15, 0x0

    .line 2267
    .local v15, "isAnyPackageRunning":Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 2268
    .local v21, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    sget-boolean v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v26, :cond_3

    sget-object v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "In create notification : Running through vpnstate to test : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getCid()I

    move-result v26

    if-lez v26, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getCid()I

    move-result v26

    if-nez v26, :cond_2

    .line 2271
    :cond_5
    sget-boolean v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v26, :cond_6

    sget-object v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "In create notification : Met true dont remove the profile : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    :cond_6
    const/4 v15, 0x1

    .line 2276
    .end local v21    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    :cond_7
    if-nez v15, :cond_0

    .line 2277
    sget-object v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "In create notification : Removeing profiles not getting used from map: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2281
    .end local v7    # "entry":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "isAnyPackageRunning":Z
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .end local v24    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catch_0
    move-exception v6

    .line 2283
    .local v6, "e":Ljava/lang/Exception;
    sget-object v26, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "In create notification : Exception: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v26

    if-lez v26, :cond_a

    .line 2286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2287
    .local v12, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x10407cd

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2288
    .local v23, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x10407ce

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2290
    .local v22, "text":Ljava/lang/String;
    const/16 v25, -0x1

    .line 2291
    .local v25, "width":I
    const/4 v8, -0x1

    .line 2292
    .local v8, "height":I
    const/4 v11, 0x0

    .line 2294
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1080027

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2295
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    if-lez v26, :cond_9

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    if-lez v26, :cond_9

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050010

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050010

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 2298
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v11, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2299
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mBitmap:Landroid/graphics/Bitmap;

    .line 2300
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2301
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual {v11, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2302
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2305
    .end local v4    # "c":Landroid/graphics/Canvas;
    :cond_9
    const v20, 0x1080027

    .line 2307
    .local v20, "smallIcon":I
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 2308
    .local v14, "intent":Landroid/content/Intent;
    const-string v26, "com.android.vpndialogs"

    const-string v27, "com.android.vpndialogs.EnterpriseVpnError"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2309
    const-string/jumbo v26, "vpn_error_profile_info"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2311
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    new-instance v26, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v18

    .line 2320
    .local v18, "notification":Landroid/app/Notification;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v26

    const-string v27, "VPN_ERROR_RETRY"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 2321
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2325
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "height":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "identity":J
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v18    # "notification":Landroid/app/Notification;
    .end local v20    # "smallIcon":I
    .end local v22    # "text":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    .end local v25    # "width":I
    :goto_1
    return-void

    .line 2323
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cancelNotification()V

    goto :goto_1
.end method

.method private createNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 2248
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2249
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification()V

    .line 2256
    :cond_0
    :goto_0
    return-void

    .line 2254
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v1, "can not create a notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createVpnFromDatabase()V
    .locals 20

    .prologue
    .line 2129
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v14, "create vpn from database is reached "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_0
    const/4 v1, -0x1

    .line 2132
    .local v1, "adminid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "Vpn_table"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "profile"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "adminUid"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "Authentication"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "BackupServer_status"

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, "BackupServer"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    const-string v19, "DPD"

    aput-object v19, v17, v18

    const/16 v18, 0x6

    const-string v19, "GroupName"

    aput-object v19, v17, v18

    const/16 v18, 0x7

    const-string v19, "IPSEC_Type"

    aput-object v19, v17, v18

    const/16 v18, 0x8

    const-string v19, "IKE"

    aput-object v19, v17, v18

    const/16 v18, 0x9

    const-string v19, "Default_Route"

    aput-object v19, v17, v18

    const/16 v18, 0xa

    const-string v19, "User_Auth"

    aput-object v19, v17, v18

    const/16 v18, 0xb

    const-string v19, "Mobike"

    aput-object v19, v17, v18

    const/16 v18, 0xc

    const-string v19, "DH_Group"

    aput-object v19, v17, v18

    const/16 v18, 0xd

    const-string v19, "Phase_Mode"

    aput-object v19, v17, v18

    const/16 v18, 0xe

    const-string v19, "PFS"

    aput-object v19, v17, v18

    const/16 v18, 0xf

    const-string v19, "PSK"

    aput-object v19, v17, v18

    const/16 v18, 0x10

    const-string v19, "SuiteBType"

    aput-object v19, v17, v18

    const/16 v18, 0x11

    const-string v19, "Host"

    aput-object v19, v17, v18

    const/16 v18, 0x12

    const-string v19, "Username"

    aput-object v19, v17, v18

    const/16 v18, 0x13

    const-string v19, "Password"

    aput-object v19, v17, v18

    const/16 v18, 0x14

    const-string v19, "Split_Tunnel_type"

    aput-object v19, v17, v18

    const/16 v18, 0x15

    const-string v19, "CA_Password"

    aput-object v19, v17, v18

    const/16 v18, 0x16

    const-string v19, "User_Password"

    aput-object v19, v17, v18

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2158
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The length of cvList is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_1
    if-eqz v6, :cond_5

    .line 2160
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2161
    .local v5, "cv":Landroid/content/ContentValues;
    new-instance v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    invoke-direct {v8}, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;-><init>()V

    .line 2162
    .local v8, "eVpn":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    const-string v13, "profile"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    .line 2163
    const-string v13, "adminUid"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2164
    const-string v13, "Authentication"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    .line 2165
    const-string v13, "BackupServer_status"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupServerEnabled:Z

    .line 2166
    const-string v13, "BackupServer"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupVPNServer:Ljava/lang/String;

    .line 2167
    const-string v13, "DPD"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->deadPeerDetect:Z

    .line 2168
    const-string v13, "GroupName"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->groupname:Ljava/lang/String;

    .line 2169
    const-string v13, "IPSEC_Type"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->iPSecIDType:I

    .line 2170
    const-string v13, "IKE"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->ikeVersion:I

    .line 2171
    const-string v13, "Default_Route"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isDefaultrouteEnabled:Z

    .line 2172
    const-string v13, "User_Auth"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isUserAuthEnabled:Z

    .line 2173
    const-string v13, "Mobike"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->mobikeEnabled:Z

    .line 2174
    const-string v13, "DH_Group"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1DHGroup:I

    .line 2175
    const-string v13, "Phase_Mode"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1Mode:I

    .line 2176
    const-string v13, "PFS"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->pfs:Z

    .line 2177
    const-string v13, "PSK"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->psk:Ljava/lang/String;

    .line 2178
    const-string v13, "SuiteBType"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->suiteBType:I

    .line 2179
    const-string v13, "Host"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    .line 2180
    const-string v13, "Username"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->username:Ljava/lang/String;

    .line 2181
    const-string v13, "Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->password:Ljava/lang/String;

    .line 2182
    const-string v13, "Split_Tunnel_type"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->splitTunnelType:I

    .line 2183
    iget-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->byteArrayToArrayListConverter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    .line 2184
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_3

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The forwardRoutes is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    const/4 v14, 0x0

    invoke-interface {v13, v8, v14, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->createConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;I)Z

    move-result v10

    .line 2186
    .local v10, "success":Z
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_4

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "vpn profile has been retrieved after uninstall"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "and its result is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_4
    const/4 v13, 0x1

    if-ne v10, v13, :cond_6

    iget v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 2188
    const-string v13, "CA_Certificate"

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 2189
    .local v3, "ca_certiticate":[B
    const-string v13, "CA_Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2190
    .local v4, "ca_password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v3, v4, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    .line 2191
    .local v2, "caCertificateSuccess":Z
    const-string v13, "User_Certificate"

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    .line 2192
    .local v11, "user_certiticate":[B
    const-string v13, "User_Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2193
    .local v12, "user_password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v11, v12, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2201
    .end local v2    # "caCertificateSuccess":Z
    .end local v3    # "ca_certiticate":[B
    .end local v4    # "ca_password":Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "eVpn":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "success":Z
    .end local v11    # "user_certiticate":[B
    .end local v12    # "user_password":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2202
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_5

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error at create vpn from database Method "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    return-void

    .line 2194
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "eVpn":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "success":Z
    :cond_6
    const/4 v13, 0x1

    if-ne v10, v13, :cond_2

    :try_start_1
    iget v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_2

    .line 2195
    const-string v13, "CA_Certificate"

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 2196
    .restart local v3    # "ca_certiticate":[B
    const-string v13, "CA_Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2197
    .restart local v4    # "ca_password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v3, v4, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private deleteUIDFromPackageData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1928
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enforceEnterpriseVpnPermission()I
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceOwnerOnlyAndEnterpriseVpnPermission()I
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private findUid()I
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 362
    .local v0, "id":I
    return v0
.end method

.method private getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p1, "getColumnValue"    # Ljava/lang/String;
    .param p2, "whereColumnValue"    # Ljava/lang/String;

    .prologue
    .line 2207
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "Vpn_table"

    const-string v4, "profile"

    invoke-virtual {v2, v3, v4, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2209
    .local v0, "certificateInfo":[B
    if-nez v0, :cond_2

    .line 2210
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v3, "get certificate from database : The certificateinfo routeBytes value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_0
    const/4 v0, 0x0

    .line 2218
    .end local v0    # "certificateInfo":[B
    :cond_1
    return-object v0

    .line 2213
    .restart local v0    # "certificateInfo":[B
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_1

    .line 2214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2215
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get certificate from database :  byte value is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v1

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 10
    .param p1, "processResult"    # Ljava/lang/Process;

    .prologue
    .line 3021
    const/16 v6, 0x400

    new-array v4, v6, [B

    .line 3022
    .local v4, "resultBuffer":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3023
    .local v5, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3025
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3027
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3030
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 3031
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3034
    if-eqz v1, :cond_0

    .line 3035
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3041
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : Command result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 3034
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 3035
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 3040
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 3033
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 3034
    :goto_4
    if-eqz v1, :cond_3

    .line 3035
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3033
    :cond_3
    :goto_5
    throw v6

    .line 3037
    :catch_1
    move-exception v0

    .line 3038
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get command result : error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3037
    :catch_2
    move-exception v0

    .line 3038
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3037
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 3038
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3033
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 3030
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private getConnectionManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mConnectionManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mConnectionManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3420
    const/4 v0, 0x0

    .line 3421
    .local v0, "temp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "knoxv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3422
    return-object v0
.end method

.method private getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    if-nez v0, :cond_0

    .line 2490
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->initLooperThread()V

    .line 2492
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    return-object v0
.end method

.method private getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->bindMocanaVpnInterface()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 4

    .prologue
    .line 257
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 259
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService binder value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    if-eqz v0, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_2

    .line 262
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 263
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNotificationManager:Landroid/app/NotificationManager;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getRunningPackages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    const/4 v7, 0x0

    .line 1144
    .local v7, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1145
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1146
    .local v4, "l":Ljava/util/List;
    if-eqz v4, :cond_0

    .line 1147
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .restart local v7    # "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1149
    .local v2, "i":Ljava/util/Iterator;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1151
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v3, v8

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1155
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1156
    .local v5, "pName":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1158
    .end local v5    # "pName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1159
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRunningPackages : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1165
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v7
.end method

.method private getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1961
    const/4 v2, 0x0

    .line 1962
    .local v2, "profileName":Ljava/lang/String;
    const/4 v4, -0x1

    .local v4, "uid":I
    const/4 v5, 0x0

    .line 1963
    .local v5, "cid":I
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "EnterpriseVpn"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "applicationInfo"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "profileName"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "UID_APP"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "CID"

    aput-object v13, v11, v12

    invoke-virtual {v0, v1, v3, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1972
    .local v7, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_2

    .line 1974
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v1, "getting vpn object from database : Cursor not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1976
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v0, "profileName"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1977
    const-string v0, "UID_APP"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1978
    const-string v0, "CID"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1979
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting vpn object from database : Uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Profile:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " packageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_1
    const/4 v0, -0x1

    if-le v4, v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 1981
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v9    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 1984
    :catch_0
    move-exception v8

    .line 1985
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting vpn object from database : Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMocanaServiceDisconnect()V
    .locals 15

    .prologue
    .line 3156
    const/4 v11, 0x0

    .line 3157
    .local v11, "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v13, "handle service disconnect to mocana : Trying to add blocking rules"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    const/4 v7, 0x0

    .line 3159
    .local v7, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v12, "connectivity"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v7

    .line 3160
    const/4 v4, 0x0

    .line 3161
    .local v4, "interfaceName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3162
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3163
    .local v9, "profileName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 3164
    .local v10, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-eqz v10, :cond_4

    .line 3165
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v6

    .line 3166
    .local v6, "list":Ljava/util/ArrayList;
    if-eqz v6, :cond_0

    .line 3167
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3168
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 3169
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 3170
    .restart local v11    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 3171
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3172
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v12

    const-string v13, "handleMocanaServiceDisconnect"

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpRouteAndPolicyRules(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v12

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const-string v14, "handleMocanaServiceDisconnect"

    invoke-direct {p0, v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v12

    invoke-direct {p0, v9, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    .line 3175
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->setState(I)V

    .line 3168
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3178
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3181
    const/4 v12, 0x1

    :try_start_0
    invoke-interface {v7, v9, v12}, Landroid/net/IConnectivityManager;->disconnect(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3185
    :goto_2
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v12, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 3186
    :cond_3
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v12, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    goto :goto_0

    .line 3182
    :catch_0
    move-exception v0

    .line 3183
    .local v0, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handle service disconnect to mocana : Disconnect Failed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3189
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v5    # "length":I
    .end local v6    # "list":Ljava/util/ArrayList;
    :cond_4
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v13, "handle service disconnect to mocana : vpn entry is returned null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3193
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "profileName":Ljava/lang/String;
    .end local v10    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_5
    const/4 v12, 0x0

    :try_start_1
    invoke-interface {v7, v12}, Landroid/net/IConnectivityManager;->disconnectSystemVpn(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3197
    :goto_3
    return-void

    .line 3194
    :catch_1
    move-exception v0

    .line 3195
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handle service disconnect to mocana : disconnect system vpn is Failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private declared-synchronized initLooperThread()V
    .locals 2

    .prologue
    .line 2495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    if-nez v0, :cond_0

    .line 2496
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    .line 2497
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;->start()V

    .line 2498
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v1, "init looper thread called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2500
    :cond_0
    monitor-exit p0

    return-void

    .line 2495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initializeHashtable()V
    .locals 24

    .prologue
    .line 1709
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v19, "init hash table called"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->syncObj:Ljava/lang/Object;

    monitor-enter v19

    .line 1712
    const/4 v10, 0x0

    .line 1714
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v20, "Vpn_table"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1716
    .local v13, "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1718
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v20, "VPN INFO: Old Framework is enabled. Set the system property"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const-string v5, "net.vpn.framework"

    const-string v20, "1.0"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v20, "EnterpriseVpn"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1723
    .local v12, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v7, 0x0

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1724
    .local v6, "profileName":Ljava/lang/String;
    const/4 v8, -0x1

    .local v8, "uid":I
    const/4 v9, 0x0

    .line 1725
    .local v9, "cid":I
    const/4 v4, 0x0

    .line 1726
    .local v4, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    if-eqz v12, :cond_3

    .line 1727
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v20, "init hash table : Cursor not null"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 1729
    .local v11, "cv":Landroid/content/ContentValues;
    const-string v5, "applicationInfo"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1730
    const-string v5, "profileName"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1731
    const-string v5, "CID"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1732
    const-string v5, "UID_APP"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1733
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init hash table : Uid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Profile:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " packageName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init hash table : Adding new entry to hashMap: { uid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", packageName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", profileName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "}"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/4 v5, -0x1

    if-le v8, v5, :cond_1

    .line 1737
    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .end local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1738
    .restart local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1739
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v20, "init hash table : ProfileName found in map. Add to the list."

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 1741
    .local v18, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1742
    .local v17, "profileNameVpnMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    .end local v17    # "profileNameVpnMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1757
    .end local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "cid":I
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catch_0
    move-exception v14

    .line 1758
    .local v14, "e":Ljava/lang/Exception;
    if-eqz v10, :cond_2

    .line 1759
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1760
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init hash table : Exception when reading DB:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1763
    return-void

    .line 1744
    .restart local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "uid":I
    .restart local v9    # "cid":I
    .restart local v11    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v13    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v20, "init hash table : ProfileName not found in Map. Add a new list."

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V

    .line 1748
    .restart local v18    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->setVpnStateList(Ljava/util/ArrayList;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1762
    .end local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "cid":I
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .end local v18    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1754
    .restart local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "uid":I
    .restart local v9    # "cid":I
    .restart local v12    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v13    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_4
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 1755
    :cond_6
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v5, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private insertFipsModeInDatabase(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1463
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1464
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1465
    const-string v3, "fips_mode"

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1466
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Fips_Vpn_table"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1470
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 1467
    :catch_0
    move-exception v1

    .line 1468
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert fips mode in database : Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 1610
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v0, 0x1

    .line 1616
    :goto_0
    return v0

    .line 1615
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 293
    .local v2, "pManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 295
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 296
    .local v1, "pInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    .line 301
    .end local v1    # "pInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package installed check: Package Name not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPackageRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1110
    const/4 v2, 0x0

    .line 1111
    .local v2, "result":Z
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check for package running  : Checking for package :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getRunningPackages()Ljava/util/List;

    move-result-object v3

    .line 1113
    .local v3, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 1114
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1115
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 1116
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1117
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check for package running  : Matching running package :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    const/4 v2, 0x1

    .line 1115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1122
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_3
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "Package list empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_4
    return v2
.end method

.method private isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1127
    .local p2, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1128
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1129
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1130
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check for package running  : Matching running package :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    const/4 v2, 0x1

    .line 1136
    .end local v0    # "j":I
    .end local v1    # "length":I
    :goto_1
    return v2

    .line 1129
    .restart local v0    # "j":I
    .restart local v1    # "length":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1136
    .end local v0    # "j":I
    .end local v1    # "length":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private killVpnService(I)V
    .locals 0
    .param p1, "vpnServicePid"    # I

    .prologue
    .line 1562
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 1563
    return-void
.end method

.method private printPackageVpnMap()V
    .locals 10

    .prologue
    .line 1640
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v6, :cond_3

    .line 1641
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v7, "********************Printing package map ********************"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1644
    .local v5, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1646
    .local v2, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .line 1647
    .local v3, "length":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v7, ":[ "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 1650
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 1651
    .local v4, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    if-eqz v4, :cond_0

    .line 1652
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v2, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": { uid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", packageName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", profileName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " interface:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " state:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getState()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    const-string v6, "RUNNING "

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "}},"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1652
    :cond_1
    const-string v6, "STOPPED "

    goto :goto_1

    .line 1658
    .end local v4    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    :cond_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v7, "] "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/Object;
    .end local v3    # "length":I
    .end local v5    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v7, "-----------------Printing packageNameVpnMap--------------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_3
    return-void

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private printProfileVpnMap()V
    .locals 13

    .prologue
    .line 1666
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v9, :cond_2

    .line 1667
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "********************Printing profile map ********************"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1670
    .local v7, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "profileNames:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1672
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .line 1673
    .local v4, "length":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, ":[ "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_5

    .line 1676
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 1678
    .local v8, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-eqz v8, :cond_3

    .line 1679
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interfaceName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1681
    .local v5, "list":Ljava/util/ArrayList;
    if-eqz v5, :cond_4

    .line 1682
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 1683
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 1684
    .local v6, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    if-eqz v6, :cond_1

    .line 1685
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ uid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", packageName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", profileName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " interface:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " state:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getState()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_0

    const-string v9, "RUNNING "

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "}},"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1685
    :cond_0
    const-string v9, "STOPPED "

    goto :goto_2

    .line 1692
    :cond_1
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "List contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1702
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v4    # "length":I
    .end local v5    # "list":Ljava/util/ArrayList;
    .end local v6    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "-----------------Printing profileNameVpnMap--------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_2
    return-void

    .line 1697
    .restart local v1    # "i":I
    .restart local v3    # "keys":[Ljava/lang/Object;
    .restart local v4    # "length":I
    .restart local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_3
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "ProfileNameVpnEntry contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "]},"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1701
    .end local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "] "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private printVpnState()V
    .locals 9

    .prologue
    .line 1621
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v6, :cond_2

    .line 1622
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAllConnections(I)Ljava/util/List;

    move-result-object v5

    .line 1623
    .local v5, "vpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    .line 1624
    .local v0, "c":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    const-string v6, "key_vpn"

    iget-object v7, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v3

    .line 1625
    .local v3, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v4, 0x0

    .line 1626
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v6

    if-nez v6, :cond_1

    .line 1627
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1630
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_0

    .line 1631
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "print to vpn state : state of profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1635
    .end local v0    # "c":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "vpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    :catch_0
    move-exception v1

    .line 1636
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "print to vpn state : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private removeFromHashMapByPackageName(Ljava/lang/String;)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1843
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->syncObj:Ljava/lang/Object;

    monitor-enter v17

    .line 1845
    :try_start_0
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "In remove package"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 1847
    .local v12, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    if-nez v12, :cond_0

    .line 1848
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "Package name not found in the map"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    monitor-exit v17

    .line 1926
    :goto_0
    return-void

    .line 1851
    :cond_0
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v9

    .line 1852
    .local v9, "profileName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v13

    .line 1853
    .local v13, "uid":I
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The interface going to be removed at removeFromHashMapByPackageName is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "and the uid is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v16

    const-string v18, "removeFromHashMapByPackageName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 1858
    .local v15, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-eqz v15, :cond_e

    .line 1859
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "remove package : VpnEntry is not NULL"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1861
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    if-eqz v6, :cond_1

    .line 1862
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1864
    :cond_1
    const/4 v3, 0x1

    .line 1865
    .local v3, "bringDownVpn":Z
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_7

    .line 1866
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getRunningPackages()Ljava/util/List;

    move-result-object v11

    .line 1867
    .local v11, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 1868
    .local v7, "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getCid()I

    move-result v16

    if-lez v16, :cond_3

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getCid()I

    move-result v16

    if-lez v16, :cond_2

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1870
    :cond_3
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Don\'t ring down vpn as one of the package is running : { cid : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getCid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " }"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v3, 0x0

    .line 1880
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v11    # "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_9

    .line 1881
    const-string v16, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v10

    .line 1882
    .local v10, "response":Landroid/app/enterprise/EnterpriseResponseData;
    if-eqz v10, :cond_9

    .line 1883
    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1884
    .local v14, "value":Ljava/lang/String;
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v16, :cond_5

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Going to stop the connection as no applications are applicable any more for profile:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_5
    if-eqz v14, :cond_c

    const-string v16, "CONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, "CONNECTING"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-eqz v16, :cond_c

    .line 1888
    :cond_6
    :try_start_1
    const-string v16, "key_vpn"

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v10

    .line 1890
    if-nez v10, :cond_8

    .line 1891
    const-string v16, "key_vpn"

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v10

    .line 1892
    if-nez v10, :cond_8

    .line 1894
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Error / can\'t stop : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1895
    :try_start_2
    monitor-exit v17

    goto/16 :goto_0

    .line 1925
    .end local v3    # "bringDownVpn":Z
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .end local v9    # "profileName":Ljava/lang/String;
    .end local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v13    # "uid":I
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 1878
    .restart local v3    # "bringDownVpn":Z
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .restart local v9    # "profileName":Ljava/lang/String;
    .restart local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .restart local v13    # "uid":I
    .restart local v15    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1899
    .restart local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v14    # "value":Ljava/lang/String;
    :cond_8
    :try_start_4
    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1900
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v16

    const-string v18, "removeFromHashMapByPackageName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpRouteAndPolicyRules(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1919
    .end local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    :goto_2
    :try_start_5
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "remove package : Printing after "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v16, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    .line 1921
    :cond_a
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v16, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 1925
    .end local v3    # "bringDownVpn":Z
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    :cond_b
    :goto_3
    monitor-exit v17

    goto/16 :goto_0

    .line 1902
    .restart local v3    # "bringDownVpn":Z
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .restart local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1903
    .local v4, "e":Ljava/lang/Exception;
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1906
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 1907
    .local v8, "profileErrorMessageSuccess":Z
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : errorMessage : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    if-eqz v8, :cond_9

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v16

    if-lez v16, :cond_d

    .line 1911
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification()V

    goto/16 :goto_2

    .line 1913
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cancelNotification()V

    goto/16 :goto_2

    .line 1923
    .end local v3    # "bringDownVpn":Z
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .end local v8    # "profileErrorMessageSuccess":Z
    .end local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v14    # "value":Ljava/lang/String;
    :cond_e
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "remove package : ProfileNameVpnEntry returned null"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method private removeFromHashMapByProfileName(Ljava/lang/String;)V
    .locals 17
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1793
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->syncObj:Ljava/lang/Object;

    monitor-enter v14

    .line 1795
    const/4 v4, 0x0

    .line 1796
    .local v4, "interfaceName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 1797
    .local v12, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-eqz v12, :cond_8

    .line 1798
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1799
    .local v6, "list":Ljava/util/ArrayList;
    if-eqz v6, :cond_7

    .line 1800
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1801
    .local v5, "length":I
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove profile : profilename, length :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 1803
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1804
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getUid()I

    move-result v10

    .line 1805
    .local v10, "uid":I
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v4

    .line 1806
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove profile : loop, pckgename/uid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    const-string v13, "removeFromHashMapByProfileName"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 1809
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 1811
    .local v8, "profileErrorMessageSuccess":Z
    if-eqz v8, :cond_1

    .line 1812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 1814
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification()V

    .line 1802
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1816
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cancelNotification()V

    goto :goto_1

    .line 1840
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v6    # "list":Ljava/util/ArrayList;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "profileErrorMessageSuccess":Z
    .end local v10    # "uid":I
    .end local v12    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 1820
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    .restart local v6    # "list":Ljava/util/ArrayList;
    .restart local v12    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    const-string v13, "removeFromHashMapByProfileName"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpRouteAndPolicyRules(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string v13, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    .line 1823
    .local v9, "response":Landroid/app/enterprise/EnterpriseResponseData;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v13

    if-nez v13, :cond_5

    .line 1824
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1825
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_5

    const-string v13, "CONNECTED"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "CONNECTING"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_5

    .line 1827
    :cond_4
    :try_start_2
    const-string v13, "key_vpn"

    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1833
    .end local v11    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    :try_start_3
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v15, "remove profile : Printing after "

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    .line 1835
    :cond_6
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v13, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 1840
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v6    # "list":Ljava/util/ArrayList;
    .end local v9    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    :cond_7
    :goto_3
    monitor-exit v14

    .line 1841
    return-void

    .line 1828
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    .restart local v6    # "list":Ljava/util/ArrayList;
    .restart local v9    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1829
    .local v2, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove profile : Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1838
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v6    # "list":Ljava/util/ArrayList;
    .end local v9    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v11    # "value":Ljava/lang/String;
    :cond_8
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v15, "remove profile : ProfileNameVpnEntry returned null"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private removeIpBlockingRule(Ljava/lang/String;)V
    .locals 4
    .param p1, "calling_method"    # Ljava/lang/String;

    .prologue
    .line 3390
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeIpBlockingRule API is called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3392
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ip rule del blackhole fwmark 100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3393
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v2, "removeIpBlockingRule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->runSingleCommand(Ljava/lang/String;)V

    .line 3395
    return-void
.end method

.method private removeIpRouteAndPolicyRules(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "calling_method"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 3245
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIpRouteAndPolicyRules is called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    :cond_0
    const-string v0, " del "

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpPolicyRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 3248
    const-string v0, " del "

    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    .line 3250
    const-string v0, " del "

    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpPolicyRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 3251
    const-string v0, " del "

    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    .line 3252
    return-void
.end method

.method private removeIpTableMangleNatRules(IILjava/lang/String;)V
    .locals 5
    .param p1, "version"    # I
    .param p2, "uid_app"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3367
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3368
    .local v2, "uid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3369
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x6

    if-ne p1, v3, :cond_0

    const-string v0, "ip6tables"

    .line 3371
    .local v0, "IP_TABLE_CMD":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -t mangle -F "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -t mangle -X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3373
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -t mangle -D OUTPUT -m owner --uid-owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -j "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3374
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -t mangle -D OUTPUT -m owner --uid-owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -j RETURN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -t nat -D POSTROUTING -o "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -j MASQUERADE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->runSingleCommand(Ljava/lang/String;)V

    .line 3378
    return-void

    .line 3369
    .end local v0    # "IP_TABLE_CMD":Ljava/lang/String;
    :cond_0
    const-string v0, "iptables"

    goto :goto_0
.end method

.method private removeIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid_app"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "calling_method"    # Ljava/lang/String;

    .prologue
    .line 3261
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIpTableMangleNatRules is called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpTableMangleNatRules(IILjava/lang/String;)V

    .line 3263
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpTableMangleNatRules(IILjava/lang/String;)V

    .line 3264
    return-void
.end method

.method private removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2019
    const/4 v1, 0x0

    .line 2020
    .local v1, "profileErrorMessageSuccess":Z
    if-eqz p1, :cond_2

    .line 2022
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2023
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2024
    if-eqz v1, :cond_0

    .line 2025
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2027
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 2036
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    .line 2038
    :cond_2
    return-void

    .line 2029
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cancelNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2032
    :catch_0
    move-exception v0

    .line 2033
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove vpn connection after admin remove : Error in handling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2040
    const/4 v1, 0x0

    .line 2041
    .local v1, "profileErrorMessageSuccess":Z
    const/4 v3, 0x0

    .line 2042
    .local v3, "success":Z
    const/4 v2, 0x0

    .line 2043
    .local v2, "removeSuccess":Z
    if-eqz p1, :cond_0

    .line 2045
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2046
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EnterpriseVpn"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "profileName"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 2051
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection for per app : success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2053
    if-eqz v1, :cond_0

    .line 2054
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2056
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 2066
    :cond_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    .line 2067
    :cond_2
    return v2

    .line 2058
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cancelNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection for perapp : Error in handling remove connection for per app vpn Feature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restartPerAppVpnService(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1550
    const/4 v4, -0x1

    .line 1551
    .local v4, "vpnServicePid":I
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1552
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1553
    .local v2, "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1554
    .local v3, "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1555
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 1556
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->killVpnService(I)V

    .line 1560
    .end local v3    # "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-void
.end method

.method private runAllVpnService()V
    .locals 21

    .prologue
    .line 2071
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : runAllVpnService beginning"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cancelNotification()V

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 2075
    .local v14, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : profileNames:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_0
    invoke-interface {v14}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 2077
    .local v8, "keys":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v9, v8

    .line 2078
    .local v9, "length":I
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : Length: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :cond_1
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : Mocanainterface:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_b

    .line 2082
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 2083
    const-string v18, "key_vpn"

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v12

    .line 2084
    .local v12, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v15, 0x0

    .line 2085
    .local v15, "value":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v17

    if-nez v17, :cond_3

    .line 2086
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "value":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 2089
    .restart local v15    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_a

    .line 2090
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : Callback state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    aget-object v18, v8, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 2092
    .local v16, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    const/4 v11, 0x0

    .line 2093
    .local v11, "packageRunningFlag":Z
    if-eqz v16, :cond_6

    .line 2094
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v10

    .line 2095
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 2096
    .local v13, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getCid()I

    move-result v4

    .line 2097
    .local v4, "cid":I
    if-lez v4, :cond_5

    if-lez v4, :cond_4

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isPackageRunning(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2099
    :cond_5
    const/4 v11, 0x1

    goto :goto_1

    .line 2103
    .end local v4    # "cid":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;>;"
    .end local v13    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    :cond_6
    const-string v17, "IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "FAILED"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_a

    .line 2104
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Calling startConnection"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v18, v0

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    new-instance v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2107
    const-string v18, "key_vpn"

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v12

    .line 2108
    const/4 v15, 0x0

    .line 2109
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v17

    if-nez v17, :cond_9

    .line 2110
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "value":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 2111
    .restart local v15    # "value":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 2112
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Cannot start vpn, mocana returned error:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_8
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_9
    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Cannot start vpn, mocana returned error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    .end local v11    # "packageRunningFlag":Z
    .end local v12    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_a
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2121
    :catch_0
    move-exception v5

    .line 2123
    .local v5, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Exception: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2127
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b
    return-void
.end method

.method private runSingleCommand(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3010
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3011
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3012
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "command"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;

    const/4 v3, 0x5

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3015
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3019
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 3017
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v3, "run command : mLooperThread is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 20
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidPassed"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3096
    if-eqz p1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 3097
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "the setDnsSystemProperty  profileName value : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    :cond_0
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "the setDnsSystemProperty  uidPassed value : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    :cond_1
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "the setDnsSystemProperty  interfaceName value : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 3101
    .local v15, "uid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 3102
    .local v16, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    const/4 v6, 0x0

    .line 3103
    .local v6, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3104
    .local v5, "dnsArray":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 3105
    .local v11, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 3107
    .local v12, "searchDomains":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 3108
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getDnsList()Ljava/util/List;

    move-result-object v6

    .line 3109
    if-eqz v6, :cond_7

    .line 3110
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "dnsArray":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 3111
    .restart local v5    # "dnsArray":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getSearchDomainList()Ljava/util/List;

    move-result-object v11

    .line 3112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3113
    .local v4, "buffer":Ljava/lang/StringBuilder;
    if-eqz v11, :cond_3

    .line 3114
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3115
    .local v7, "domain":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3118
    .end local v7    # "domain":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 3120
    :try_start_0
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_5

    .line 3121
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 3122
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_4

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "the setDnsSystemProperty  dnsArray value["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v5, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3124
    .end local v10    # "j":I
    :cond_5
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "the setDnsSystemProperty  searchDomains value : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3127
    .local v13, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5, v12}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3130
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3138
    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "dnsArray":[Ljava/lang/String;
    .end local v6    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "searchDomains":Ljava/lang/String;
    .end local v13    # "token":J
    .end local v15    # "uid":Ljava/lang/String;
    .end local v16    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_7
    :goto_2
    return-void

    .line 3132
    .restart local v4    # "buffer":Ljava/lang/StringBuilder;
    .restart local v5    # "dnsArray":[Ljava/lang/String;
    .restart local v6    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "searchDomains":Ljava/lang/String;
    .restart local v15    # "uid":Ljava/lang/String;
    .restart local v16    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catch_0
    move-exception v8

    .line 3133
    .local v8, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setting dns property : Exception in new dns properties file creation and the error is"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setupIntentFilter()V
    .locals 4

    .prologue
    .line 2332
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setup intent filter is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)V

    .line 2334
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2335
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2336
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2337
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2338
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2339
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2340
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2341
    const-string v2, "com.samsung.android.mdm.VPN_RETRY_CALLBACK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2342
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2343
    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2344
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2345
    return-void
.end method

.method private stopVpnConnectionAfterAdminRemoval(I)V
    .locals 18
    .param p1, "uid"    # I

    .prologue
    .line 1991
    const/4 v9, 0x0

    .line 1992
    .local v9, "profileName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1993
    .local v2, "adminUid":I
    const/4 v1, 0x1

    .line 1994
    .local v1, "adminIdCheckForRemoveConnection":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "Vpn_table"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profile"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "adminUid"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1997
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v11, :cond_2

    .line 1998
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1999
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v11, "profile"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2000
    const-string v11, "adminUid"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2001
    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 2002
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2003
    .local v10, "status":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "First status of Remove Connection at stop vpn connection after admin remove is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const-string v11, "FAILED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2005
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2006
    .local v7, "failedStatusCheck":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed Connection Status Check at stop vpn connection after admin remove is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2008
    .local v6, "failedErrorCheck":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed Connection Error Check at stop vpn connection after admin remove is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    .end local v6    # "failedErrorCheck":Ljava/lang/String;
    .end local v7    # "failedStatusCheck":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v13

    invoke-interface {v11, v9, v12, v13}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->removeConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2014
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "status":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2015
    .local v5, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "stop vpn connection after admin remove : Failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private declared-synchronized switchVpnMode()Z
    .locals 5

    .prologue
    .line 1450
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->switchFIPSMode()I

    move-result v1

    .line 1451
    .local v1, "switchStatus":I
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switching vpn mode : result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1453
    const-string v2, "com.mocana.vpn.android"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->restartPerAppVpnService(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    const/4 v2, 0x1

    .line 1459
    .end local v1    # "switchStatus":I
    :goto_0
    monitor-exit p0

    return v2

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switching vpn mode : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1450
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private unsetDnsSystemProperty(Ljava/lang/String;I)V
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidPassed"    # I

    .prologue
    .line 3140
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsetDnsSystemProperty is reached : whose profileName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "whose uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3143
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 3144
    .local v3, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3145
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unsetDnsSystemProperty: interface name is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3147
    .local v1, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p2, p2}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3148
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3154
    .end local v1    # "token":J
    .end local v3    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_0
    :goto_0
    return-void

    .line 3150
    :catch_0
    move-exception v0

    .line 3151
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsetDnsSystemProperty : Exception in new dns properties file creation and the error is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCACertificateDetailsInDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "certificateInfo"    # [B
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 771
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 772
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "CA_Certificate"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 773
    const-string v3, "CA_Password"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Vpn_table"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 776
    .local v2, "success":Z
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update to CACertificate in database : value is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update to CACertificate in database : Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFipsModeInDatabase(IZ)Z
    .locals 14
    .param p1, "uid"    # I
    .param p2, "fips_mode_admin"    # Z

    .prologue
    .line 1473
    const/4 v4, -0x1

    .line 1474
    .local v4, "fips_int_value":I
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1475
    .local v5, "uidToString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1476
    const/4 v4, 0x1

    .line 1481
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "Fips_Vpn_table"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "fips_mode"

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1484
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1485
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1486
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "fips_mode"

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v0, v7

    .line 1488
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 1489
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "Fips_Vpn_table"

    invoke-virtual {v7, v8, v0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1494
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "values":[Ljava/lang/String;
    :goto_1
    return v7

    .line 1478
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1491
    :catch_0
    move-exception v3

    .line 1492
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update fips mode in database : Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private updateIpBlockingRule(Ljava/lang/String;)V
    .locals 3
    .param p1, "calling_method"    # Ljava/lang/String;

    .prologue
    .line 3398
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIpBlockingRule API is called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeIpBlockingRule(Ljava/lang/String;)V

    .line 3401
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpBlockingRule(Ljava/lang/String;)V

    .line 3402
    return-void
.end method

.method private declared-synchronized updatePackageData(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1931
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1933
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "applicationInfo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "UID_APP"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1941
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1942
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "update to package : Cursor not null and data present, so update packageData UID in DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1944
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "UID_APP"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1945
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "applicationInfo"

    aput-object v7, v0, v6

    .line 1948
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 1951
    .local v4, "values":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : update to package before DB insert:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    invoke-virtual {v6, v7, v0, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1958
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 1954
    :catch_0
    move-exception v3

    .line 1955
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1931
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private updateUserCertificateDetailsToDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "certificateInfo"    # [B
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 660
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 661
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "User_Certificate"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 662
    const-string v3, "User_Password"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Vpn_table"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 665
    .local v2, "success":Z
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update to client certificate in database : value is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update to client certificate in database : Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized updateVpnModeAfterAdminRemoval()V
    .locals 6

    .prologue
    .line 1536
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfAnyAdminHasFipsMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v3, :cond_0

    .line 1537
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v0

    .line 1538
    .local v0, "currentMode":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1540
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->switchFIPSMode()I

    move-result v2

    .line 1541
    .local v2, "switchStatus":I
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVpnModeAfterAdminRemoval : FIPS mode switch is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    .end local v0    # "currentMode":I
    .end local v2    # "switchStatus":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1545
    :catch_0
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update to vpn mode : Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1536
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 25
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v9

    .line 1186
    .local v9, "adminId":I
    new-instance v19, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1187
    .local v19, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1188
    if-nez p2, :cond_0

    .line 1189
    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1319
    :goto_0
    return-object v19

    .line 1191
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1192
    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1194
    :cond_2
    if-gtz p1, :cond_3

    const-string v4, "sec_container_"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1195
    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1198
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v10

    .line 1199
    .local v10, "checkIfApplicationHasSystemUID":Z
    if-eqz v10, :cond_4

    .line 1200
    const/4 v4, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1203
    :cond_4
    const/16 v21, 0x0

    .line 1204
    .local v21, "tempConnection":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_6

    .line 1206
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object v21

    .line 1207
    if-nez v21, :cond_5

    .line 1208
    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v13

    .line 1213
    .local v13, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1211
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package in profile : The profile name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1218
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v11

    .line 1219
    .local v11, "checkIfProfileHasDefaultRoute":I
    const/4 v4, 0x1

    if-eq v11, v4, :cond_7

    const/4 v4, -0x1

    if-ne v11, v4, :cond_8

    .line 1220
    :cond_7
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1223
    :cond_8
    const/4 v7, -0x1

    .line 1224
    .local v7, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1226
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 1227
    .local v14, "info":Landroid/content/pm/ApplicationInfo;
    iget v7, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1228
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Uid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1232
    .end local v14    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_9
    :goto_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Found UID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_a
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1234
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1235
    const-string v4, "applicationInfo"

    move-object/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v4, "profileName"

    move-object/from16 v0, p3

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v4, "CID"

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1238
    const-string v4, "UID_APP"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1240
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EnterpriseVpn"

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v20

    .line 1241
    .local v20, "status":Z
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_17

    .line 1242
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : put data by field is success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/4 v4, -0x1

    if-eq v7, v4, :cond_e

    .line 1244
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_b
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1246
    .local v3, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;)V

    .line 1247
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    const-string v5, "addVpnProfileToApp--starting"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_16

    if-lez p1, :cond_c

    if-lez p1, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->isPackageRunning(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1250
    :cond_c
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Network is connected via check network connection method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1252
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_e

    .line 1253
    const-string v4, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v17

    .line 1254
    .local v17, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v22, 0x0

    .line 1255
    .local v22, "value":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1256
    .local v23, "value2":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_d

    .line 1257
    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "value":Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .line 1258
    .restart local v22    # "value":Ljava/lang/String;
    :cond_d
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : addVpnProfileToApp - value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    if-eqz v22, :cond_15

    .line 1262
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Callback state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v4, "CONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1264
    const/4 v15, 0x0

    .line 1265
    .local v15, "interfaceValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 1266
    .local v24, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-eqz v24, :cond_11

    .line 1267
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 1272
    :goto_2
    if-eqz v15, :cond_e

    .line 1273
    invoke-virtual {v3, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->setInterface(Ljava/lang/String;)V

    .line 1274
    const-string v4, "addVpnProfileToApp--connected"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addIpTableMangleNatRules(ILjava/lang/String;Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 1276
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;->setState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1307
    .end local v3    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .end local v15    # "interfaceValue":Ljava/lang/String;
    .end local v17    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "value2":Ljava/lang/String;
    .end local v24    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_e
    :goto_3
    :try_start_5
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 1308
    :cond_f
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    .line 1309
    :cond_10
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1310
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1315
    .end local v20    # "status":Z
    :catch_1
    move-exception v13

    .line 1316
    .local v13, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Exception occured for adding vpn, package map."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1229
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 1230
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, -0x1

    goto/16 :goto_1

    .line 1269
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "interfaceValue":Ljava/lang/String;
    .restart local v17    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v20    # "status":Z
    .restart local v22    # "value":Ljava/lang/String;
    .restart local v23    # "value2":Ljava/lang/String;
    .restart local v24    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :cond_11
    :try_start_6
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : ProfileNameVpnEntry returned null value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1300
    .end local v15    # "interfaceValue":Ljava/lang/String;
    .end local v17    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "value2":Ljava/lang/String;
    .end local v24    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    :catch_3
    move-exception v13

    .line 1301
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_7
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Exception at mocana:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 1278
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v17    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v22    # "value":Ljava/lang/String;
    .restart local v23    # "value2":Ljava/lang/String;
    :cond_12
    :try_start_8
    const-string v4, "IDLE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1281
    const-string v4, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v18

    .line 1282
    .local v18, "response2":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v23, 0x0

    .line 1283
    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_14

    .line 1284
    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "value2":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 1285
    .restart local v23    # "value2":Ljava/lang/String;
    if-eqz v23, :cond_13

    .line 1286
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Cannot start vpn, mocana returned error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_13
    :goto_4
    if-eqz v23, :cond_e

    .line 1292
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1289
    :cond_14
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Cannot start vpn, mocana returned error : Failure"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1297
    .end local v18    # "response2":Landroid/app/enterprise/EnterpriseResponseData;
    :cond_15
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Cannot start vpn, profile has some problem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 1304
    .end local v17    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "value2":Ljava/lang/String;
    :cond_16
    :try_start_9
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Network is not connected via check network connection method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1312
    .end local v3    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    :cond_17
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : put data by field is failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0
.end method

.method public bindMocanaVpnInterface()V
    .locals 8

    .prologue
    .line 278
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v3, "bind to mocana interface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-nez v2, :cond_0

    const-string v2, "com.mocana.vpn.android"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfMocanaPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v3, "bind to mocana interface : Mocana package found. Binding to it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mocana.vpn.BIND_MOCANA_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->cMocanaFipsConnect:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 283
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    .end local v0    # "identity":J
    :cond_0
    return-void
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .locals 13
    .param p1, "container_id"    # I

    .prologue
    .line 1002
    const/4 v3, 0x0

    .line 1003
    .local v3, "i":I
    const/4 v5, 0x0

    .line 1005
    .local v5, "retVal":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "CID"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "applicationInfo"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1013
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1014
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1015
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1016
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "applicationInfo"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1017
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v7, "getting container package list in database : DB read for packages returned NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    return-object v5

    .line 1022
    :catch_0
    move-exception v2

    .line 1023
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting container package list in database : Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enableDefaultRoute(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 951
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 952
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 953
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 954
    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 955
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 957
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 958
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 959
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "enable to default route : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 974
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 962
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->enableDefaultRoute(Ljava/lang/String;ZI)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 963
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable to default route : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 971
    goto :goto_0

    .line 966
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 967
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized getAllEnterpriseVpnConnections(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 594
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 595
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 597
    .local v1, "mocanaVpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    if-eqz p1, :cond_0

    .line 599
    :try_start_1
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 601
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "getting all vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 617
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 604
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAllConnections(I)Ljava/util/List;

    move-result-object v1

    .line 605
    invoke-virtual {v2, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 606
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getting all vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 614
    goto :goto_0

    .line 609
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 610
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 594
    .end local v1    # "mocanaVpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getAllPackagesForProfile(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 15
    .param p1, "containerId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1355
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    move-result v0

    .line 1356
    .local v0, "adminId":I
    const/4 v7, 0x0

    .line 1357
    .local v7, "retVal":[Ljava/lang/String;
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1358
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1359
    if-eqz p2, :cond_5

    .line 1360
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v9, "get all added package : Profile is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "EnterpriseVpn"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CID"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "applicationInfo"

    aput-object v14, v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1370
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printPackageVpnMap()V

    .line 1371
    :cond_1
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v8, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->printProfileVpnMap()V

    .line 1372
    :cond_2
    const/4 v4, 0x0

    .line 1373
    .local v4, "i":I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 1374
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 1375
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1376
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v8, "applicationInfo"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 1378
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1380
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1381
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1393
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v6

    .line 1383
    .restart local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v4    # "i":I
    :cond_4
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v9, "get all added package : DB read for packages returned NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1386
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 1387
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get all added package : Exceptionin notify: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1

    .line 1391
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1
.end method

.method public getCACertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 744
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 745
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 746
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 747
    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 748
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 750
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 751
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 752
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "getting CACertificate : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 767
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 755
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getCACertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 756
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting CACertificate : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 764
    goto :goto_0

    .line 759
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 760
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3429
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 524
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 525
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 526
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 527
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 530
    :try_start_1
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 532
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "getting vpn connection : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 547
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 535
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 536
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting vpn connection : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    .line 544
    goto :goto_0

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 540
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 524
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 877
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 878
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 880
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 881
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 882
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "getting vpn error string : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 896
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 885
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 886
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting vpn error string : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 894
    goto :goto_0

    .line 889
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 890
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getForwardRoutes(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 925
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 926
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 927
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 928
    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 929
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 931
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 932
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 933
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "getting forward route : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 948
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 936
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getForwardRoutes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 937
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting forward route : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 945
    goto :goto_0

    .line 940
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 941
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 851
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 852
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 854
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 856
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "getting vpn state : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 870
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 859
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 860
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting vpn state : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 868
    goto :goto_0

    .line 863
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 864
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getUserCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 676
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 677
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 678
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 679
    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 680
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 682
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 683
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 684
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "getting user certificate : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 699
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 687
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getUserCertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 688
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting user certificate : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 696
    goto :goto_0

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 692
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized getVpnModeOfOperation()Landroid/app/enterprise/EnterpriseResponseData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 1434
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1435
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1436
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v2, :cond_0

    .line 1439
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1440
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1442
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting vpn mode : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    const/4 v1, 0x0

    goto :goto_0

    .line 1433
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isDefaultRouteEnabled(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 977
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    .line 978
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 979
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 981
    :try_start_0
    const-string v6, "key_vpn"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 982
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v6

    if-nez v6, :cond_1

    .line 983
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "check to default route enabled : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 999
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 986
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->isDefaultRouteEnabled(Ljava/lang/String;I)I

    move-result v1

    .line 987
    .local v1, "isRoute":I
    if-ne v1, v4, :cond_2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 988
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    .end local v1    # "isRoute":I
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check to default route enabled : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 996
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isRoute":I
    :cond_2
    move v4, v5

    .line 987
    goto :goto_1

    .line 991
    .end local v1    # "isRoute":I
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 992
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public notifyContainerAppLaunch(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1565
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "notify when container app launch : executing from proxies - Handle in thread for better launch time"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1567
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceEnterpriseVpnPermission()I

    move-result v0

    .line 1568
    .local v0, "adminId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1569
    .local v1, "map":Landroid/os/Bundle;
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1570
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;

    const/4 v4, 0x7

    invoke-static {v3, v4, v5, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1572
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1576
    .end local v0    # "adminId":I
    .end local v1    # "map":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v4, "notify when container app launch : mLooperThread is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1065
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v3, "admin add  : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin add  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->insertFipsModeInDatabase(I)Z

    .line 1068
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1070
    .local v0, "map":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3, v5, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1072
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1076
    .end local v0    # "map":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1074
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v3, "added admin : mLooperThread is null...when AdminAdded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1079
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admin remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->updateVpnModeAfterAdminRemoval()V

    .line 1082
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3223
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container creation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3231
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container remove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1089
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre admin remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_0
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1091
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin has VPN Permission : Pre admin remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->stopVpnConnectionAfterAdminRemoval(I)V

    .line 1095
    :cond_2
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3227
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre container remove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    return-void
.end method

.method public declared-synchronized removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "statusCb"    # Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 556
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 557
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 558
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 561
    :try_start_1
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 562
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection : is called. type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 564
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v5, "remove vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    const/4 v2, 0x0

    .line 587
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 567
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    invoke-interface {v4, p2, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "status":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First status of remove vpn connection is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-eqz p3, :cond_0

    .line 570
    const-string v4, "FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 571
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed remove vpn connection : Status Check is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    invoke-interface {v4, p2, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "failedErrorCheck":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed remove vpn connection : Error Check is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v1    # "failedErrorCheck":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;

    invoke-direct {v5, p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v6

    invoke-interface {v4, p2, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->removeConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 576
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 583
    .end local v3    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 580
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_3
    const/4 v4, 0x0

    :try_start_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 581
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1322
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v0

    .line 1323
    .local v0, "adminId":I
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1324
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1325
    const/4 v4, 0x0

    .line 1326
    .local v4, "success":Z
    if-eqz p2, :cond_2

    .line 1328
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "EnterpriseVpn"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "applicationInfo"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 1333
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove to package : DB delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    if-eqz v4, :cond_1

    .line 1335
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;

    .line 1336
    .local v2, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    if-eqz v2, :cond_0

    .line 1337
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 1339
    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1340
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1352
    .end local v2    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnState;
    :goto_0
    return-object v3

    .line 1342
    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v1

    .line 1345
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove to package : Exception occured for removing vpn, package map:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v5, 0x3

    invoke-virtual {v3, v10, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1349
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v6, "remove to package : Error occured for removing vpn, package map."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-virtual {v3, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setCACertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 708
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 709
    const/4 v2, 0x0

    .line 710
    .local v2, "success":Z
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 711
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 712
    const/4 v4, 0x2

    invoke-virtual {v1, v5, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 713
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 715
    :try_start_0
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 716
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 717
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setting CACertificate : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 737
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 720
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, p4, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    .line 722
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 723
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 724
    if-eqz v2, :cond_0

    .line 725
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->updateCACertificateDetailsInDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting CACertificate : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 734
    goto :goto_0

    .line 729
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 730
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setDnsToVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3075
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;

    .line 3076
    .local v0, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;
    if-eqz v0, :cond_0

    .line 3077
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->setDnsList(Ljava/util/List;)V

    .line 3078
    invoke-virtual {v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$ProfileNameVpnEntry;->setSearchDomainList(Ljava/util/List;)V

    .line 3082
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3080
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v2, "set dns  : vpn entry is returned null value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setEnterprisePremiumVpnConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 12
    .param p1, "eVpn"    # Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    .param p2, "oldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v0

    .line 372
    .local v0, "admin_id":I
    const/4 v5, 0x0

    .line 373
    .local v5, "removeConnectionStatus":Z
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 374
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 375
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {v6, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    if-eqz p1, :cond_7

    :try_start_1
    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->type:Ljava/lang/String;

    const-string v10, "key_vpn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 378
    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xf

    if-gt v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    .line 381
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v10

    invoke-interface {v9, p2, v10}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 382
    const/4 p2, 0x0

    .line 383
    :cond_2
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting premium vpn connection : starting old name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.host is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz p2, :cond_3

    .line 385
    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 386
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v10

    invoke-interface {v9, p2, v10}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, "returnState":Ljava/lang/String;
    const-string v9, "CONNECTING"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "CONNECTED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "DISCONNECTING"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 395
    .end local v7    # "returnState":Ljava/lang/String;
    :cond_3
    const-string v9, "\\s"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 396
    .local v4, "pattern":Ljava/util/regex/Pattern;
    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 397
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 398
    .local v2, "found":Z
    if-eqz v2, :cond_5

    .line 399
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string v10, "setEnterprisePremiumVpnConnection : Profile name contains illegal characters"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 419
    .end local v2    # "found":Z
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting premium vpn connection : Error at\n "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 371
    .end local v0    # "admin_id":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "removeConnectionStatus":Z
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 390
    .restart local v0    # "admin_id":I
    .restart local v5    # "removeConnectionStatus":Z
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_4
    :try_start_4
    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_0

    .line 402
    .restart local v2    # "found":Z
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting premium vpn connection : starting after removal  old name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.host is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v10

    invoke-interface {v9, p1, p2, v10}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->createConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;I)Z

    move-result v8

    .line 404
    .local v8, "success":Z
    if-eqz v8, :cond_6

    .line 405
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->addVpnProfileToDatabase(ILcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;)V

    .line 407
    :cond_6
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting premium vpn connection : return value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 409
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 411
    .end local v2    # "found":Z
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v8    # "success":Z
    :cond_7
    if-eqz p1, :cond_0

    .line 416
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 417
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "networks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 899
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 900
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 901
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 902
    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 903
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 905
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 906
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 907
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setting forward route : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 922
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 910
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setForwardRoutes(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 911
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting forward route : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 919
    goto :goto_0

    .line 914
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 915
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setUserCertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 627
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "success":Z
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 630
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 631
    const/4 v4, 0x2

    invoke-virtual {v1, v5, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 632
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 634
    :try_start_0
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 635
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 636
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setting user certificate : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 656
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 639
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, p4, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    .line 641
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 642
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 643
    if-eqz v2, :cond_0

    .line 644
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->updateUserCertificateDetailsToDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting user certificate : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 653
    goto :goto_0

    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 649
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentFramework"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string v0, "net.vpn.framework"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public declared-synchronized setVpnModeOfOperation(Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "vpnMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 1396
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1397
    .local v4, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1398
    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1399
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1401
    .local v0, "adminId":I
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1402
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setting vpn mode : Mocana Service is not started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1403
    const/4 v4, 0x0

    .line 1430
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1405
    .restart local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->updateFipsModeInDatabase(IZ)Z

    move-result v5

    .line 1406
    .local v5, "success":Z
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setting vpn mode : success is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    if-eqz v5, :cond_0

    .line 1408
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfAnyAdminHasFipsMode()Z

    move-result v1

    .line 1409
    .local v1, "checkIfAnyAdminHasFips":Z
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setting vpn mode : check admin has Fips is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v2

    .line 1411
    .local v2, "currentMode":I
    if-ne p1, v10, :cond_3

    if-eq v2, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    if-nez v2, :cond_5

    .line 1412
    :cond_4
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1413
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1427
    .end local v1    # "checkIfAnyAdminHasFips":Z
    .end local v2    # "currentMode":I
    .end local v5    # "success":Z
    :catch_0
    move-exception v3

    .line 1428
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setting vpn mode : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1396
    .end local v0    # "adminId":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1415
    .restart local v0    # "adminId":I
    .restart local v1    # "checkIfAnyAdminHasFips":Z
    .restart local v2    # "currentMode":I
    .restart local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    .restart local v5    # "success":Z
    :cond_5
    if-ne p1, v10, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-nez p1, :cond_0

    if-ne v2, v10, :cond_0

    .line 1416
    :cond_7
    if-nez p1, :cond_8

    if-eq v1, v10, :cond_0

    .line 1417
    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->switchVpnMode()Z

    move-result v6

    .line 1418
    .local v6, "switchSuccess":Z
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setting vpn mode : switchSuccess is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_9
    if-eqz v6, :cond_0

    .line 1420
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1421
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public startConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "statusCb"    # Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 787
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 788
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 790
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :try_start_0
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 792
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "starting vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 812
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_0
    return-object v2

    .line 795
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v0

    .line 796
    .local v0, "checkIfProfileHasDefaultRoute":I
    if-ne v0, v5, :cond_1

    .line 797
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 798
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "starting vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 810
    goto :goto_0

    .line 801
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 802
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 805
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 806
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startVpnAfterMigration()V
    .locals 2

    .prologue
    .line 288
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVpnAfterMigration : Vpn1.0 does not do it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    return-void
.end method

.method public stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "statusCb"    # Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 820
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 821
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 823
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :try_start_0
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 824
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 825
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopping vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 845
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_0
    return-object v2

    .line 828
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v0

    .line 829
    .local v0, "checkIfProfileHasDefaultRoute":I
    if-ne v0, v5, :cond_1

    .line 830
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 831
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :catch_0
    move-exception v1

    .line 842
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopping vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 843
    goto :goto_0

    .line 834
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->stopConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 835
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 838
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 839
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1086
    return-void
.end method
