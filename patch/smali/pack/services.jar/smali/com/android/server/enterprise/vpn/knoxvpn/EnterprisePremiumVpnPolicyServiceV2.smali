.class public Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
.super Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;
.source "EnterprisePremiumVpnPolicyServiceV2.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$DatabaseColumnValues;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnReceiver;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;,
        Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnCallBack;
    }
.end annotation


# static fields
.field private static final ACTION_MOCANA_FIPSVPN_SERVICE:Ljava/lang/String; = "com.mocana.vpn.BIND_MOCANA_SERVICE"

.field private static final ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.vpndialogs"

.field private static final ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vpndialogs.EnterpriseVpnError"

.field private static final ADD_ALL_PACKAGES:Ljava/lang/String; = "ADD_ALL_PACKAGES"

.field private static final ADD_ALL_PACKAGES_FLAG:I = 0x1

.field private static final ADD_PER_APP_PACKAGES_FLAG:I = 0x0

.field private static final CONTAINER_ID_REMOVED:Ljava/lang/String; = "container_removed"

.field private static final DBG:Z

.field private static final FIPS:I = 0x1

.field private static final FIPS_ERROR:I = -0x1

.field private static final GET_STATUS_IS_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field private static final GET_STATUS_IS_CONNECTING:Ljava/lang/String; = "CONNECTING"

.field private static final GET_STATUS_IS_DISCONNECTING:Ljava/lang/String; = "DISCONNECTING"

.field private static final GET_STATUS_IS_FAILED:Ljava/lang/String; = "FAILED"

.field private static final GET_STATUS_IS_IDLE:Ljava/lang/String; = "IDLE"

.field private static final INVALID_CONTAINER_ID:I = -0x1

.field private static final INVALID_UID:I = -0x1

.field private static final MAP_ADD_ALL_OR_PER_APP:Ljava/lang/String; = "addAllOrPerApp"

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

.field private static final SET_FIPS:Z = true

.field private static final SET_NONFIPS:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final UID_ADD_ALL_CONTAINER_PACKAGES:I = -0x2

.field private static final VPN_CALLBACK_STATE_START:I = 0x0

.field private static final VPN_CALLBACK_STATE_STOP:I = 0x1

.field private static final VPN_ERRORED_PROFILE_INFO:Ljava/lang/String; = "vpn_error_profile_info"

.field private static final VPN_ERROR_MESSAGE:Ljava/lang/String; = "vpn_error_message"

.field private static final VPN_ERROR_TITLE:Ljava/lang/String; = "vpn_error_title"

.field private static final VPN_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_VPN"

.field private static final VPN_RETRY_CALLBACK_ACTION:Ljava/lang/String; = "com.samsung.android.mdm.VPN_RETRY_CALLBACK"

.field private static kvpn_install_type:Z

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field private addAllorPerAppFlag:I

.field cMocanaFipsConnect:Landroid/content/ServiceConnection;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConnectionManager:Landroid/net/ConnectivityManager;

.field private mContainerState:I

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private final mKnoxTunInterfacePrefix:Ljava/lang/String;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

.field private mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPersonaManager:Landroid/os/IPersonaManager;

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

.field private vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    .line 170
    const-string v0, "EnterprisePremiumVpnPolicyServiceV2"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    .line 206
    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->kvpn_install_type:Z

    .line 230
    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 236
    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;-><init>()V

    .line 180
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    .line 214
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 216
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 218
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContainerState:I

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I

    .line 232
    const-string v0, "knoxv_"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mBitmap:Landroid/graphics/Bitmap;

    .line 447
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cMocanaFipsConnect:Landroid/content/ServiceConnection;

    .line 313
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "In Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    .line 315
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 316
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 317
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 318
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 319
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->uidIptableBlockMap:Ljava/util/HashMap;

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->uidIptableRouteMap:Ljava/util/HashMap;

    .line 327
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 328
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 329
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->initLooperThread()V

    .line 331
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->initializeVpnDataAndVendors()V

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->runAllVpnService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->handleMocanaServiceDisconnect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addIptableBlockingRulesAfterBootComplete()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->kvpn_install_type:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 162
    sput-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->kvpn_install_type:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;I)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getVpnObjectFromDB(Ljava/lang/String;I)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createVpnFromDatabase()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileAddedAllPackagesToVpn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->clearDatabaseAfterContainerRemoval(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setupIntentFilter()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->initializeHashtable()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkVpnModeOfOperationAfterNewinstall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkPackagesOnStartup()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printVpnState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private addIptableBlockingRulesAfterBootComplete()V
    .locals 12

    .prologue
    .line 3068
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "addIptableBlockingRulesAfterBootComplete is reached inintally "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 3071
    .local v7, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 3072
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .line 3073
    .local v4, "length":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    .line 3074
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3075
    .local v8, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v8, :cond_5

    .line 3076
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v5

    .line 3077
    .local v5, "list":Ljava/util/ArrayList;
    if-eqz v5, :cond_6

    .line 3078
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 3079
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3080
    .local v6, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v6, :cond_3

    .line 3081
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addIptableBlockingRulesAfterBootComplete: uid is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "and profile name is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v10

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3078
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3084
    :cond_3
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "List contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3092
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v4    # "length":I
    .end local v5    # "list":Ljava/util/ArrayList;
    .end local v6    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_0
    move-exception v0

    .line 3093
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 3095
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 3089
    .restart local v1    # "i":I
    .restart local v3    # "keys":[Ljava/lang/Object;
    .restart local v4    # "length":I
    .restart local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_5
    :try_start_1
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "ProfileNameVpnEntry contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3073
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V
    .locals 8
    .param p1, "state"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .prologue
    .line 2306
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->syncObj:Ljava/lang/Object;

    monitor-enter v7

    .line 2308
    if-eqz p1, :cond_2

    .line 2309
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2310
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 2311
    .local v4, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 2313
    .local v5, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-nez v5, :cond_0

    .line 2314
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .end local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    invoke-direct {v5, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 2315
    .restart local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2316
    .local v1, "list":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 2317
    .local v0, "length":I
    if-eqz v1, :cond_1

    .line 2318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2320
    :cond_1
    if-eqz v0, :cond_5

    .line 2321
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    .end local v0    # "length":I
    .end local v1    # "list":Ljava/util/ArrayList;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_2
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 2330
    :cond_3
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 2331
    :cond_4
    monitor-exit v7

    .line 2332
    return-void

    .line 2323
    .restart local v0    # "length":I
    .restart local v1    # "list":Ljava/util/ArrayList;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profileName":Ljava/lang/String;
    .restart local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2324
    .local v2, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2325
    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setVpnStateList(Ljava/util/ArrayList;)V

    .line 2326
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2331
    .end local v0    # "length":I
    .end local v1    # "list":Ljava/util/ArrayList;
    .end local v2    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
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
    .line 567
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 568
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v3, "Authentication"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    const-string v3, "BackupServer_status"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupServerEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 571
    const-string v3, "BackupServer"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupVPNServer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v3, "DPD"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->deadPeerDetect:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 573
    const-string v3, "GroupName"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->groupname:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v3, "IPSEC_Type"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->iPSecIDType:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const-string v3, "IKE"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->ikeVersion:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string v3, "Default_Route"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isDefaultrouteEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 577
    const-string v3, "User_Auth"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isUserAuthEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 578
    const-string v3, "Mobike"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->mobikeEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 579
    const-string v3, "DH_Group"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1DHGroup:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v3, "Phase_Mode"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1Mode:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v3, "PFS"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->pfs:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 582
    const-string v3, "PSK"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->psk:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v3, "SuiteBType"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->suiteBType:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v3, "Host"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v3, "profile"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v3, "Username"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->username:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v3, "Split_Tunnel_type"

    iget v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->splitTunnelType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    const-string v3, "Forward_Routes"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->arrayListConverterToByteArray(Ljava/util/List;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    .line 592
    .local v2, "status":Z
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 596
    .end local v2    # "status":Z
    :cond_0
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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
    .line 600
    .local p1, "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 601
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 602
    .local v2, "dos":Ljava/io/DataOutputStream;
    if-nez p1, :cond_1

    .line 603
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v8, "The arrayListConverterToByteArray routeList value is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    const/4 v7, 0x0

    .line 623
    :goto_0
    return-object v7

    .line 607
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 609
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

    .line 610
    .local v6, "route":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 611
    :cond_2
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 613
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "route":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .line 614
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 617
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 618
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 623
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_0

    .line 617
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 618
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .line 622
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 616
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    .line 617
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 618
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 616
    :cond_6
    :goto_6
    throw v7

    .line 619
    :catch_1
    move-exception v4

    .line 620
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 619
    :catch_2
    move-exception v4

    .line 620
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 619
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v4

    .line 620
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 616
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

    .line 613
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
    .locals 12
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
    .line 631
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v7, "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 633
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 634
    .local v2, "din":Ljava/io/DataInputStream;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "Vpn_table"

    const-string v10, "profile"

    const-string v11, "Forward_Routes"

    invoke-virtual {v8, v9, v10, p1, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 636
    .local v6, "routeBytes":[B
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The byteArrayToArrayListConverter initial value is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    if-nez v6, :cond_3

    .line 638
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v9, "The byteArrayToArrayListConverter routeBytes value is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1
    const/4 v7, 0x0

    .line 659
    .end local v7    # "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object v7

    .line 642
    .restart local v7    # "routeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 644
    .end local v2    # "din":Ljava/io/DataInputStream;
    .local v3, "din":Ljava/io/DataInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v8

    if-lez v8, :cond_5

    .line 645
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 646
    .local v5, "route":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The byteArrayToArrayListConverter value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_4
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 649
    .end local v5    # "route":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "din":Ljava/io/DataInputStream;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    move-object v0, v1

    .line 650
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 653
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 654
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 655
    :catch_1
    move-exception v4

    .line 656
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "din":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "din":Ljava/io/DataInputStream;
    :cond_5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 654
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    move-object v2, v3

    .end local v3    # "din":Ljava/io/DataInputStream;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    move-object v0, v1

    .line 658
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 652
    :catchall_0
    move-exception v8

    .line 653
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 654
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 652
    :cond_7
    :goto_5
    throw v8

    .line 655
    :catch_2
    move-exception v4

    .line 656
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    goto :goto_5

    .line 655
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "din":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "din":Ljava/io/DataInputStream;
    :catch_3
    move-exception v4

    .line 656
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 652
    .end local v3    # "din":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "din":Ljava/io/DataInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "din":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "din":Ljava/io/DataInputStream;
    .restart local v2    # "din":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 649
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2
.end method

.method private cancelNotification()V
    .locals 7

    .prologue
    .line 2895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2896
    .local v0, "identity":J
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const-string v3, "VPN_ERROR_RETRY"

    const/4 v4, 0x1

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2897
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2898
    return-void
.end method

.method private checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1332
    const/4 v2, 0x0

    .line 1333
    .local v2, "isAdminApplication":Z
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1334
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, -0x1

    .line 1336
    .local v4, "uid":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1337
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1338
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1339
    :cond_0
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_1

    .line 1340
    const/4 v2, 0x1

    .line 1345
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v2

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private checkIfAdminHasVpnPermission(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 283
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "packageNameList":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 285
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 286
    .local v5, "packagename":Ljava/lang/String;
    invoke-virtual {v6, p2, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, "checkVpnPermission":I
    if-nez v1, :cond_0

    .line 288
    const/4 v7, 0x1

    .line 292
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "checkVpnPermission":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "packagename":Ljava/lang/String;
    :goto_1
    return v7

    .line 285
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "checkVpnPermission":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "packagename":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
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

    .line 2039
    const/4 v3, -0x1

    .line 2040
    .local v3, "fips_value":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "Fips_Vpn_table"

    invoke-virtual {v6, v7, v8, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2042
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1

    .line 2043
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

    .line 2044
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "fips_mode"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2045
    if-ne v3, v5, :cond_0

    .line 2053
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_0
    return v5

    .line 2050
    :catch_0
    move-exception v2

    .line 2051
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2053
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private checkIfContainerHasAddAllPackagesEnabled(I)Z
    .locals 14
    .param p1, "containerId"    # I

    .prologue
    const/4 v13, 0x1

    .line 1683
    const/4 v5, 0x0

    .line 1685
    .local v5, "success":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    const-string v12, "containerState"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1693
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1694
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1695
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "containerState"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1696
    .local v0, "container_State":I
    if-ne v0, v13, :cond_0

    .line 1697
    const/4 v5, 0x1

    .line 1705
    .end local v0    # "container_State":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfContainerHasAddAllPackagesEnabled API value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return v5

    .line 1702
    :catch_0
    move-exception v3

    .line 1703
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at checkIfContainerHasAddAllPackagesEnabled API"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfContainerHasPerApplicationEnabled(I)Z
    .locals 13
    .param p1, "containerId"    # I

    .prologue
    .line 1737
    const/4 v5, 0x0

    .line 1739
    .local v5, "success":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    const-string v12, "containerState"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1747
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1748
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1749
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "containerState"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1750
    .local v0, "container_State":I
    if-nez v0, :cond_0

    .line 1751
    const/4 v5, 0x1

    .line 1759
    .end local v0    # "container_State":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfContainerHasPerApplicationEnabled API value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return v5

    .line 1756
    :catch_0
    move-exception v3

    .line 1757
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at checkIfContainerHasPerApplicationEnabled API"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfProfileAddedAllPackagesToVpn(Ljava/lang/String;)Z
    .locals 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 1764
    const/4 v5, 0x0

    .line 1766
    .local v5, "success":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profileName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "containerState"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1774
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1775
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1776
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "containerState"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1777
    .local v0, "container_State":I
    if-ne v0, v13, :cond_0

    .line 1778
    const/4 v5, 0x1

    .line 1786
    .end local v0    # "container_State":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfProfileAddedAllPackagesToVpn API value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return v5

    .line 1783
    :catch_0
    move-exception v3

    .line 1784
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at checkIfProfileAddedAllPackagesToVpn API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfProfileExist()Z
    .locals 8

    .prologue
    .line 3963
    const/4 v2, 0x0

    .line 3965
    .local v2, "profileExists":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Vpn_table"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3966
    .local v0, "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    .line 3967
    const/4 v2, 0x1

    .line 3972
    .end local v0    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfProfileExist value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    return v2

    .line 3969
    :catch_0
    move-exception v1

    .line 3970
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at checkIfProfileExist "

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

.method private checkIfProfileHasAddAllPackagesEnabled(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 1710
    const/4 v5, 0x0

    .line 1712
    .local v5, "success":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "CID"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "profileName"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "containerState"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1720
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1721
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1722
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "containerState"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1723
    .local v0, "container_State":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 1724
    const/4 v5, 0x1

    .line 1732
    .end local v0    # "container_State":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfContainerHasAddAllPackagesEnabled API value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return v5

    .line 1729
    :catch_0
    move-exception v3

    .line 1730
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at checkIfContainerHasAddAllPackagesEnabled API"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I
    .locals 13
    .param p1, "profieName"    # Ljava/lang/String;

    .prologue
    .line 2057
    const/4 v5, -0x1

    .line 2059
    .local v5, "success":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    .line 2061
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_2

    .line 2062
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

    .line 2063
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "Default_Route"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->convertIntegerToBooleanInDatabase(I)Z

    move-result v0

    .line 2064
    .local v0, "checkIfDefaultRouteEnabled":Z
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2065
    :cond_0
    if-eqz v0, :cond_1

    .line 2066
    const/4 v5, 0x1

    goto :goto_0

    .line 2068
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2072
    .end local v0    # "checkIfDefaultRouteEnabled":Z
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 2073
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2075
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return v5
.end method

.method private checkPackagesOnStartup()V
    .locals 12

    .prologue
    .line 3819
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 3820
    .local v7, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 3821
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v3

    .line 3822
    .local v4, "length":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "check to package on startup : Verifying installed packages"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    .line 3824
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    aget-object v10, v3, v2

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3825
    .local v5, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v5, :cond_0

    .line 3826
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3827
    .local v6, "packageName":Ljava/lang/String;
    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3823
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3830
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v8

    .line 3831
    .local v8, "uid":I
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v0

    .line 3832
    .local v0, "cid":I
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isPackageInstalledInPersona(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3833
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check to package on startup : Calling removeVpn for package = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    :cond_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3838
    .end local v0    # "cid":I
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v4    # "length":I
    .end local v5    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "uid":I
    :catch_0
    move-exception v1

    .line 3839
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check to package on startup : Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private declared-synchronized checkVpnModeOfOperationAfterNewinstall()Z
    .locals 6

    .prologue
    .line 2767
    monitor-enter p0

    const/4 v0, 0x0

    .line 2768
    .local v0, "checkIfAnyAdminHasFips":Z
    const/4 v1, -0x1

    .line 2770
    .local v1, "currentVpnMode":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v3, :cond_0

    .line 2771
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v1

    .line 2772
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2774
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfAnyAdminHasFipsMode()Z

    move-result v0

    .line 2775
    if-eqz v0, :cond_1

    .line 2776
    if-nez v1, :cond_1

    .line 2777
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->switchVpnMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2783
    :cond_1
    :goto_0
    :try_start_1
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2784
    :cond_2
    monitor-exit p0

    return v0

    .line 2780
    :catch_0
    move-exception v2

    .line 2781
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2767
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private clearDatabaseAfterContainerRemoval(I)V
    .locals 9
    .param p1, "persona_id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfContainerHasAddAllPackagesEnabled(I)Z

    move-result v1

    .line 3114
    .local v1, "ifContainerHasAddAllPackagesEnabled":Z
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearDatabaseAfterContainerRemoval: ifContainerHasAddAllPackagesEnabled value is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    if-eqz v1, :cond_0

    .line 3119
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 3123
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3124
    .local v0, "idValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "EnterpriseVpn"

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "CID"

    aput-object v6, v5, v7

    new-array v6, v8, [Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 3126
    .local v2, "success":Z
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear database after container remove : result  is called and the removal is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    return-void

    .line 3121
    .end local v0    # "idValue":Ljava/lang/String;
    .end local v2    # "success":Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopVpnConnectionIfContainerRemoved(I)Z

    goto :goto_0
.end method

.method private convertIntegerToBooleanInDatabase(I)Z
    .locals 4
    .param p1, "databaseValue"    # I

    .prologue
    const/4 v0, 0x1

    .line 2788
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2789
    :cond_0
    if-ne p1, v0, :cond_2

    .line 2790
    .local v0, "success":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2791
    :cond_1
    return v0

    .line 2789
    .end local v0    # "success":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNotification()V
    .locals 27

    .prologue
    .line 2826
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v2, "In create notification : creating notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    .line 2829
    .local v18, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2830
    .local v10, "entry":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In create notification : KeySet key :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 2832
    .local v25, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v19

    .line 2833
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    const/16 v17, 0x0

    .line 2834
    .local v17, "isAnyPackageRunning":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 2835
    .local v22, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In create notification : Running through vpnstate to test : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 2837
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In create notification : Met true dont remove the profile : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_4
    const/16 v17, 0x1

    .line 2842
    .end local v22    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_5
    if-nez v17, :cond_0

    .line 2843
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In create notification : Removeing profiles not getting used from map: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2847
    .end local v10    # "entry":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "isAnyPackageRunning":Z
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v25    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_0
    move-exception v9

    .line 2849
    .local v9, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In create notification : Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 2852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2854
    .local v15, "identity":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    const v2, 0x10407cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2855
    .local v24, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    const v2, 0x10407ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2857
    .local v23, "text":Ljava/lang/String;
    const/16 v26, -0x1

    .line 2858
    .local v26, "width":I
    const/4 v11, -0x1

    .line 2859
    .local v11, "height":I
    const/4 v14, 0x0

    .line 2861
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2862
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_7

    .line 2863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 2864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2865
    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v1, v2, v0, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2866
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v26

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mBitmap:Landroid/graphics/Bitmap;

    .line 2867
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2868
    .local v7, "c":Landroid/graphics/Canvas;
    invoke-virtual {v14, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2869
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2872
    .end local v7    # "c":Landroid/graphics/Canvas;
    :cond_7
    const v21, 0x1080027

    .line 2874
    .local v21, "smallIcon":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2875
    .local v3, "intent":Landroid/content/Intent;
    const-string v1, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.EnterpriseVpnError"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2876
    const-string/jumbo v1, "vpn_error_profile_info"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2878
    .local v8, "contentIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v20

    .line 2887
    .local v20, "notification":Landroid/app/Notification;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "VPN_ERROR_RETRY"

    const/4 v4, 0x1

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2888
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2892
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "contentIntent":Landroid/app/PendingIntent;
    .end local v11    # "height":I
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "identity":J
    .end local v20    # "notification":Landroid/app/Notification;
    .end local v21    # "smallIcon":I
    .end local v23    # "text":Ljava/lang/String;
    .end local v24    # "title":Ljava/lang/String;
    .end local v26    # "width":I
    :goto_1
    return-void

    .line 2890
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V

    goto :goto_1
.end method

.method private createNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 2816
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2817
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2818
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V

    .line 2823
    :cond_0
    :goto_0
    return-void

    .line 2820
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "can not create a notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createVpnFromDatabase()V
    .locals 14

    .prologue
    .line 2702
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v8, "create vpn from database is reached "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_0
    const/4 v0, -0x1

    .line 2705
    .local v0, "adminid":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "Vpn_table"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "profile"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "adminUid"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "Authentication"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "BackupServer_status"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "BackupServer"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, "DPD"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "GroupName"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, "IPSEC_Type"

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "IKE"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const-string v13, "Default_Route"

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "User_Auth"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    const-string v13, "Mobike"

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string v13, "DH_Group"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    const-string v13, "Phase_Mode"

    aput-object v13, v11, v12

    const/16 v12, 0xe

    const-string v13, "PFS"

    aput-object v13, v11, v12

    const/16 v12, 0xf

    const-string v13, "PSK"

    aput-object v13, v11, v12

    const/16 v12, 0x10

    const-string v13, "SuiteBType"

    aput-object v13, v11, v12

    const/16 v12, 0x11

    const-string v13, "Host"

    aput-object v13, v11, v12

    const/16 v12, 0x12

    const-string v13, "Username"

    aput-object v13, v11, v12

    const/16 v12, 0x13

    const-string v13, "Split_Tunnel_type"

    aput-object v13, v11, v12

    const/16 v12, 0x14

    const-string v13, "CA_Password"

    aput-object v13, v11, v12

    const/16 v12, 0x15

    const-string v13, "User_Password"

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2730
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The length of cvList is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_1
    if-eqz v2, :cond_4

    .line 2732
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2733
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;-><init>()V

    .line 2734
    .local v4, "eVpn":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    const-string v7, "profile"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    .line 2735
    const-string v7, "adminUid"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2736
    const-string v7, "Authentication"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    .line 2737
    const-string v7, "BackupServer_status"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->convertIntegerToBooleanInDatabase(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupServerEnabled:Z

    .line 2738
    const-string v7, "BackupServer"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupVPNServer:Ljava/lang/String;

    .line 2739
    const-string v7, "DPD"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->convertIntegerToBooleanInDatabase(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->deadPeerDetect:Z

    .line 2740
    const-string v7, "GroupName"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->groupname:Ljava/lang/String;

    .line 2741
    const-string v7, "IPSEC_Type"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->iPSecIDType:I

    .line 2742
    const-string v7, "IKE"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->ikeVersion:I

    .line 2743
    const-string v7, "Default_Route"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->convertIntegerToBooleanInDatabase(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isDefaultrouteEnabled:Z

    .line 2744
    const-string v7, "User_Auth"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->convertIntegerToBooleanInDatabase(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isUserAuthEnabled:Z

    .line 2745
    const-string v7, "Mobike"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->convertIntegerToBooleanInDatabase(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->mobikeEnabled:Z

    .line 2746
    const-string v7, "DH_Group"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1DHGroup:I

    .line 2747
    const-string v7, "Phase_Mode"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1Mode:I

    .line 2748
    const-string v7, "PFS"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->convertIntegerToBooleanInDatabase(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->pfs:Z

    .line 2749
    const-string v7, "PSK"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->psk:Ljava/lang/String;

    .line 2750
    const-string v7, "SuiteBType"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->suiteBType:I

    .line 2751
    const-string v7, "Host"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    .line 2752
    const-string v7, "Username"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->username:Ljava/lang/String;

    .line 2753
    const-string v7, ""

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->password:Ljava/lang/String;

    .line 2754
    const-string v7, "Split_Tunnel_type"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->splitTunnelType:I

    .line 2755
    iget-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->byteArrayToArrayListConverter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    .line 2756
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The forwardRoutes is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8, v0}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->createConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;I)Z

    move-result v6

    .line 2758
    .local v6, "success":Z
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vpn profile has been retrieved after uninstall"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and its result is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2761
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "eVpn":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "success":Z
    :catch_0
    move-exception v3

    .line 2762
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error at create vpn from database Method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method private deleteUIDFromPackageData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2484
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enforceEnterpriseVpnPermission()I
    .locals 2

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceOwnerOnlyAndEnterpriseVpnPermission()I
    .locals 3

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private findUid()I
    .locals 1

    .prologue
    .line 491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 492
    .local v0, "id":I
    return v0
.end method

.method private declared-synchronized getCidFromDatabase(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3930
    monitor-enter p0

    const/4 v9, 0x0

    .line 3931
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v1, :cond_2

    .line 3932
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3934
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "EnterpriseVpn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CID"

    aput-object v4, v2, v3

    const-string v3, "profileName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "CID"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3943
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 3944
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCidFromDatabase : cursor.size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3946
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3947
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3948
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 3950
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3951
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    .line 3954
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v9, v10

    .line 3959
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    return-object v9

    .line 3954
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3930
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    :goto_1
    monitor-exit p0

    throw v1

    .line 3954
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v9, v10

    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 3930
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_3
    move-exception v1

    move-object v9, v10

    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private getConnectionManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mConnectionManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mConnectionManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3864
    const/4 v0, 0x0

    .line 3865
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

    .line 3866
    return-object v0
.end method

.method private getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;
    .locals 1

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    if-nez v0, :cond_0

    .line 3099
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->initLooperThread()V

    .line 3101
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    return-object v0
.end method

.method private getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->bindMocanaVpnInterface()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 4

    .prologue
    .line 342
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 344
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 345
    :cond_1
    if-eqz v0, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_2

    .line 347
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 348
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationManager:Landroid/app/NotificationManager;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static declared-synchronized getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 274
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 277
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mIPackageManager:Landroid/content/pm/IPackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPersonaManager()Landroid/os/IPersonaManager;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mPersonaManager:Landroid/os/IPersonaManager;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method

.method private getUidOfPackageWithUserId(Ljava/lang/String;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 1349
    const/4 v4, -0x1

    .line 1350
    .local v4, "uidOfPackageWithUserId":I
    const/4 v0, -0x1

    .line 1351
    .local v0, "applicationUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1353
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1354
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1355
    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1359
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 1356
    :catch_0
    move-exception v1

    .line 1357
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "The mentioned package is not present in the user"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUserIdOfPackage(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1363
    const/4 v4, -0x1

    .line 1364
    .local v4, "userIdOfPackage":I
    const/4 v0, -0x1

    .line 1365
    .local v0, "applicationUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1367
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1368
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1369
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1373
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 1370
    :catch_0
    move-exception v1

    .line 1371
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v6, "The mentioned package is not present in the user"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVpnObjectFromDB(Ljava/lang/String;I)Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I

    .prologue
    .line 2522
    const/4 v3, 0x0

    .line 2523
    .local v3, "profileName":Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, "uid":I
    const/4 v6, -0x1

    .local v6, "cid":I
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2524
    .local v11, "userId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "EnterpriseVpn"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "applicationInfo"

    aput-object v13, v4, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "profileName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "UID_APP"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "CID"

    aput-object v15, v13, v14

    invoke-virtual {v1, v2, v4, v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2533
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_2

    .line 2535
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v2, "getting vpn object from database : Cursor not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 2537
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v1, "profileName"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2538
    const-string v1, "UID_APP"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2539
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Just a check to make sure the uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "and the package uid are the same "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    const-string v1, "CID"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2541
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Just a check to make sure the container id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "and the userId uid are the same "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting vpn object from database : Uid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Profile:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " packageName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_1
    const/4 v1, -0x1

    if-le v5, v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 2544
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2551
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v1

    .line 2547
    :catch_0
    move-exception v9

    .line 2548
    .local v9, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting vpn object from database : Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMocanaServiceDisconnect()V
    .locals 15

    .prologue
    .line 3753
    const/4 v11, 0x0

    .line 3754
    .local v11, "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v13, "handle service disconnect to mocana : Trying to add blocking rules"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    const/4 v7, 0x0

    .line 3756
    .local v7, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v12, "connectivity"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v7

    .line 3757
    const/4 v4, 0x0

    .line 3758
    .local v4, "interfaceName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3759
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3760
    .local v9, "profileName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3761
    .local v10, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v10, :cond_5

    .line 3762
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v6

    .line 3763
    .local v6, "list":Ljava/util/ArrayList;
    if-eqz v6, :cond_0

    .line 3764
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3765
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3766
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 3767
    .restart local v11    # "vpnObj":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 3768
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3769
    .local v8, "packageName":Ljava/lang/String;
    const-string v12, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3770
    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->handleMocanaServiceDisconnectForContainerPackages(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)Z

    .line 3771
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    .line 3765
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3774
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3775
    iget-object v12, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v13

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3776
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v12

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v13

    invoke-direct {p0, v9, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 3777
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V

    goto :goto_2

    .line 3780
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 3782
    const/4 v12, 0x1

    :try_start_0
    invoke-interface {v7, v9, v12}, Landroid/net/IConnectivityManager;->disconnect(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3786
    :goto_3
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v12, :cond_4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 3787
    :cond_4
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v12, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    goto/16 :goto_0

    .line 3783
    :catch_0
    move-exception v0

    .line 3784
    .local v0, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    goto :goto_3

    .line 3790
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v5    # "length":I
    .end local v6    # "list":Ljava/util/ArrayList;
    :cond_5
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v13, "handle service disconnect to mocana : vpn entry is returned null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3794
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "profileName":Ljava/lang/String;
    .end local v10    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_6
    const/4 v12, 0x0

    :try_start_1
    invoke-interface {v7, v12}, Landroid/net/IConnectivityManager;->disconnectSystemVpn(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3798
    :goto_4
    return-void

    .line 3795
    :catch_1
    move-exception v0

    .line 3796
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    goto :goto_4
.end method

.method private handleMocanaServiceDisconnectForContainerPackages(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)Z
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "vpnObj"    # Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .prologue
    .line 3801
    const/4 v0, 0x0

    .line 3803
    .local v0, "allPackagesRemoved":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileAddedAllPackagesToVpn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3804
    const/4 v0, 0x1

    .line 3805
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3806
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v3

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3807
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3812
    :cond_0
    :goto_0
    return v0

    .line 3809
    :catch_0
    move-exception v1

    .line 3810
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at handleMocanaServiceDisconnectForContainerPackages method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized initLooperThread()V
    .locals 2

    .prologue
    .line 3105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    if-nez v0, :cond_0

    .line 3106
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    .line 3107
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;->start()V

    .line 3108
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "init looper thread called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3110
    :cond_0
    monitor-exit p0

    return-void

    .line 3105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initializeHashtable()V
    .locals 25

    .prologue
    .line 2247
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v20, "init hash table called"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    sget-object v20, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->syncObj:Ljava/lang/Object;

    monitor-enter v20

    .line 2250
    const/4 v10, 0x0

    .line 2252
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v21, "Vpn_table"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 2254
    .local v14, "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 2256
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v21, "VPN INFO: Old Framework is enabled. Set the system property"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const-string v5, "net.vpn.framework"

    const-string v21, "1.0"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v21, "EnterpriseVpn"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2261
    .local v13, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v7, 0x0

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2262
    .local v6, "profileName":Ljava/lang/String;
    const/4 v8, -0x1

    .local v8, "uid":I
    const/4 v9, -0x1

    .local v9, "cid":I
    const/4 v11, -0x1

    .line 2263
    .local v11, "container_State":I
    const/4 v4, 0x0

    .line 2264
    .local v4, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v13, :cond_4

    .line 2265
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v21, "init hash table : Cursor not null"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 2267
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v5, "applicationInfo"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2268
    const-string v5, "profileName"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2269
    const-string v5, "CID"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2270
    const-string v5, "UID_APP"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2271
    const-string v5, "containerState"

    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2272
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "init hash table : Uid:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Profile:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "init hash table : Adding new entry to hashMap: { uid:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", packageName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", profileName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "}"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v5, -0x1

    if-gt v8, v5, :cond_2

    const/4 v5, 0x1

    if-ne v11, v5, :cond_1

    .line 2276
    :cond_2
    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .end local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2277
    .restart local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2278
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v21, "init hash table : ProfileName found in map. Add to the list."

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 2280
    .local v19, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v18

    .line 2281
    .local v18, "profileNameVpnMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    .end local v18    # "profileNameVpnMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2297
    .end local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "cid":I
    .end local v11    # "container_State":I
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_0
    move-exception v15

    .line 2298
    .local v15, "e":Ljava/lang/Exception;
    if-eqz v10, :cond_3

    .line 2299
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2300
    :cond_3
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "init hash table : Exception when reading DB:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2303
    return-void

    .line 2283
    .restart local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "uid":I
    .restart local v9    # "cid":I
    .restart local v11    # "container_State":I
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v14    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v21, "init hash table : ProfileName not found in Map. Add a new list."

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    new-instance v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 2287
    .restart local v19    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setVpnStateList(Ljava/util/ArrayList;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->refreshDomainInHashMap(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2302
    .end local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "uid":I
    .end local v9    # "cid":I
    .end local v11    # "container_State":I
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v19    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2294
    .restart local v4    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "uid":I
    .restart local v9    # "cid":I
    .restart local v11    # "container_State":I
    .restart local v13    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v14    # "cvListProp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_4
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 2295
    :cond_7
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v5, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private initializeVpnDataAndVendors()V
    .locals 4

    .prologue
    .line 2901
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v2, "initializeVpnDataAndVendors"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v0

    .line 2905
    .local v0, "state":Z
    if-eqz v0, :cond_1

    .line 2906
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeHashtable : Have to wait until migration done : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :goto_0
    return-void

    .line 2910
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setupIntentFilter()V

    .line 2911
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->initializeHashtable()V

    goto :goto_0
.end method

.method private insertFipsModeInDatabase(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 2003
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2004
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2005
    const-string v3, "fips_mode"

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2006
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Fips_Vpn_table"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2010
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 2007
    :catch_0
    move-exception v1

    .line 2008
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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
    .line 2144
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2146
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const/4 v0, 0x1

    .line 2150
    :goto_0
    return v0

    .line 2149
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 386
    .local v3, "pManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 388
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 389
    .local v2, "pInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 390
    .local v0, "applicationUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-nez v5, :cond_0

    .line 391
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 392
    const/4 v4, 0x1

    .line 398
    .end local v0    # "applicationUid":I
    .end local v2    # "pInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v4

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

.method private isPackageInstalledInPersona(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    const/4 v4, 0x0

    .line 402
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageInstalledAcrossPersona: packageName value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "personaId value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 404
    .local v3, "pManager":Landroid/content/pm/IPackageManager;
    if-eqz v3, :cond_2

    .line 406
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 407
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 408
    .local v0, "applicationUid":I
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageInstalledAcrossPersona: applicationUid value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_1
    const/4 v4, 0x1

    .line 414
    .end local v0    # "applicationUid":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    return v4

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageInstalledInPersona: Package installed check: Package Name not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private killVpnService(I)V
    .locals 0
    .param p1, "vpnServicePid"    # I

    .prologue
    .line 2108
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 2109
    return-void
.end method

.method private printPackageVpnMap()V
    .locals 10

    .prologue
    .line 2176
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v6, :cond_3

    .line 2177
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "********************Printing package map ********************"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2180
    .local v5, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2181
    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 2182
    .local v2, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .line 2183
    .local v3, "length":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2184
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, ":[ "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 2186
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 2187
    .local v4, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v4, :cond_0

    .line 2188
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", packageName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", profileName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " interface:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " state:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

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

    .line 2185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2188
    :cond_1
    const-string v6, "STOPPED "

    goto :goto_1

    .line 2194
    .end local v4    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "] "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/Object;
    .end local v3    # "length":I
    .end local v5    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "-----------------Printing packageNameVpnMap--------------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_3
    return-void

    .line 2195
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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
    .line 2203
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v9, :cond_2

    .line 2204
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "********************Printing profile map ********************"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 2207
    .local v7, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2208
    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 2209
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .line 2210
    .local v4, "length":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2211
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, ":[ "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_5

    .line 2213
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2214
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 2215
    .local v8, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v8, :cond_3

    .line 2216
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interfaceName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2218
    .local v5, "list":Ljava/util/ArrayList;
    if-eqz v5, :cond_4

    .line 2219
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 2220
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 2221
    .local v6, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-eqz v6, :cond_1

    .line 2222
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ uid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", packageName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", profileName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " interface:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " state:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getState()I

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

    .line 2219
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2222
    :cond_0
    const-string v9, "STOPPED "

    goto :goto_2

    .line 2229
    :cond_1
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "List contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2239
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v4    # "length":I
    .end local v5    # "list":Ljava/util/ArrayList;
    .end local v6    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_0
    move-exception v0

    .line 2240
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "-----------------Printing profileNameVpnMap--------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_2
    return-void

    .line 2234
    .restart local v1    # "i":I
    .restart local v3    # "keys":[Ljava/lang/Object;
    .restart local v4    # "length":I
    .restart local v7    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_3
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "ProfileNameVpnEntry contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "]},"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2238
    .end local v8    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v10, "] "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private printVpnState()V
    .locals 9

    .prologue
    .line 2156
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v6, :cond_2

    .line 2157
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAllConnections(I)Ljava/util/List;

    move-result-object v5

    .line 2158
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

    .line 2159
    .local v0, "c":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    const-string v6, "key_vpn"

    iget-object v7, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v3

    .line 2160
    .local v3, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v4, 0x0

    .line 2161
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v6

    if-nez v6, :cond_1

    .line 2162
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 2165
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_0

    .line 2166
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2170
    .end local v0    # "c":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "vpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    :catch_0
    move-exception v1

    .line 2171
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2173
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private refreshDomainInHashMap(Ljava/lang/String;)V
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3889
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getCidFromDatabase(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v6, :cond_1

    .line 3891
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "\u250c #################### Printing domain map - START #################### \u2510"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Domain Count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3895
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3896
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 3897
    .local v3, "itemStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 3898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3897
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3901
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{ProfileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    domains : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "]},"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3906
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3907
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 3909
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "\u2514 #################### Printing domain map - END #################### \u2518"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    :cond_1
    return-void

    .line 3902
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "itemStr":Ljava/lang/String;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 3905
    .end local v1    # "i":I
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "] "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private removeFromHashMapByPackageName(Ljava/lang/String;)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2393
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->syncObj:Ljava/lang/Object;

    monitor-enter v17

    .line 2395
    :try_start_0
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "In remove package"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 2397
    .local v12, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    if-nez v12, :cond_0

    .line 2398
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "Package name not found in the map"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    monitor-exit v17

    .line 2481
    :goto_0
    return-void

    .line 2401
    :cond_0
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v10

    .line 2402
    .local v10, "profileName":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v13

    .line 2403
    .local v13, "uid":I
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v4

    .line 2404
    .local v4, "cid":I
    const-string v16, "ADD_ALL_PACKAGES"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 2406
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I

    move-result v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2411
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 2413
    .local v15, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v15, :cond_e

    .line 2414
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "remove package : VpnEntry is not NULL"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v7

    .line 2416
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    if-eqz v7, :cond_1

    .line 2417
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2419
    :cond_1
    const/4 v3, 0x1

    .line 2420
    .local v3, "bringDownVpn":Z
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_7

    .line 2421
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 2422
    .local v8, "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v16

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 2423
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Don\'t ring down vpn as one of the package is running : { cid : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

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

    .line 2426
    const/4 v3, 0x0

    .line 2434
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "localState":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_3
    :goto_2
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_9

    .line 2435
    const-string v16, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 2436
    .local v11, "response":Landroid/app/enterprise/EnterpriseResponseData;
    if-eqz v11, :cond_9

    .line 2437
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2438
    .local v14, "value":Ljava/lang/String;
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v16, :cond_4

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Going to stop the connection as no applications are applicable any more for profile:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_4
    if-eqz v14, :cond_c

    const-string v16, "CONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    const-string v16, "CONNECTING"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-eqz v16, :cond_c

    .line 2442
    :cond_5
    :try_start_1
    const-string v16, "key_vpn"

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 2444
    if-nez v11, :cond_8

    .line 2445
    const-string v16, "key_vpn"

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 2446
    if-nez v11, :cond_8

    .line 2448
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Error / can\'t stop : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2449
    :try_start_2
    monitor-exit v17

    goto/16 :goto_0

    .line 2480
    .end local v3    # "bringDownVpn":Z
    .end local v4    # "cid":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v13    # "uid":I
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 2408
    .restart local v4    # "cid":I
    .restart local v10    # "profileName":Ljava/lang/String;
    .restart local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .restart local v13    # "uid":I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2409
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 2431
    .restart local v3    # "bringDownVpn":Z
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .restart local v15    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 2454
    .restart local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v14    # "value":Ljava/lang/String;
    :cond_8
    :try_start_4
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2474
    .end local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    :goto_3
    :try_start_5
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "remove package : Printing after "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v16, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 2476
    :cond_a
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v16, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 2480
    .end local v3    # "bringDownVpn":Z
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    :cond_b
    :goto_4
    monitor-exit v17

    goto/16 :goto_0

    .line 2457
    .restart local v3    # "bringDownVpn":Z
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .restart local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2458
    .local v5, "e":Ljava/lang/Exception;
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2461
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 2462
    .local v9, "profileErrorMessageSuccess":Z
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : errorMessage : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    if-eqz v9, :cond_9

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v16

    if-lez v16, :cond_d

    .line 2466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V

    goto/16 :goto_3

    .line 2468
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V

    goto/16 :goto_3

    .line 2478
    .end local v3    # "bringDownVpn":Z
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v9    # "profileErrorMessageSuccess":Z
    .end local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v14    # "value":Ljava/lang/String;
    :cond_e
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "remove package : ProfileNameVpnEntry returned null"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method private removeFromHashMapByProfileName(Ljava/lang/String;)V
    .locals 19
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2335
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->syncObj:Ljava/lang/Object;

    monitor-enter v16

    .line 2337
    const/4 v6, 0x0

    .line 2338
    .local v6, "interfaceName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 2339
    .local v14, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v14, :cond_9

    .line 2340
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2341
    .local v8, "list":Ljava/util/ArrayList;
    if-eqz v8, :cond_8

    .line 2342
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2343
    .local v7, "length":I
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove profile : profilename, length :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 2345
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2346
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getUid()I

    move-result v12

    .line 2347
    .local v12, "uid":I
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v3

    .line 2348
    .local v3, "cid":I
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 2349
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove profile : loop, pckgename/uid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    const-string v15, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v15, v3, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 2353
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2358
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2359
    .local v10, "profileErrorMessageSuccess":Z
    if-eqz v10, :cond_1

    .line 2360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 2362
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V

    .line 2344
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2355
    .end local v10    # "profileErrorMessageSuccess":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v15, v12, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2356
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_1

    .line 2389
    .end local v3    # "cid":I
    .end local v5    # "i":I
    .end local v7    # "length":I
    .end local v8    # "list":Ljava/util/ArrayList;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v14    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 2364
    .restart local v3    # "cid":I
    .restart local v5    # "i":I
    .restart local v7    # "length":I
    .restart local v8    # "list":Ljava/util/ArrayList;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "profileErrorMessageSuccess":Z
    .restart local v12    # "uid":I
    .restart local v14    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V

    goto :goto_2

    .line 2368
    .end local v3    # "cid":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "profileErrorMessageSuccess":Z
    .end local v12    # "uid":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v15, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 2371
    const-string v15, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 2372
    .local v11, "response":Landroid/app/enterprise/EnterpriseResponseData;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v15

    if-nez v15, :cond_6

    .line 2373
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2374
    .local v13, "value":Ljava/lang/String;
    if-eqz v13, :cond_6

    const-string v15, "CONNECTED"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "CONNECTING"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    if-eqz v15, :cond_6

    .line 2376
    :cond_5
    :try_start_2
    const-string v15, "key_vpn"

    new-instance v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2382
    .end local v13    # "value":Ljava/lang/String;
    :cond_6
    :goto_3
    :try_start_3
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v17, "remove profile : Printing after "

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v15, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 2384
    :cond_7
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v15, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 2389
    .end local v5    # "i":I
    .end local v7    # "length":I
    .end local v8    # "list":Ljava/util/ArrayList;
    .end local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    :cond_8
    :goto_4
    monitor-exit v16

    .line 2390
    return-void

    .line 2377
    .restart local v5    # "i":I
    .restart local v7    # "length":I
    .restart local v8    # "list":Ljava/util/ArrayList;
    .restart local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2378
    .local v4, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove profile : Exception:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2387
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v7    # "length":I
    .end local v8    # "list":Ljava/util/ArrayList;
    .end local v11    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "value":Ljava/lang/String;
    :cond_9
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v17, "remove profile : ProfileNameVpnEntry returned null"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method private removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2584
    const/4 v1, 0x0

    .line 2585
    .local v1, "profileErrorMessageSuccess":Z
    if-eqz p1, :cond_2

    .line 2587
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2588
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2589
    if-eqz v1, :cond_0

    .line 2590
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2592
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2600
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 2601
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 2603
    :cond_2
    return-void

    .line 2594
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2597
    :catch_0
    move-exception v0

    .line 2598
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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
    .line 2606
    const/4 v1, 0x0

    .line 2607
    .local v1, "profileErrorMessageSuccess":Z
    const/4 v3, 0x0

    .line 2608
    .local v3, "success":Z
    const/4 v2, 0x0

    .line 2609
    .local v2, "removeSuccess":Z
    if-eqz p1, :cond_0

    .line 2611
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2612
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    .line 2617
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2618
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2619
    if-eqz v1, :cond_0

    .line 2620
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2622
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2631
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 2632
    :cond_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 2633
    :cond_2
    return v2

    .line 2624
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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
    .line 2095
    const/4 v4, -0x1

    .line 2096
    .local v4, "vpnServicePid":I
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2097
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 2098
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

    .line 2099
    .local v3, "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2100
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 2101
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->killVpnService(I)V

    .line 2105
    .end local v3    # "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-void
.end method

.method private runAllVpnService()V
    .locals 22

    .prologue
    .line 2637
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : runAllVpnService beginning"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I

    .line 2639
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cancelNotification()V

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 2642
    .local v14, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2643
    :cond_0
    invoke-interface {v14}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 2644
    .local v8, "keys":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v9, v8

    .line 2645
    .local v9, "length":I
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2646
    :cond_1
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : Mocanainterface:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_b

    .line 2649
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 2650
    const-string v18, "key_vpn"

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v12

    .line 2651
    .local v12, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/4 v15, 0x0

    .line 2652
    .local v15, "value":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v17

    if-nez v17, :cond_3

    .line 2653
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "value":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 2656
    .restart local v15    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_9

    .line 2657
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    aget-object v18, v8, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 2659
    .local v16, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    const/4 v11, 0x0

    .line 2660
    .local v11, "packageRunningFlag":Z
    if-eqz v16, :cond_5

    .line 2661
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v10

    .line 2662
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 2663
    .local v13, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getCid()I

    move-result v4

    .line 2664
    .local v4, "cid":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v4, v0, :cond_4

    .line 2665
    const/4 v11, 0x1

    goto :goto_1

    .line 2670
    .end local v4    # "cid":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    .end local v13    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_5
    const-string v17, "IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "FAILED"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2671
    :cond_6
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Calling startConnection"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileAddedAllPackagesToVpn(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2673
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I

    .line 2677
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v18, v0

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    new-instance v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2679
    const-string v18, "key_vpn"

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v12

    .line 2680
    const/4 v15, 0x0

    .line 2681
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v17

    if-nez v17, :cond_8

    .line 2682
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "value":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 2683
    .restart local v15    # "value":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 2684
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Cannot start vpn, mocana returned error:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_7
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2687
    :cond_8
    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Cannot start vpn, mocana returned error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    .end local v11    # "packageRunningFlag":Z
    .end local v12    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2675
    .restart local v11    # "packageRunningFlag":Z
    .restart local v12    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v15    # "value":Ljava/lang/String;
    .restart local v16    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllorPerAppFlag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2693
    .end local v11    # "packageRunningFlag":Z
    .end local v12    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_0
    move-exception v5

    .line 2695
    .local v5, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Exception: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2699
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b
    return-void
.end method

.method private setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    .locals 17
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "startUid"    # I
    .param p3, "stopUid"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3692
    if-eqz p1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 3693
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the setDnsSystemProperty  profileName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    :cond_0
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the setDnsSystemProperty  start uid value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    :cond_1
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the setDnsSystemProperty  stop uid value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    :cond_2
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the setDnsSystemProperty  interfaceName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3698
    .local v13, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    const/4 v4, 0x0

    .line 3699
    .local v4, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3700
    .local v3, "dnsArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 3701
    .local v9, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3703
    .local v10, "searchDomains":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 3704
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getDnsList()Ljava/util/List;

    move-result-object v4

    .line 3705
    if-eqz v4, :cond_8

    .line 3706
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dnsArray":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 3707
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getSearchDomainList()Ljava/util/List;

    move-result-object v9

    .line 3708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3709
    .local v2, "buffer":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_4

    .line 3710
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3711
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3714
    .end local v5    # "domain":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3716
    :try_start_0
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v14, :cond_6

    .line 3717
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v14, v3

    if-ge v8, v14, :cond_6

    .line 3718
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the setDnsSystemProperty  dnsArray value["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v3, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3721
    .end local v8    # "j":I
    :cond_6
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v14, :cond_7

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the setDnsSystemProperty  searchDomains value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3723
    .local v11, "token":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v3, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 3725
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3733
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "dnsArray":[Ljava/lang/String;
    .end local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "searchDomains":Ljava/lang/String;
    .end local v11    # "token":J
    .end local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_8
    :goto_2
    return-void

    .line 3727
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    .restart local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "searchDomains":Ljava/lang/String;
    .restart local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_0
    move-exception v6

    .line 3728
    .local v6, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setting dns property : Exception in new dns properties file creation and the error is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setupIntentFilter()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2915
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setup intent filter is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;)V

    .line 2917
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2918
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2919
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2920
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2921
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2922
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2923
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2924
    const-string v0, "com.samsung.android.mdm.VPN_RETRY_CALLBACK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2925
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2926
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2927
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2928
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2929
    return-void
.end method

.method private startUidOfPersona(I)I
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 1377
    const/4 v1, -0x1

    .line 1379
    .local v1, "firstUid":I
    const v2, 0x186a0

    mul-int v1, p1, v2

    .line 1380
    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUidOfPersona - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :cond_0
    :goto_0
    return v1

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUidOfPersona Error"

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

.method private stopAllVpnService()V
    .locals 9

    .prologue
    .line 2794
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "stop all vpn :  beginning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2796
    .local v4, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stop all vpn : profileNames:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 2798
    .local v2, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .line 2799
    .local v3, "length":I
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stop all vpn : Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 2802
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v5, v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v5, :cond_2

    .line 2803
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v6, v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    aget-object v5, v2, v1

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v8

    invoke-interface {v6, v5, v7, v8}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->stopConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2805
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "stop all vpn : Cannot stop vpn, mocana returned error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2800
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2808
    :catch_0
    move-exception v0

    .line 2810
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stop all vpn : Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2813
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    return-void
.end method

.method private stopUidOfPersona(I)I
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 1388
    const/4 v1, -0x1

    .line 1389
    .local v1, "firstUid":I
    const/4 v2, -0x1

    .line 1391
    .local v2, "lastUid":I
    const v3, 0x186a0

    mul-int v1, p1, v3

    .line 1392
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_0
    const v3, 0x1869f

    add-int v2, v1, v3

    .line 1394
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :cond_1
    :goto_0
    return v2

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona Error"

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

.method private stopVpnConnectionAfterAdminRemoval(I)V
    .locals 18
    .param p1, "uid"    # I

    .prologue
    .line 2555
    const/4 v9, 0x0

    .line 2556
    .local v9, "profileName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 2557
    .local v2, "adminUid":I
    const/4 v1, 0x1

    .line 2558
    .local v1, "adminIdCheckForRemoveConnection":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    .line 2561
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v11, :cond_2

    .line 2562
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

    .line 2563
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v11, "profile"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2564
    const-string v11, "adminUid"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2565
    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 2566
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2567
    .local v10, "status":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2568
    const-string v11, "FAILED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2569
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2570
    .local v7, "failedStatusCheck":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2571
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2572
    .local v6, "failedErrorCheck":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2574
    .end local v6    # "failedErrorCheck":Ljava/lang/String;
    .end local v7    # "failedStatusCheck":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnCallBack;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnCallBack;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v13

    invoke-interface {v11, v9, v12, v13}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->removeConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2578
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "status":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2579
    .local v5, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2581
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private stopVpnConnectionIfContainerRemoved(I)Z
    .locals 13
    .param p1, "containerId"    # I

    .prologue
    .line 3130
    const/4 v0, 0x0

    .line 3132
    .local v0, "connectionStopped":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    move-result-object v3

    .line 3136
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 3137
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3138
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v6, "applicationInfo"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3139
    .local v1, "containerizedPackageName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The PackageName which is going to be removed from VPN is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3147
    .end local v1    # "containerizedPackageName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 3148
    .local v4, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at stopVpnConnectionIfContainerRemoved :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 3142
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3144
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    .line 3145
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopVpnConnectionIfContainerRemoved: value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private declared-synchronized switchVpnMode()Z
    .locals 5

    .prologue
    .line 1989
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->switchFIPSMode()I

    move-result v1

    .line 1990
    .local v1, "switchStatus":I
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1991
    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1992
    const-string v2, "com.mocana.vpn.android"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->restartPerAppVpnService(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    const/4 v2, 0x1

    .line 1998
    .end local v1    # "switchStatus":I
    :goto_0
    monitor-exit p0

    return v2

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1998
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1989
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private unsetDnsSystemProperty(Ljava/lang/String;II)V
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "startUid"    # I
    .param p3, "stopUid"    # I

    .prologue
    .line 3736
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsetDnsSystemProperty is reached : whose profileName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "whose start uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whose stop uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3739
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3740
    .local v3, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3741
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unsetDnsSystemProperty: interface name is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3743
    .local v1, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p2, p3}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V

    .line 3744
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3750
    .end local v1    # "token":J
    .end local v3    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_0
    :goto_0
    return-void

    .line 3746
    :catch_0
    move-exception v0

    .line 3747
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

.method private updateFipsModeInDatabase(IZ)Z
    .locals 14
    .param p1, "uid"    # I
    .param p2, "fips_mode_admin"    # Z

    .prologue
    .line 2014
    const/4 v4, -0x1

    .line 2015
    .local v4, "fips_int_value":I
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2016
    .local v5, "uidToString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2017
    const/4 v4, 0x1

    .line 2022
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    .line 2025
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 2026
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2027
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "fips_mode"

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2028
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v0, v7

    .line 2029
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 2030
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "Fips_Vpn_table"

    invoke-virtual {v7, v8, v0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2035
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "values":[Ljava/lang/String;
    :goto_1
    return v7

    .line 2019
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2032
    :catch_0
    move-exception v3

    .line 2033
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2035
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private declared-synchronized updateNotification(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 3914
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotification profileName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3917
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3918
    .local v2, "returnState":Ljava/lang/String;
    const-string v3, "CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3920
    const/4 v1, 0x0

    .line 3921
    .local v1, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 3922
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->updateEnterpriseVpn(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3927
    .end local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .end local v2    # "returnState":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 3924
    :catch_0
    move-exception v0

    .line 3925
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotification : Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3914
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized updatePackageData(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2488
    monitor-enter p0

    const/4 v1, -0x1

    .line 2489
    .local v1, "containerId":I
    if-eqz p1, :cond_2

    .line 2491
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2492
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The Package Name added is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " whose uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "and the containerId is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "applicationInfo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "CID"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "UID_APP"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2501
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2502
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "update to package : Cursor not null and data present, so update packageData UID in DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2504
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v6, "UID_APP"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2505
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "applicationInfo"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "CID"

    aput-object v7, v0, v6

    .line 2508
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2511
    .local v5, "values":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : update to package before DB insert:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    invoke-virtual {v6, v7, v0, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 2518
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "values":[Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v6

    .line 2514
    :catch_0
    move-exception v4

    .line 2515
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2518
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 2488
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized updateVpnModeAfterAdminRemoval()V
    .locals 6

    .prologue
    .line 2080
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfAnyAdminHasFipsMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v3, :cond_0

    .line 2081
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v0

    .line 2082
    .local v0, "currentMode":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2084
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->switchFIPSMode()I

    move-result v2

    .line 2085
    .local v2, "switchStatus":I
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2092
    .end local v0    # "currentMode":I
    .end local v2    # "switchStatus":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2089
    :catch_0
    move-exception v1

    .line 2090
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 2080
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized addAllPackagesToProfile(ILjava/lang/String;)Z
    .locals 23
    .param p1, "containerId"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1403
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v4

    .line 1404
    .local v4, "adminId":I
    const/4 v14, 0x0

    .line 1406
    .local v14, "success":Z
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    move v15, v14

    .line 1519
    .end local v14    # "success":Z
    .local v15, "success":I
    :goto_0
    monitor-exit p0

    return v15

    .line 1409
    .end local v15    # "success":I
    .restart local v14    # "success":Z
    :cond_1
    const/16 v16, 0x0

    .line 1410
    .local v16, "tempConnection":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_3

    .line 1412
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object v16

    .line 1413
    if-nez v16, :cond_2

    move v15, v14

    .line 1414
    .restart local v15    # "success":I
    goto :goto_0

    .line 1416
    .end local v15    # "success":I
    :cond_2
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addAllPackagesToProfile : The profile name is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1422
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v5

    .line 1423
    .local v5, "checkIfProfileHasDefaultRoute":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_4

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_5

    :cond_4
    move v15, v14

    .line 1424
    .restart local v15    # "success":I
    goto :goto_0

    .line 1417
    .end local v5    # "checkIfProfileHasDefaultRoute":I
    .end local v15    # "success":I
    :catch_0
    move-exception v7

    .line 1418
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addAllPackagesToProfile : Exception :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .line 1419
    .restart local v15    # "success":I
    goto/16 :goto_0

    .line 1427
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v15    # "success":I
    .restart local v5    # "checkIfProfileHasDefaultRoute":I
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfContainerHasPerApplicationEnabled(I)Z

    move-result v8

    .line 1428
    .local v8, "ifContainerHasPerApplicationEnabled":Z
    if-eqz v8, :cond_6

    move v15, v14

    .line 1429
    .restart local v15    # "success":I
    goto/16 :goto_0

    .line 1431
    .end local v15    # "success":I
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfContainerHasAddAllPackagesEnabled(I)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1432
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContainerState:I

    .line 1436
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1437
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v19, "adminUid"

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1438
    const-string v19, "profileName"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v19, "CID"

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1440
    const-string v19, "containerState"

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContainerState:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    const-string v19, "applicationInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v20, v0

    const-string v21, "ADD_ALL_PACKAGES"

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v19, "UID_APP"

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, -0x2

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1444
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "EnterpriseVpn"

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    .line 1445
    .local v13, "status":Z
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_12

    .line 1446
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v20, "addAllPackagesToProfile : put data by field is success"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    new-instance v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    const-string v20, "ADD_ALL_PACKAGES"

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1448
    .local v12, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_11

    .line 1451
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v20, "addAllPackagesToProfile : Network is connected via check network connection method"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1453
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1454
    const-string v19, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v10

    .line 1455
    .local v10, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v17, 0x0

    .line 1456
    .local v17, "value":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v19

    if-nez v19, :cond_7

    .line 1457
    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "value":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1458
    .restart local v17    # "value":Ljava/lang/String;
    :cond_7
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "add package to profile : addVpnProfileToApp - value ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    if-eqz v17, :cond_10

    .line 1462
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "add package to profile : Callback state: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const-string v19, "CONNECTED"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1464
    const/4 v9, 0x0

    .line 1465
    .local v9, "interfaceValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 1466
    .local v18, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v18, :cond_c

    .line 1467
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 1472
    :goto_1
    if-eqz v9, :cond_8

    .line 1473
    invoke-virtual {v12, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1475
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->startUidOfPersona(I)I

    move-result v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopUidOfPersona(I)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    .line 1476
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1506
    .end local v9    # "interfaceValue":Ljava/lang/String;
    .end local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_8
    :goto_2
    :try_start_6
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 1507
    :cond_9
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v19, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 1508
    :cond_a
    const/4 v14, 0x1

    .line 1513
    .end local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1515
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updateNotification(Ljava/lang/String;IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v13    # "status":Z
    :goto_4
    move v15, v14

    .line 1519
    .restart local v15    # "success":I
    goto/16 :goto_0

    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v15    # "success":I
    :cond_b
    move v15, v14

    .line 1434
    .restart local v15    # "success":I
    goto/16 :goto_0

    .line 1469
    .end local v15    # "success":I
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "interfaceValue":Ljava/lang/String;
    .restart local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .restart local v13    # "status":Z
    .restart local v17    # "value":Ljava/lang/String;
    .restart local v18    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_c
    :try_start_7
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v20, "add package to profile : ProfileNameVpnEntry returned null value"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1500
    .end local v9    # "interfaceValue":Ljava/lang/String;
    .end local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_1
    move-exception v7

    .line 1501
    .restart local v7    # "e":Landroid/os/RemoteException;
    :try_start_8
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "add package to profile : Exception at mocana:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1516
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v13    # "status":Z
    :catch_2
    move-exception v7

    .line 1517
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "add package to profile : Exception occured for adding vpn, package map."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 1403
    .end local v4    # "adminId":I
    .end local v5    # "checkIfProfileHasDefaultRoute":I
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ifContainerHasPerApplicationEnabled":Z
    .end local v14    # "success":Z
    .end local v16    # "tempConnection":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1478
    .restart local v4    # "adminId":I
    .restart local v5    # "checkIfProfileHasDefaultRoute":I
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "ifContainerHasPerApplicationEnabled":Z
    .restart local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .restart local v13    # "status":Z
    .restart local v14    # "success":Z
    .restart local v16    # "tempConnection":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_d
    :try_start_a
    const-string v19, "IDLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v21

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1481
    const-string v19, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 1482
    .local v11, "response2":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v17, 0x0

    .line 1483
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v19

    if-nez v19, :cond_f

    .line 1484
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "value":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1485
    .restart local v17    # "value":Ljava/lang/String;
    if-eqz v17, :cond_e

    .line 1487
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "add package to profile : Cannot start vpn, mocana returned error : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1491
    :cond_f
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v20, "add package to profile : Cannot start vpn, mocana returned error : Failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1497
    .end local v11    # "response2":Landroid/app/enterprise/EnterpriseResponseData;
    :cond_10
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v19, :cond_8

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "add package to profile : Cannot start vpn, profile has some problem:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 1504
    .end local v10    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v17    # "value":Ljava/lang/String;
    :cond_11
    :try_start_b
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v20, "add package to profile : Network is not connected via check network connection method"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1510
    .end local v12    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_12
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v20, "add package to profile : put data by field is failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3
.end method

.method public addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 28
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
    .line 1523
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v9

    .line 1524
    .local v9, "adminId":I
    new-instance v22, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct/range {v22 .. v22}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1525
    .local v22, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1526
    if-nez p2, :cond_0

    .line 1527
    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1679
    :goto_0
    return-object v22

    .line 1529
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    move/from16 v0, p1

    if-le v0, v4, :cond_1

    const-string v4, "com.mocana.vpn.android"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1530
    :cond_1
    const/4 v4, 0x1

    const/16 v5, 0x9

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1533
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1534
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "addVpnProfileToApp API : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v4, 0x1

    const/16 v5, 0xa

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1538
    :cond_3
    const-string v4, "ADD_ALL_PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1539
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addAllPackagesToProfile(ILjava/lang/String;)Z

    move-result v24

    .line 1540
    .local v24, "success":Z
    if-eqz v24, :cond_4

    .line 1541
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1542
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1545
    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1549
    .end local v24    # "success":Z
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v10

    .line 1550
    .local v10, "checkIfApplicationHasSystemUID":Z
    if-eqz v10, :cond_6

    .line 1551
    const/4 v4, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1554
    :cond_6
    const/16 v25, 0x0

    .line 1555
    .local v25, "tempConnection":Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_8

    .line 1557
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object v25

    .line 1558
    if-nez v25, :cond_7

    .line 1559
    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1563
    :catch_0
    move-exception v13

    .line 1564
    .local v13, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1565
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1562
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package in profile : The profile name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1569
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v11

    .line 1570
    .local v11, "checkIfProfileHasDefaultRoute":I
    const/4 v4, 0x1

    if-eq v11, v4, :cond_9

    const/4 v4, -0x1

    if-ne v11, v4, :cond_a

    .line 1571
    :cond_9
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1574
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfContainerHasAddAllPackagesEnabled(I)Z

    move-result v16

    .line 1575
    .local v16, "ifContainerHasAddAllPackagesEnabled":Z
    if-eqz v16, :cond_b

    .line 1576
    const/4 v4, 0x1

    const/16 v5, 0x9

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1579
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1580
    .local v14, "identity":J
    const/4 v7, -0x1

    .line 1582
    .local v7, "uid":I
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    .line 1583
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    .line 1584
    .local v17, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v17

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1585
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Package added by the admin is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whose container id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and whose uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1590
    .end local v17    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1591
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1592
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    const-string v4, "applicationInfo"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v4, "profileName"

    move-object/from16 v0, p3

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v4, "CID"

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1596
    const-string v4, "UID_APP"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1597
    const-string v4, "containerState"

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1599
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EnterpriseVpn"

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v23

    .line 1600
    .local v23, "status":Z
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_17

    .line 1602
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1604
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updateNotification(Ljava/lang/String;IZ)V

    .line 1605
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : put data by field is success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/4 v4, -0x1

    if-eq v7, v4, :cond_e

    .line 1607
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1608
    :cond_c
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1609
    .local v3, "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addToHashMap(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 1611
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, -0x1

    move/from16 v0, p1

    if-le v0, v4, :cond_16

    .line 1612
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Network is connected via check network connection method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1614
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_e

    .line 1615
    const-string v4, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v20

    .line 1616
    .local v20, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v26, 0x0

    .line 1617
    .local v26, "value":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_d

    .line 1618
    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "value":Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 1619
    .restart local v26    # "value":Ljava/lang/String;
    :cond_d
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : addVpnProfileToApp - value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    if-eqz v26, :cond_15

    .line 1621
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Callback state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const-string v4, "CONNECTED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1623
    const/16 v18, 0x0

    .line 1624
    .local v18, "interfaceValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 1625
    .local v27, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v27, :cond_11

    .line 1626
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    .line 1631
    :goto_2
    if-eqz v18, :cond_e

    .line 1632
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setInterface(Ljava/lang/String;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v0, v18

    invoke-virtual {v4, v7, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 1634
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    .line 1635
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->setState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1667
    .end local v3    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .end local v18    # "interfaceValue":Ljava/lang/String;
    .end local v20    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v26    # "value":Ljava/lang/String;
    .end local v27    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_e
    :goto_3
    :try_start_5
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v4, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 1668
    :cond_f
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v4, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 1669
    :cond_10
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1670
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1675
    .end local v23    # "status":Z
    :catch_1
    move-exception v13

    .line 1676
    .local v13, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1677
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1586
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 1587
    .restart local v13    # "e":Ljava/lang/Exception;
    const/4 v7, -0x1

    .line 1588
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The package name added is not found by the admin and so an invalid uid is added in the db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1628
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v3    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    .restart local v12    # "cv":Landroid/content/ContentValues;
    .restart local v18    # "interfaceValue":Ljava/lang/String;
    .restart local v20    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v23    # "status":Z
    .restart local v26    # "value":Ljava/lang/String;
    .restart local v27    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :cond_11
    :try_start_6
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : ProfileNameVpnEntry returned null value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1660
    .end local v18    # "interfaceValue":Ljava/lang/String;
    .end local v20    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v26    # "value":Ljava/lang/String;
    .end local v27    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    :catch_3
    move-exception v13

    .line 1661
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_7
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    goto/16 :goto_3

    .line 1637
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v20    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v26    # "value":Ljava/lang/String;
    :cond_12
    :try_start_8
    const-string v4, "IDLE"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1640
    const-string v4, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v21

    .line 1641
    .local v21, "response2":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v26, 0x0

    .line 1642
    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_14

    .line 1643
    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "value":Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 1644
    .restart local v26    # "value":Ljava/lang/String;
    if-eqz v26, :cond_13

    .line 1646
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Cannot start vpn, mocana returned error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_13
    :goto_4
    if-eqz v26, :cond_e

    .line 1652
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1649
    :cond_14
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Cannot start vpn, mocana returned error : Failure"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1657
    .end local v21    # "response2":Landroid/app/enterprise/EnterpriseResponseData;
    :cond_15
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1664
    .end local v20    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v26    # "value":Ljava/lang/String;
    :cond_16
    :try_start_9
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Network is not connected via check network connection method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1672
    .end local v3    # "state":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :cond_17
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : put data by field is failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0
.end method

.method public bindMocanaVpnInterface()V
    .locals 8

    .prologue
    .line 363
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "bind to mocana interface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-nez v2, :cond_0

    const-string v2, "com.mocana.vpn.android"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "bind to mocana interface : Mocana package found. Binding to it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mocana.vpn.BIND_MOCANA_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->cMocanaFipsConnect:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    .end local v0    # "identity":J
    :cond_0
    return-void
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .locals 13
    .param p1, "container_id"    # I

    .prologue
    .line 1164
    const/4 v3, 0x0

    .line 1165
    .local v3, "i":I
    const/4 v5, 0x0

    .line 1167
    .local v5, "retVal":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

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

    .line 1175
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1176
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1177
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

    .line 1178
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "applicationInfo"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1182
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "getting container package list in database : DB read for packages returned NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    return-object v5

    .line 1184
    :catch_0
    move-exception v2

    .line 1185
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1109
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 1110
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1111
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1112
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1114
    :try_start_0
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1115
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1116
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "enable to default route : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1132
    :cond_0
    :goto_0
    return-object v1

    .line 1120
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, p3, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->enableDefaultRoute(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1121
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable to default route : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1124
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1125
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized getAllEnterpriseVpnConnections(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
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
    .line 749
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 750
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 751
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, "mocanaVpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    if-eqz p1, :cond_0

    .line 755
    :try_start_1
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 757
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v4, "getting all vpn connection : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 761
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAllConnections(I)Ljava/util/List;

    move-result-object v1

    .line 762
    invoke-virtual {v2, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 763
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting all vpn connection : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 749
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mocanaVpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 765
    .restart local v1    # "mocanaVpnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Object;>;"
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 766
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getAllPackagesForProfile(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 19
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
    .line 1851
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v3

    .line 1852
    .local v3, "adminId":I
    const/4 v11, 0x0

    .line 1853
    .local v11, "retVal":[Ljava/lang/String;
    new-instance v10, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v10}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1854
    .local v10, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1856
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v12

    if-nez v12, :cond_0

    .line 1857
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v13, "getAllPackagesForProfile API : Mocana Service is not started"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v10, v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1901
    :goto_0
    return-object v10

    .line 1862
    :cond_0
    if-eqz p2, :cond_6

    const/4 v12, -0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_6

    .line 1863
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileHasAddAllPackagesEnabled(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1864
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getInstalledPackages(I)[Ljava/lang/String;

    move-result-object v11

    .line 1865
    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1866
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1870
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "EnterpriseVpn"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "profileName"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CID"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "applicationInfo"

    aput-object v18, v16, v17

    invoke-virtual/range {v12 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1878
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v12, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printPackageVpnMap()V

    .line 1879
    :cond_2
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->printProfileVpnMap()V

    .line 1880
    :cond_3
    const/4 v8, 0x0

    .line 1881
    .local v8, "i":I
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 1882
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v11, v12, [Ljava/lang/String;

    .line 1883
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1884
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v12, "applicationInfo"

    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1885
    .local v4, "containerizedPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    .line 1886
    add-int/lit8 v8, v8, 0x1

    .line 1887
    goto :goto_1

    .line 1888
    .end local v4    # "containerizedPackageName":Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1889
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1894
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 1895
    .local v7, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get all added package : Exceptionin notify: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-virtual {v10, v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1891
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "i":I
    :cond_5
    :try_start_1
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v13, "get all added package : DB read for packages returned NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const/4 v12, 0x1

    const/4 v13, 0x4

    invoke-virtual {v10, v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1899
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    :cond_6
    const/4 v12, 0x1

    const/4 v13, 0x2

    invoke-virtual {v10, v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0
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
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 894
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 895
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 896
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 897
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 899
    :try_start_0
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 900
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 901
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "getting CACertificate : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 917
    :cond_0
    :goto_0
    return-object v1

    .line 905
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getCACertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 906
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting CACertificate : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 909
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 910
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
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
    .line 3870
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 5
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
    .line 671
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 672
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 673
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 676
    :try_start_1
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 677
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 678
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "getting vpn connection : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 682
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 683
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting vpn connection : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 686
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;>;"
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_4
    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
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

    const/4 v5, 0x1

    .line 1030
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 1031
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1032
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1034
    :try_start_0
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1036
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "getting vpn error string : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1051
    :goto_0
    return-object v1

    .line 1040
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1041
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting vpn error string : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1044
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1045
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
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
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1082
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 1083
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1084
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1085
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1087
    :try_start_0
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1089
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "getting forward route : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1105
    :cond_0
    :goto_0
    return-object v1

    .line 1093
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getForwardRoutes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1094
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting forward route : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1097
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1098
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getInstalledPackages(I)[Ljava/lang/String;
    .locals 16
    .param p1, "containerId"    # I

    .prologue
    .line 1908
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1909
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1910
    .local v6, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1911
    .local v11, "token":J
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-interface {v9, v13, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    .line 1912
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1913
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1914
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1922
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "token":J
    :catch_0
    move-exception v1

    .line 1923
    .local v1, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in getInstalledPackages : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const/4 v7, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v7

    .line 1916
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "token":J
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    .line 1917
    .local v7, "installedPackagesArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1918
    .local v2, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1919
    .local v10, "str":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v10, v7, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 3874
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3875
    .local v4, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3876
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3877
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 3878
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3879
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3877
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3885
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    return-object v4
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

    const/4 v5, 0x1

    .line 1000
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 1001
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1002
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1004
    :try_start_0
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1006
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "getting vpn state : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1021
    :goto_0
    return-object v1

    .line 1010
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1011
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting vpn state : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1015
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
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
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 823
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 824
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 825
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 826
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 828
    :try_start_0
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 830
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "getting user certificate : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 846
    :cond_0
    :goto_0
    return-object v1

    .line 834
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getUserCertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 835
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting user certificate : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 839
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
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
    .line 1967
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 1968
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1969
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1971
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1972
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "getVpnModeOfOperation API : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1984
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1977
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v2, :cond_0

    .line 1978
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1979
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1981
    :catch_0
    move-exception v0

    .line 1982
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    goto :goto_0

    .line 1967
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isDefaultRouteEnabled(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
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

    .line 1136
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 1137
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1138
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1139
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1141
    :try_start_0
    const-string v5, "key_vpn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1142
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1143
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "check to default route enabled : Mocana Service is not started"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v3, 0x1

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1160
    :cond_0
    :goto_0
    return-object v2

    .line 1147
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v5, v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v6

    invoke-interface {v5, p2, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->isDefaultRouteEnabled(Ljava/lang/String;I)I

    move-result v1

    .line 1148
    .local v1, "isRoute":I
    if-ne v1, v4, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1149
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    .end local v1    # "isRoute":I
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1153
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public notifyContainerAppLaunch(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 3860
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v1, "notify when container app launch : executing from proxies - Handle in thread for better launch time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1229
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "admin add  : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin add has reached Enterprise VPN Policy V2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->insertFipsModeInDatabase(I)Z

    .line 1232
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1234
    .local v0, "map":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3, v5, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1236
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1240
    .end local v0    # "map":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1238
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v3, "added admin : mLooperThread is null...when AdminAdded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1244
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admin removed has reached Enterprise VPN Policy V2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updateVpnModeAfterAdminRemoval()V

    .line 1246
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3846
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 3847
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3856
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 3857
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1255
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1256
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->stopVpnConnectionAfterAdminRemoval(I)V

    .line 1260
    :cond_0
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3851
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 3852
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
    .line 705
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 706
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 707
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 710
    :try_start_1
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 711
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 712
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 713
    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 714
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v5, "remove vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 717
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v5

    invoke-interface {v4, p2, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "status":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 719
    if-eqz p3, :cond_0

    .line 720
    const-string v4, "FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 721
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed remove vpn connection : Status Check is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v5

    invoke-interface {v4, p2, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "failedErrorCheck":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 725
    .end local v1    # "failedErrorCheck":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnCallBack;

    invoke-direct {v5, p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnCallBack;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v6

    invoke-interface {v4, p2, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->removeConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 726
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 733
    .end local v3    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 735
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 705
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 730
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_3
    const/4 v4, 0x0

    :try_start_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 731
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 13
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
    const/16 v11, 0x9

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 1791
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeVpnForApplication API is called with package name and container id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v0

    .line 1793
    .local v0, "adminId":I
    const/4 v5, 0x0

    .line 1794
    .local v5, "success":Z
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1795
    .local v4, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1797
    if-eqz p2, :cond_0

    const/4 v6, -0x1

    if-gt p1, v6, :cond_1

    .line 1798
    :cond_0
    invoke-virtual {v4, v12, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1847
    :goto_0
    return-object v4

    .line 1802
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1803
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "removeVpnForApplication API : Mocana Service is not started"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/16 v6, 0xa

    invoke-virtual {v4, v12, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1808
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfContainerHasAddAllPackagesEnabled(I)Z

    move-result v2

    .line 1809
    .local v2, "ifContainerHasAddAllPackagesEnabled":Z
    if-eqz v2, :cond_3

    const-string v6, "ADD_ALL_PACKAGES"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1810
    invoke-virtual {v4, v12, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1814
    :cond_3
    if-eqz p2, :cond_6

    .line 1816
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "applicationInfo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "CID"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    .line 1821
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : DB delete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    if-eqz v5, :cond_5

    .line 1823
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->packageNameVpnMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;

    .line 1824
    .local v3, "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeVpnForApplication: the object value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    if-eqz v3, :cond_4

    .line 1827
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updateNotification(Ljava/lang/String;IZ)V

    .line 1831
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 1834
    :cond_4
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1835
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1839
    .end local v3    # "object":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
    :catch_0
    move-exception v1

    .line 1840
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : Exception occured for removing vpn, package map:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v6, 0x3

    invoke-virtual {v4, v12, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1837
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x1

    const/4 v7, 0x4

    :try_start_1
    invoke-virtual {v4, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1844
    :cond_6
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v7, "remove to package : Error occured for removing vpn, package map."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual {v4, v12, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0
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
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 859
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 860
    const/4 v2, 0x0

    .line 861
    .local v2, "success":Z
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 862
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 863
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 865
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 866
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 867
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setting CACertificate : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 885
    :cond_0
    :goto_0
    return-object v1

    .line 871
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, p4, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    .line 873
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 874
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting CACertificate : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v3, 0x3

    invoke-virtual {v1, v6, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 877
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 878
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
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
    .line 3669
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;

    .line 3670
    .local v0, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
    if-eqz v0, :cond_0

    .line 3671
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setDnsList(Ljava/util/List;)V

    .line 3672
    invoke-virtual {v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;->setSearchDomainList(Ljava/util/List;)V

    .line 3676
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3674
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v2, "set dns  : vpn entry is returned null value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setEnterprisePremiumVpnConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
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
    .line 503
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v0

    .line 504
    .local v0, "admin_id":I
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 505
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    if-eqz p1, :cond_0

    :try_start_1
    iget-object v8, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->type:Ljava/lang/String;

    const-string v9, "key_vpn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 508
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 560
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    :goto_0
    monitor-exit p0

    return-object v5

    .line 511
    :cond_0
    if-eqz p1, :cond_b

    :try_start_3
    iget-object v8, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->type:Ljava/lang/String;

    const-string v9, "key_vpn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 512
    iget-object v8, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xf

    if-le v8, v9, :cond_1

    .line 513
    const/4 v8, 0x1

    const/16 v9, 0x9

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 560
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 503
    .end local v0    # "admin_id":I
    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 516
    .restart local v0    # "admin_id":I
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v8

    if-nez v8, :cond_2

    .line 517
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v9, "setEnterprisePremiumVpnConnection : Mocana Service is not started"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v8, 0x1

    const/16 v9, 0xa

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 560
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 521
    :cond_2
    :try_start_7
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v8, v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v9

    invoke-interface {v8, p2, v9}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 522
    const/4 p2, 0x0

    .line 523
    :cond_3
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting premium vpn connection : starting old name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " evpn.name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " evpn.host is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_4
    if-eqz p2, :cond_7

    .line 525
    iget-object v8, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 526
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v8, v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v9

    invoke-interface {v8, p2, v9}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, "returnState":Ljava/lang/String;
    const-string v8, "CONNECTING"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "CONNECTED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "DISCONNECTING"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v8

    if-eqz v8, :cond_7

    .line 560
    :cond_5
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 530
    .end local v6    # "returnState":Ljava/lang/String;
    :cond_6
    :try_start_9
    iget-object v8, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 531
    const/4 v8, 0x1

    const/16 v9, 0x9

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 560
    :try_start_a
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 536
    :cond_7
    :try_start_b
    const-string v8, "\\s"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 537
    .local v4, "pattern":Ljava/util/regex/Pattern;
    iget-object v8, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 538
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 539
    .local v2, "found":Z
    if-eqz v2, :cond_8

    .line 540
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v9, "setEnterprisePremiumVpnConnection : Profile name contains illegal characters"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v8, 0x1

    const/16 v9, 0x9

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 560
    :try_start_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 544
    :cond_8
    :try_start_d
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting premium vpn connection : starting after removal  old name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " evpn.name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " evpn.host is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_9
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v8, v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v9

    invoke-interface {v8, p1, p2, v9}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->createConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;I)Z

    move-result v7

    .line 546
    .local v7, "success":Z
    if-eqz v7, :cond_a

    .line 547
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->addVpnProfileToDatabase(ILcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;)V

    .line 549
    :cond_a
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting premium vpn connection : return value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 551
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 560
    .end local v2    # "found":Z
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v7    # "success":Z
    :goto_1
    :try_start_e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 554
    :cond_b
    const/4 v8, 0x1

    const/4 v9, 0x2

    :try_start_f
    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/Exception;
    :try_start_10
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting premium vpn connection : Error at\n "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 560
    :try_start_11
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    throw v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
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
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1055
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 1056
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1057
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1058
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1060
    :try_start_0
    const-string v2, "key_vpn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1061
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1062
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setting forward route : Mocana Service is not started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1078
    :cond_0
    :goto_0
    return-object v1

    .line 1066
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v3

    invoke-interface {v2, p2, p3, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setForwardRoutes(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1067
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting forward route : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1070
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1071
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
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
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 785
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 786
    const/4 v2, 0x0

    .line 787
    .local v2, "success":Z
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 788
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 789
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 791
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 792
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 793
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setting user certificate : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 811
    :cond_0
    :goto_0
    return-object v1

    .line 797
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, p4, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    .line 799
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 800
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting user certificate : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v3, 0x3

    invoke-virtual {v1, v6, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 803
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 804
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentFramework"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "net.vpn.framework"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
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

    .line 1929
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    move-result v0

    .line 1930
    .local v0, "adminId":I
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1931
    .local v4, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1934
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string v8, "setVpnModeOfOperation API : Mocana Service is not started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const/4 v7, 0x1

    const/16 v8, 0xa

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1938
    :cond_1
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->updateFipsModeInDatabase(IZ)Z

    move-result v5

    .line 1939
    .local v5, "success":Z
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1940
    if-eqz v5, :cond_0

    .line 1941
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfAnyAdminHasFipsMode()Z

    move-result v1

    .line 1942
    .local v1, "checkIfAnyAdminHasFips":Z
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1943
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v2

    .line 1944
    .local v2, "currentMode":I
    if-ne p1, v10, :cond_3

    if-eq v2, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    if-nez v2, :cond_5

    .line 1945
    :cond_4
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1946
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1960
    .end local v1    # "checkIfAnyAdminHasFips":Z
    .end local v2    # "currentMode":I
    .end local v5    # "success":Z
    :catch_0
    move-exception v3

    .line 1961
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1929
    .end local v0    # "adminId":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1948
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

    .line 1949
    :cond_7
    if-nez p1, :cond_8

    if-eq v1, v10, :cond_0

    .line 1950
    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->switchVpnMode()Z

    move-result v6

    .line 1951
    .local v6, "switchSuccess":Z
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

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

    .line 1952
    :cond_9
    if-eqz v6, :cond_0

    .line 1953
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1954
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public startConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
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
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 927
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 928
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 929
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 931
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 932
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 933
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "starting vpn connection : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 954
    :goto_0
    return-object v2

    .line 937
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v0

    .line 938
    .local v0, "checkIfProfileHasDefaultRoute":I
    if-ne v0, v6, :cond_1

    .line 939
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 940
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 950
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "starting vpn connection : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v2, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 943
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 944
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 947
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 948
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startVpnAfterMigration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getLooperThread()Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .local v0, "map":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;

    const/16 v3, 0xb

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 377
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->mLooperThread:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    .end local v0    # "map":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVpnAfterMigration : mLooperThread is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
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
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 964
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->enforceOwnerOnlyAndEnterpriseVpnPermission()I

    .line 965
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 966
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 968
    :try_start_0
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 969
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 970
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopping vpn connection : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 992
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_0
    return-object v2

    .line 974
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v0

    .line 975
    .local v0, "checkIfProfileHasDefaultRoute":I
    if-ne v0, v6, :cond_1

    .line 976
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 977
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 987
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :catch_0
    move-exception v1

    .line 988
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopping vpn connection : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v2, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 990
    const/4 v2, 0x0

    goto :goto_0

    .line 980
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->vpninterfacelist:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->stopConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 981
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 984
    .end local v0    # "checkIfProfileHasDefaultRoute":I
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 985
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1251
    return-void
.end method
