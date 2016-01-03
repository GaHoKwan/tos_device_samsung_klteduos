.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$UntetheringState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WpsRunningState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;,
        Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;,
        Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;,
        Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiStateMachine$ObtainingIpState;,
        Landroid/net/wifi/WifiStateMachine$L2ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$WifiMobility;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;,
        Landroid/net/wifi/WifiStateMachine$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_REFRESH_BATCHED_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field static final BASE:I = 0x20000

.field private static final BATCHED_SETTING:Ljava/lang/String; = "batched_settings"

.field private static final BATCHED_WORKSOURCE:Ljava/lang/String; = "batched_worksource"

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CAPTIVE_CHECK_COMPLETE:I = 0x20014

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_HS20_FLUSH_BLACKLIST:I = 0x201c2

.field static final CMD_INIT_SCAN_INTERVAL:I = 0x2007d

.field static final CMD_IP_ADDRESS_REMOVED:I = 0x2008d

.field static final CMD_IP_ADDRESS_UPDATED:I = 0x2008c

.field static final CMD_KEYSTORE_REQUIRED_EVENT:I = 0x20118

.field static final CMD_MDM_FORGET_NETWORK:I = 0x20119

.field static final CMD_MDM_SAVE_NETWORK:I = 0x2011a

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field public static final CMD_POLL_BATCHED_SCAN:I = 0x20089

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_SIM_STATE:I = 0x20135

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_REQUEST_AP_RESET:I = 0x2012f

.field static final CMD_REQUEST_AP_TX_POWER:I = 0x20132

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RESPONSE_AP_TX_POWER:I = 0x20133

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_S69_BSS_INFO:I = 0x20195

.field static final CMD_S69_DATA_REQUEST:I = 0x20194

.field static final CMD_S69_DISABLE:I = 0x20192

.field static final CMD_S69_ENABLE:I = 0x20191

.field static final CMD_S69_REQUEST:I = 0x20193

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SEC_API:I = 0x2012d

.field public static final CMD_SEC_BROADCAST_AS_USER:I = 0x20130

.field static final CMD_SEC_STRING_API:I = 0x2012e

.field public static final CMD_SEND_DHCP_RELEASE:I = 0x200a1

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_AP_TX_POWER:I = 0x20131

.field public static final CMD_SET_BATCHED_SCAN:I = 0x20087

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_COUNTRY_CODE_WITHOUT_DISCONNECT_TO_AP:I = 0x20051

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field public static final CMD_START_NEXT_BATCHED_SCAN:I = 0x20088

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field static final CMD_START_PARTIAL_SCAN:I = 0x20065

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_THREE_TIMES_SCAN_IN_IDLE:I = 0x20134

.field static final CMD_UNLOAD_DRIVER_FOR_CONCURRENT:I = 0x20097

.field static final CMD_USER_SELECTION:I = 0x20136

.field public static final CONNECT_MODE:I = 0x1

.field private static final DBG:Z

.field private static final DEBUG_PARSE:Z

.field private static DEFAULT_MAX_DHCP_RETRIES:I = 0x0

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final DISABLE_NOTIFY_ID:Ljava/lang/String; = "Wifi.CaptivePortal.disable"

.field static final DISABLE_TIMEOUT_NO_INTERNET:I = 0xea60

.field static final DISABLE_TIMEOUT_POOR_QUALITY:I = 0x2710

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final END_STR:Ljava/lang/String; = "####"

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final FAILURE:I = -0x1

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final HESSID_STR:Ljava/lang/String; = "hessid="

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RSSI:I = -0xc8

.field static final MULTICAST_V4:I = 0x0

.field static final MULTICAST_V6:I = 0x1

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NETWORK_PROPERTIES_DNS_CHANGE:I = 0x3

.field private static final NETWORK_PROPERTIES_IP_CHANGE:I = 0x1

.field private static final NETWORK_PROPERTIES_MAC_CHANGE:I = 0x2

.field private static final NETWORK_PROPERTIES_POSSIBLE_CHANGE:I = 0x4

.field private static final OPERATOR_NAME_STR:Ljava/lang/String; = "hs20_operator_friendly_name="

.field private static final P2P_DISABLE_USER_ACCEPT:I = 0x20007

.field private static final P2P_DISABLE_USER_REJECT:I = 0x20008

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field private static final S69_STR:Ljava/lang/String; = "s69flag="

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final SHOW_EAP_MESSAGE_EVENT:I = 0x2007c

.field private static final SIGNIN_NOTIFY_ID:Ljava/lang/String; = "Wifi.CaptivePortal.signin"

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final TRY_SCAN_COUNT_IN_IDLE:I = 0x3

.field private static final TSF_STR:Ljava/lang/String; = "tsf="

.field private static final UNKNOWN_SCAN_SOURCE:I = -0x1

.field private static final WFC_REGISTERED:Ljava/lang/String; = "1"

.field private static final WFC_REGISTRATION_STATE:Landroid/net/Uri;

.field public static final WIFI_CONNECT_THRESHOLD:I

.field private static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field private static final WIFI_DISCONNECT_RSSI_COUNT:I = 0x5

.field public static final WIFI_DISCONNECT_THRESHOLD:I

.field static final WIFI_FIRMWARE_TYPE_AP:I = 0x1

.field static final WIFI_FIRMWARE_TYPE_IBSS:I = 0x3

.field static final WIFI_FIRMWARE_TYPE_P2P:I = 0x2

.field static final WIFI_FIRMWARE_TYPE_STA:I

.field public static final WIFI_HIGHMOBILITY:I

.field private static WIFI_MOBILITY_AP_BLOCK_MAX:I

.field private static WIFI_MOBILITY_AP_TIME:I

.field private static WIFI_MOBILITY_AP_TIMER_INTERVAL:I

.field private static WIFI_MOBILITY_AP_TO_STORE:I

.field public static WispLogoffUrl:Ljava/lang/String;

.field private static mAvailableChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowToConnect:Z

.field private mAllowedNetId:I

.field private mAverageRSSI:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundScanSupported:Z

.field private mBatchedScanCsph:I

.field private mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

.field private mBatchedScanMinPollTime:J

.field private mBatchedScanOwnerUid:I

.field private final mBatchedScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

.field private mBatchedScanSupported:Z

.field private mBatchedScanWorkSource:Landroid/os/WorkSource;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private mCanConnectNow:Z

.field private mCaptivePortalCheckState:Lcom/android/internal/util/State;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedOxygenState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedStopCounter:I

.field private mDhcpActive:Z

.field private mDhcpRenewAfterRoamingMode:I

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisableNotificationShown:Z

.field private mDisabledCaptivePortalSSID:Ljava/lang/String;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mEapTlsInProgress:Z

.field private mEnableBackgroundScan:Z

.field private mEnableRssiPolling:Z

.field private mEnableShowApEvent:Z

.field private mExpectedBatchedScans:I

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFirmwareType:I

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

.field private mImsRssiPollingEnabled:Z

.field private mInDelayedStop:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

.field private mIsFmcNetwork:Z

.field private mIsProvisioningNeeded:Z

.field public mIsReconn:I

.field private mIsRunning:Z

.field private mIsWifiOnly:I

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field public mLTECoexState:I

.field private mLastBssid:Ljava/lang/String;

.field private mLastDriverErrorMessage:I

.field private mLastEnableAllNetworksTime:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mManualConnectionId:I

.field private mMobilePolicyDataEnable:Z

.field private mMonitorBssid:Ljava/lang/String;

.field private mMonitorIpAddress:Ljava/net/InetAddress;

.field private mMonitorLinkProperties:Landroid/net/LinkProperties;

.field private mMonitorState:Ljava/lang/String;

.field private final mNetlinkLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkIdsForRemoval:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworksToUpdate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mNotedBatchedScanCsph:I

.field private mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

.field private mNotification:Landroid/app/Notification;

.field private mNwService:Landroid/os/INetworkManagementService;

.field public mObtainIp:Z

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private volatile mPersistedCountryCode:Ljava/lang/String;

.field private mPollRssiIntervalMsecs:I

.field private mPoorNetworkAvoidanceEnabled:Z

.field private mPoorNetworkAvoidanceEnabledTime:J

.field private mPoorNetworkDetectionEnabled:Z

.field private mPowerBackOff:Z

.field private mPreviousTetherData:I

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mRVFMode:I

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRoamingRenew:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private mScanRequestCounter:I

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScreenOff:Z

.field private mSendDhcpRelease:Z

.field private mSignInNotificationShown:Z

.field private mSignalLevelBroadcastCount:I

.field private mSkipScanAssoc:Z

.field private mSkipScanAssocLock:Z

.field private mSkipWifiStateBroadcast:Z

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mStopBatchedScanForDhcp:Z

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSupportedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemporarilyDisconnectWifi:Z

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mUntetheringState:Lcom/android/internal/util/State;

.field private mUpdateCountryCodeDb:Z

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerifyingLinkState:Lcom/android/internal/util/State;

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWaitForUserSelectionState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pFreq:I

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pState:I

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsInProgress:Z

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private mtitleType:I

.field private tempConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 163
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    .line 166
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    .line 183
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 319
    sput v5, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I

    .line 321
    const/16 v0, 0x7530

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TIME:I

    .line 323
    const/16 v0, 0x32

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I

    .line 325
    const/16 v0, 0x1388

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TIMER_INTERVAL:I

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    .line 391
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x96c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x971

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x976

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x97b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x980

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x985

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x98a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x98f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x994

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x999

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x99e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9a3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9a8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9b4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1432

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x143c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1446

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1450

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x145a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1464

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x146e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1478

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x148c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x14a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x14b4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x14c8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x157c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x68

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1590

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x15a4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x15b8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x74

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x15cc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x15e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x7c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x15f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1608

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x84

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x161c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x88

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1630

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x8c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1644

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x95

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1671

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x99

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1685

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0x9d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1699

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0xa1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x16ad

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v3, 0xa5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x16c1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sput v6, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    .line 835
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableThresholdDuringDisconnection"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    .line 837
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    .line 838
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableHighMobilityDisabled"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    .line 1321
    const-string v0, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->WFC_REGISTRATION_STATE:Landroid/net/Uri;

    .line 2017
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->DEBUG_PARSE:Z

    return-void

    :cond_0
    move v0, v2

    .line 163
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 2017
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;

    .prologue
    .line 1326
    const-string v14, "WifiStateMachine"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 167
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mLTECoexState:I

    .line 177
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 182
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 188
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    .line 190
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanOwnerUid:I

    .line 191
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    .line 192
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 194
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mStopBatchedScanForDhcp:Z

    .line 208
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mCanConnectNow:Z

    .line 209
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mAllowedNetId:I

    .line 212
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z

    .line 213
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 218
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 219
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 220
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 221
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 227
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    .line 228
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 229
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 234
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 238
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mIsReconn:I

    .line 239
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mObtainIp:Z

    .line 243
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mIsProvisioningNeeded:Z

    .line 244
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    .line 245
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mPreviousTetherData:I

    .line 246
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mIsWifiOnly:I

    .line 259
    const/16 v14, 0xbb8

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    .line 271
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 273
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 281
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    .line 289
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    .line 305
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 341
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 347
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 349
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 436
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 439
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 442
    new-instance v14, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v14}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 449
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mLastDriverErrorMessage:I

    .line 631
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    .line 684
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    .line 685
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    .line 687
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 688
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssocLock:Z

    .line 689
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I

    .line 690
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 691
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mAllowToConnect:Z

    .line 693
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    .line 711
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 718
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 750
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 768
    const/16 v14, -0x63

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I

    .line 769
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 770
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 771
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mMobilePolicyDataEnable:Z

    .line 772
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mIsFmcNetwork:Z

    .line 775
    new-instance v14, Landroid/net/wifi/WifiStateMachine$DefaultState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 777
    new-instance v14, Landroid/net/wifi/WifiStateMachine$InitialState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 779
    new-instance v14, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 781
    new-instance v14, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 783
    new-instance v14, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 785
    new-instance v14, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 787
    new-instance v14, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 792
    new-instance v14, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 794
    new-instance v14, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 796
    new-instance v14, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 798
    new-instance v14, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 800
    new-instance v14, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 802
    new-instance v14, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 804
    new-instance v14, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 806
    new-instance v14, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    .line 808
    new-instance v14, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWaitForUserSelectionState:Lcom/android/internal/util/State;

    .line 810
    new-instance v14, Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;

    .line 812
    new-instance v14, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 814
    new-instance v14, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mConnectedOxygenState:Lcom/android/internal/util/State;

    .line 816
    new-instance v14, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 818
    new-instance v14, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 820
    new-instance v14, Landroid/net/wifi/WifiStateMachine$WpsRunningState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$WpsRunningState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    .line 823
    new-instance v14, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 825
    new-instance v14, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 827
    new-instance v14, Landroid/net/wifi/WifiStateMachine$TetheringState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 829
    new-instance v14, Landroid/net/wifi/WifiStateMachine$TetheredState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 831
    new-instance v14, Landroid/net/wifi/WifiStateMachine$UntetheringState;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$UntetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    .line 834
    new-instance v14, Ljava/util/Vector;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    .line 839
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Wifi_SendSignalDuringPowerOff"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mSendDhcpRelease:Z

    .line 1248
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1258
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v15, 0xb

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1277
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    .line 1282
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 1287
    new-instance v14, Landroid/os/WorkSource;

    invoke-direct {v14}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 1292
    new-instance v14, Landroid/os/WorkSource;

    invoke-direct {v14}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 1295
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    .line 1304
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1305
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    .line 1306
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1307
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 1310
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pState:I

    .line 1313
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    .line 1317
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mImsRssiPollingEnabled:Z

    .line 1320
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mPowerBackOff:Z

    .line 9259
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;

    .line 9260
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;

    .line 9293
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    .line 9373
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNotification:Landroid/app/Notification;

    .line 9374
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDisabledCaptivePortalSSID:Ljava/lang/String;

    .line 9375
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mtitleType:I

    .line 9376
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mSignInNotificationShown:Z

    .line 9377
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mDisableNotificationShown:Z

    .line 9520
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mMonitorState:Ljava/lang/String;

    .line 9521
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mMonitorIpAddress:Ljava/net/InetAddress;

    .line 9522
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mMonitorBssid:Ljava/lang/String;

    .line 9523
    new-instance v14, Landroid/net/LinkProperties;

    invoke-direct {v14}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mMonitorLinkProperties:Landroid/net/LinkProperties;

    .line 1328
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1329
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1331
    new-instance v14, Landroid/net/NetworkInfo;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v17, "WIFI"

    const-string v18, ""

    invoke-direct/range {v14 .. v18}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1332
    const-string v14, "batterystats"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1335
    const-string v14, "network_management"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1336
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 1338
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.wifi.direct"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 1341
    new-instance v14, Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v14, v15}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 1342
    new-instance v14, Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Landroid/net/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 1343
    new-instance v14, Landroid/net/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 1344
    new-instance v14, Landroid/net/wifi/WifiInfo;

    invoke-direct {v14}, Landroid/net/wifi/WifiInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1345
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1346
    new-instance v14, Landroid/net/wifi/SupplicantStateTracker;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v14, v0, v1, v15, v2}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    .line 1348
    new-instance v14, Landroid/net/LinkProperties;

    invoke-direct {v14}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1349
    new-instance v14, Landroid/net/LinkProperties;

    invoke-direct {v14}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    .line 1351
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "wifip2p"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1352
    sget v14, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    sget-boolean v14, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    sget v14, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1355
    :cond_0
    new-instance v14, Landroid/net/wifi/WifiStateMachine$WifiMobility;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    .line 1358
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1359
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 1360
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 1361
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 1363
    new-instance v14, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    .line 1365
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    invoke-interface {v14, v15}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :goto_0
    new-instance v14, Landroid/net/wifi/WifiNetworkLists;

    invoke-direct {v14}, Landroid/net/wifi/WifiNetworkLists;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;

    .line 1374
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v15, "alarm"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1375
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1376
    .local v13, "scanIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v13, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 1378
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    const/4 v15, 0x0

    invoke-direct {v4, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1379
    .local v4, "batchedIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    .line 1381
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0012

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 1384
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    .line 1387
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 1391
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040055

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    .line 1394
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v16, "wifi_suspend_optimizations_enabled"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v15, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1397
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSupported:Z

    .line 1401
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 1403
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1404
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v14, "edm.intent.action.enable"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1407
    const-string v14, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1408
    const-string v14, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1409
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    const-string v14, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v14, v15, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1451
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1463
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1473
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1503
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1504
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1505
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1506
    const-string v14, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$7;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v14, v15, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1530
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$8;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1541
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$9;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1554
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "wifi_suspend_optimizations_enabled"

    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Landroid/net/wifi/WifiStateMachine$10;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine$10;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/net/wifi/WifiStateMachine$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/net/wifi/WifiStateMachine$11;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.intent.action.BOOT_COMPLETED"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1575
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1576
    .local v9, "localeFilter":Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1578
    new-instance v10, Landroid/net/wifi/WifiStateMachine$12;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/net/wifi/WifiStateMachine$12;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    .line 1587
    .local v10, "mLocaleReceiver":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1589
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->updatePoorNetworkParameters()V

    .line 1591
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Landroid/net/wifi/WifiStateMachine$13;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine$13;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_on"

    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Landroid/net/wifi/WifiStateMachine$14;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine$14;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "mobile_data"

    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Landroid/net/wifi/WifiStateMachine$15;

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine$15;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1619
    new-instance v14, Landroid/util/LruCache;

    const/16 v15, 0x50

    invoke-direct {v14, v15}, Landroid/util/LruCache;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 1621
    new-instance v14, Landroid/net/wifi/HS20ConnectableList;

    invoke-direct {v14}, Landroid/net/wifi/HS20ConnectableList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    .line 1623
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v15, "power"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 1624
    .local v11, "powerManager":Landroid/os/PowerManager;
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1626
    const/4 v14, 0x1

    const-string v15, "WifiSuspend"

    invoke-virtual {v11, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1627
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWaitForUserSelectionState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mConnectedOxygenState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1659
    const/16 v14, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1660
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    .line 1661
    sget-boolean v14, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->setDbg(Z)V

    .line 1664
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->start()V

    .line 1666
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v14, "wifi_scan_available"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v14, 0x4000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1668
    const-string v14, "scan_enabled"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1672
    :try_start_1
    const-string v14, "1"

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sput v14, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    .line 1673
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DEFAULT_MAX_DHCP_RETRIES is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1678
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070017

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1680
    .local v12, "provisionApp":[Ljava/lang/String;
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mIsProvisioningNeeded:Z

    .line 1681
    return-void

    .line 1366
    .end local v4    # "batchedIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "localeFilter":Landroid/content/IntentFilter;
    .end local v10    # "mLocaleReceiver":Landroid/content/BroadcastReceiver;
    .end local v11    # "powerManager":Landroid/os/PowerManager;
    .end local v12    # "provisionApp":[Ljava/lang/String;
    .end local v13    # "scanIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 1367
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t register interface observer: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1394
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v4    # "batchedIntent":Landroid/content/Intent;
    .restart local v13    # "scanIntent":Landroid/content/Intent;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1674
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v9    # "localeFilter":Landroid/content/IntentFilter;
    .restart local v10    # "mLocaleReceiver":Landroid/content/BroadcastReceiver;
    .restart local v11    # "powerManager":Landroid/os/PowerManager;
    :catch_1
    move-exception v5

    .line 1675
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v14, "DEFAULT_MAX_DHCP_RETRIES is 9"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1680
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "provisionApp":[Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    goto :goto_3
.end method

.method private CheckDhcpRenew()Z
    .locals 3

    .prologue
    .line 4138
    const/4 v0, 0x0

    .line 4145
    .local v0, "ret":Z
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckDhcpRenew return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4146
    :cond_0
    return v0
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pState:I

    return p1
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$11102(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$11104(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updateLTECoexState()I

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11302(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$11402(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$11502(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->callResetTimer(Z)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mAllowToConnect:Z

    return p1
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method static synthetic access$12602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$12902(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantConnectionLoss()V

    return-void
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setScanResults()V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mMobilePolicyDataEnable:Z

    return v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$14102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    return v0
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendShowApDialogBroadcast()V

    return-void
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNetworkLists;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;

    return-object v0
.end method

.method static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiStateMachine;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updatePoorNetworkParameters()V

    return-void
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$15104(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    return v0
.end method

.method static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$16004(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    return p1
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$17002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$17108(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    return v0
.end method

.method static synthetic access$17602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    return p1
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSupported:Z

    return v0
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V

    return-void
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    return v0
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/WorkSource;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V

    return-void
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/BatchedScanSettings;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    return-void
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    return-void
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19302(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSendDhcpRelease:Z

    return v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScanAsync()V

    return-void
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$20102(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    return v0
.end method

.method static synthetic access$20300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuspendMsg(I)V

    return-void
.end method

.method static synthetic access$21300(Landroid/net/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method static synthetic access$21400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21802(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$22000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$22300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$22500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$22700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22900(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$23000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    return v0
.end method

.method static synthetic access$23102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    return p1
.end method

.method static synthetic access$23200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->captivePortalCheckException()Z

    move-result v0

    return v0
.end method

.method static synthetic access$23802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    return p1
.end method

.method static synthetic access$23900(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$24000(Landroid/net/wifi/WifiStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->edmRemoveNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$24100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mAllowedNetId:I

    return v0
.end method

.method static synthetic access$24302(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mAllowedNetId:I

    return p1
.end method

.method static synthetic access$24400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mCanConnectNow:Z

    return v0
.end method

.method static synthetic access$24402(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mCanConnectNow:Z

    return p1
.end method

.method static synthetic access$24500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$25700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$26100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$26300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$26608(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$26700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z

    return v0
.end method

.method static synthetic access$26802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z

    return p1
.end method

.method static synthetic access$26900(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$27300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedOxygenState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$27500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$27700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$27800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$27900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method static synthetic access$28300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$28700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$28800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V

    return-void
.end method

.method static synthetic access$29400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CheckDhcpRenew()Z

    move-result v0

    return v0
.end method

.method static synthetic access$29500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$30000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$3002(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$30100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    return v0
.end method

.method static synthetic access$30200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V

    return-void
.end method

.method static synthetic access$30300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpResults;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$30900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$31100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$31200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$31300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$31400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$31600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$31800(Landroid/net/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->broadcastInfoMessage(IZ)V

    return-void
.end method

.method static synthetic access$31900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForUserSelectionState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$32100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$32200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$32400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$32500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->supressBrowserOnCaptivePortal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$32700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$32800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$33000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$33100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$33400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$33700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$34000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$34300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->showStatusBarOxygenIcon()V

    return-void
.end method

.method static synthetic access$34400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendOxygenStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$34600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->clearStatusBarOxygenIcon()V

    return-void
.end method

.method static synthetic access$34700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$WifiMobility;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    return-object v0
.end method

.method static synthetic access$34800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$35000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$35100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$35200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$35500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$35800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$35900(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->waitForDhcpRelease(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$36000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$36100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$36200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateCountryCodeDb:Z

    return v0
.end method

.method static synthetic access$36202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateCountryCodeDb:Z

    return p1
.end method

.method static synthetic access$36300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic access$36400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$36500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$36600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$36700(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$36800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanRequestCounter:I

    return v0
.end method

.method static synthetic access$36802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanRequestCounter:I

    return p1
.end method

.method static synthetic access$36804(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanRequestCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanRequestCounter:I

    return v0
.end method

.method static synthetic access$36900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$37000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$3702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$37100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$37200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$37300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$37500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$37600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$37700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$37800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$37900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method static synthetic access$38000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$38100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$38200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$38300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$38400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$38500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return v0
.end method

.method static synthetic access$38602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return p1
.end method

.method static synthetic access$38700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$38800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$38900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$39000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$39200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$39300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$39400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$39700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39800(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$39900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 159
    sget v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I

    return v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4002(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$40100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$40104(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$40200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$40300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$40400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$40500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$40600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$40700(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$40800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$40900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$41000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$41100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$41200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$41300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$41400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$41500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$41600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$41700(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPreviousTetherData:I

    return v0
.end method

.method static synthetic access$41702(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mPreviousTetherData:I

    return p1
.end method

.method static synthetic access$41800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$41900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$42000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$42100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$42200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/HS20ConnectableList;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Landroid/net/wifi/Hs20ScanResult;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setConnectableAp(Ljava/lang/String;)Landroid/net/wifi/Hs20ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 159
    sget v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I

    return v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendHS20ApChangedBroadcast()V

    return-void
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendHS20AnqpCompleteBroadcast()V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateHS20AnqpInfoToaddToConfiguredNetwork(I)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$6402(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$6802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastDriverErrorMessage:I

    return p1
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->sendActionMsapBroadcastEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return v0
.end method

.method static synthetic access$7702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 159
    sget v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TIMER_INTERVAL:I

    return v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$8402(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    return v0
.end method

.method static synthetic access$8602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    return p1
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I

    return v0
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I

    return p1
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private broadcastInfoMessage(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 4456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4457
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "info_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4458
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4459
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4460
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4461
    return-void
.end method

.method private callResetTimer(Z)V
    .locals 1
    .param p1, "bPartial"    # Z

    .prologue
    .line 3027
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->resetScanTimer(Z)Ljava/lang/String;

    .line 3030
    return-void
.end method

.method private captivePortalCheckException()Z
    .locals 4

    .prologue
    .line 9630
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 9631
    .local v0, "ssid":Ljava/lang/String;
    :goto_0
    const-string v1, "DCM"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\"docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"0000docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"0001docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "KDI"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\"au_Wi-Fi2\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"au_Wi-Fi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"Wi2_club\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"Wi2premium_club\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"UQ_Wi-Fi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"Wi2\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"Wi2premium\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"wifi_square\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"[Wi2]\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "SBM"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\"0001softbank\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"0002softbank\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"mobilepoint\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\"FON_FREE_INTERNET\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9650
    :cond_2
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No need to check captive portal. Do not disable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when auto-reconnect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9651
    const/4 v1, 0x1

    return v1

    .line 9630
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 3

    .prologue
    .line 3034
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 3035
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3040
    :cond_0
    :goto_0
    return-void

    .line 3037
    :catch_0
    move-exception v0

    .line 3038
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WifiStateMachine"

    const-string v2, "checkAndSetConnectivityInstance - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAverageRSSI(Ljava/lang/Integer;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3888
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3889
    .local v1, "temporar":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 3890
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 3905
    :goto_0
    return v2

    .line 3893
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 3894
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3896
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3897
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    .line 3898
    const-string v2, "AverRSSI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temporar average = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, -0x53

    if-le v2, v5, :cond_3

    .line 3901
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v2, v3

    .line 3902
    goto :goto_0

    .line 3904
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v2, v4

    .line 3905
    goto :goto_0
.end method

.method private clearLinkProperties()V
    .locals 2

    .prologue
    .line 3807
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3808
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->clearLinkProperties(I)V

    .line 3812
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3813
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    .line 3814
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 3816
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3817
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 3820
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 3821
    return-void

    .line 3816
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private clearStatusBarOxygenIcon()V
    .locals 3

    .prologue
    .line 9270
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 9272
    .local v0, "mStatusBarManager":Landroid/app/StatusBarManager;
    const-string/jumbo v1, "wifi_oxygen"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 9273
    return-void
.end method

.method private configureLinkProperties()V
    .locals 3

    .prologue
    .line 3910
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3911
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3920
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 3921
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Link configured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3922
    :cond_0
    return-void

    .line 3913
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3914
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2

    .line 3915
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3917
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3918
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 3917
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 9497
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9498
    const-string p0, ""

    .line 9505
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "lastPos":I
    :cond_0
    :goto_0
    return-object p0

    .line 9501
    .end local v0    # "lastPos":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 9502
    .restart local v0    # "lastPos":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 9505
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v10, 0x0

    .line 9136
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserProfiles()Z

    move-result v11

    if-nez v11, :cond_0

    .line 9137
    const-string v11, "WifiStateMachine"

    const-string v12, "not allowed to add new networks"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 9211
    :goto_0
    return-object v7

    .line 9141
    :cond_0
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v11, :cond_1

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "ssid"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9144
    .local v6, "netSSID":Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 9147
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 9148
    const-string v11, "WifiStateMachine"

    const-string v12, "cannot add same as mdm"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 9149
    goto :goto_0

    .line 9141
    .end local v6    # "netSSID":Ljava/lang/String;
    :cond_1
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 9151
    .restart local v6    # "netSSID":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 9155
    .local v1, "edmConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 9156
    const-string v11, "WifiStateMachine"

    const-string v12, "updating priority"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9157
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "priority"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9159
    .local v2, "edmPriority":Ljava/lang/String;
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 9161
    .local v7, "newConfiguration":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 9163
    .local v8, "priority":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 9167
    :goto_2
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v11, v8, :cond_3

    move-object v7, v10

    .line 9168
    goto :goto_0

    .line 9164
    :catch_0
    move-exception v3

    .line 9165
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v11, "WifiStateMachine"

    const-string v12, "failed to parse priority"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9169
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v10, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 9170
    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 9173
    .end local v2    # "edmPriority":Ljava/lang/String;
    .end local v7    # "newConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "priority":I
    :cond_4
    const-string v11, "WifiStateMachine"

    const-string v12, "Updating profile configuration"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9174
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicyCache;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 9176
    .local v9, "security":I
    const/16 v11, 0x8

    if-eq v11, v9, :cond_5

    const/4 v11, 0x4

    if-eq v11, v9, :cond_5

    const/4 v11, 0x3

    if-ne v11, v9, :cond_6

    .line 9179
    :cond_5
    const-string v11, "WifiStateMachine"

    const-string v12, "security level not supported by mdm"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 9180
    goto/16 :goto_0

    .line 9184
    :cond_6
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserChanges()Z

    move-result v11

    if-nez v11, :cond_a

    .line 9185
    const-string v11, "WifiStateMachine"

    const-string v12, "user changes is restricted"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9186
    if-nez v1, :cond_9

    .line 9187
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 9188
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_8

    .line 9189
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 9190
    .local v0, "auxNet":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 9191
    move-object v1, v0

    .line 9196
    .end local v0    # "auxNet":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    if-nez v1, :cond_9

    move-object v7, v10

    .line 9197
    goto/16 :goto_0

    .line 9199
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_9
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v10

    invoke-virtual {v10, p1, v1, v9}, Landroid/sec/enterprise/WifiPolicyCache;->updateAllowedFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 9201
    if-nez p1, :cond_a

    .line 9202
    const-string v10, "WifiStateMachine"

    const-string v11, "profile update not allowed"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    .line 9203
    goto/16 :goto_0

    .line 9207
    :cond_a
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v10, p1, v6}, Landroid/sec/enterprise/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    move-object v7, p1

    .line 9208
    goto/16 :goto_0

    .end local v1    # "edmConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "security":I
    :cond_b
    move-object v7, p1

    .line 9211
    goto/16 :goto_0
.end method

.method private edmRemoveNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v1, 0x1

    .line 9221
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v3, "ssid"

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9222
    .local v0, "auxSSID":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9224
    const-string v2, "WifiStateMachine"

    const-string v3, "user is trying to remove enterprise network"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9225
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9228
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2, v0}, Landroid/sec/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    .line 9234
    :cond_0
    :goto_0
    return v1

    .line 9231
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fetchFrequency()I
    .locals 2

    .prologue
    .line 3883
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v0

    return v0
.end method

.method private fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    .line 3718
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->pktcntPoll()Ljava/lang/String;

    move-result-object v5

    .line 3720
    .local v5, "pktcntPoll":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 3721
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3722
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 3723
    .local v3, "line":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3724
    .local v6, "prop":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 3722
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3726
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    const-string v8, "TXGOOD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3727
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    goto :goto_1

    .line 3731
    :catch_0
    move-exception v7

    goto :goto_1

    .line 3728
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "TXBAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3729
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3736
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v6    # "prop":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .locals 15

    .prologue
    const/16 v14, -0xc8

    const/4 v13, -0x1

    const/4 v12, 0x3

    .line 3632
    const/4 v6, -0x1

    .line 3633
    .local v6, "newRssi":I
    const/4 v5, -0x1

    .line 3635
    .local v5, "newLinkSpeed":I
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v9

    .line 3637
    .local v9, "signalPoll":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 3638
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3639
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 3640
    .local v3, "line":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3641
    .local v8, "prop":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 3639
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3643
    :cond_1
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v8, v10

    const-string v11, "RSSI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3644
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 3645
    :cond_2
    const/4 v10, 0x0

    aget-object v10, v8, v10

    const-string v11, "LINKSPEED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3646
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .line 3654
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v8    # "prop":[Ljava/lang/String;
    :cond_3
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fetchRssiAndLinkSpeedNative - newRSSI:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newLinkSpeed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3656
    :cond_4
    if-eq v6, v13, :cond_f

    if-ge v14, v6, :cond_f

    const/16 v10, 0x100

    if-ge v6, v10, :cond_f

    .line 3660
    if-lez v6, :cond_5

    add-int/lit16 v6, v6, -0x100

    .line 3661
    :cond_5
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 3662
    sget v10, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    if-eq v10, v13, :cond_6

    .line 3663
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->checkAverageRSSI(Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 3664
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_6

    .line 3665
    const-string v10, "AverRSSI"

    const-string v11, "average rssi is high enough, doing nothing"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_6
    :goto_2
    const/4 v10, 0x5

    invoke-static {v6, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    .line 3686
    .local v7, "newSignalLevel":I
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-ne v7, v10, :cond_8

    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    if-lt v10, v12, :cond_8

    if-lt v7, v12, :cond_7

    const/4 v10, 0x6

    if-ge v5, v10, :cond_9

    :cond_7
    iget-boolean v10, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v10, :cond_9

    .line 3690
    :cond_8
    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 3691
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    if-ge v10, v12, :cond_9

    .line 3692
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    .line 3693
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Force RSSI Broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3696
    :cond_9
    if-lt v7, v12, :cond_a

    const/4 v10, 0x6

    if-ge v5, v10, :cond_e

    :cond_a
    iget-boolean v10, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v10, :cond_e

    .line 3699
    const/16 v10, 0x3e8

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    .line 3703
    :goto_3
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3709
    .end local v7    # "newSignalLevel":I
    :goto_4
    if-eq v5, v13, :cond_b

    .line 3710
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 3712
    :cond_b
    return-void

    .line 3668
    :cond_c
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_d

    .line 3669
    const-string v10, "AverRSSI"

    const-string v11, "average rssi is too low, disconnectiong network"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_d
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 3672
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto :goto_2

    .line 3701
    .restart local v7    # "newSignalLevel":I
    :cond_e
    const/16 v10, 0xbb8

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I

    goto :goto_3

    .line 3705
    .end local v7    # "newSignalLevel":I
    :cond_f
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v14}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 3706
    const-string v10, "set default RSSI: -200"

    invoke-virtual {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 3648
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v8    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method private getFreq(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 2846
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2860
    :cond_0
    :goto_0
    return v3

    .line 2848
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2849
    .local v0, "compare":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 2852
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 2853
    .local v2, "sr":Landroid/net/wifi/ScanResult;
    sget-boolean v4, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find !!!!! compare : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2854
    :cond_3
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2855
    iget v3, v2, Landroid/net/wifi/ScanResult;->frequency:I

    goto :goto_0

    .line 2859
    .end local v2    # "sr":Landroid/net/wifi/ScanResult;
    :cond_4
    const-string v4, "can\'t find same ssid"

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 3925
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    sget v2, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 4118
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private handleBatchedScanPollRequest()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 1916
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    .line 1917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBatchedScanPoll Request - mBatchedScanMinPollTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mBatchedScanSettings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1923
    :cond_0
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_2

    .line 1936
    :cond_1
    :goto_0
    return-void

    .line 1924
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v2, :cond_1

    .line 1926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1928
    .local v0, "now":J
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1930
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V

    goto :goto_0

    .line 1932
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1934
    iput-wide v7, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    goto :goto_0
.end method

.method private handleFailedIpConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 4391
    const-string v1, "IP configuration failed"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4393
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4394
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 4399
    sget v0, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    .line 4400
    .local v0, "maxRetries":I
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max retries : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4402
    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    if-le v1, v0, :cond_1

    .line 4403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, Disabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4405
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4407
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 4409
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    .line 4416
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 4417
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 4418
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4206
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Stopping DHCP and clearing IP"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4208
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->stopDhcp()V

    .line 4211
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 4212
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4218
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4219
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4220
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 4221
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4222
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 4223
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 4224
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 4227
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 4231
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 4234
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 4237
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4238
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 4241
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 4244
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4246
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 4247
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 4248
    return-void

    .line 4213
    :catch_0
    move-exception v0

    .line 4214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleScreenStateChanged(Z)V
    .locals 6
    .param p1, "screenOn"    # Z

    .prologue
    const v5, 0x20056

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2984
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScreenStateChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2986
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-eqz v0, :cond_1

    .line 2987
    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 2990
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2991
    if-eqz p1, :cond_4

    .line 2992
    invoke-virtual {p0, v5, v2, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2999
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3000
    return-void

    :cond_3
    move v0, v2

    .line 2987
    goto :goto_0

    .line 2995
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2996
    invoke-virtual {p0, v5, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    goto :goto_1
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    .locals 6
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    const/4 v4, 0x0

    .line 4356
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4357
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    .line 4358
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 4359
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4361
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/net/DhcpResults;->setInterfaceName(Ljava/lang/String;)V

    .line 4363
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 4364
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4365
    iget-object v2, p1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    .line 4366
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfigStore;->setLinkProperties(ILandroid/net/LinkProperties;)V

    .line 4367
    const/4 v0, 0x0

    .line 4368
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4369
    .local v1, "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "addr":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/InetAddress;

    .line 4372
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4373
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 4374
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V

    .line 4375
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 4377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/DhcpResults;->resultAfterRoaming:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Moved BSSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4378
    iget v3, p1, Landroid/net/DhcpResults;->resultAfterRoaming:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 4379
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNetworkLists;->addExistNetworkList(Ljava/lang/String;)V

    .line 4380
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNetworkLists;->findDuplicatedNetwork(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4381
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNetworkLists;->mergeNetwork(Ljava/lang/String;)V

    .line 4388
    :cond_1
    :goto_0
    return-void

    .line 4364
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "linkProperties":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4383
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .restart local v2    # "linkProperties":Landroid/net/LinkProperties;
    :cond_2
    iget v3, p1, Landroid/net/DhcpResults;->resultAfterRoaming:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 4384
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNetworkLists;->addNewNetworkList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSupplicantConnectionLoss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4254
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 4255
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 4256
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 4257
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    if-nez v0, :cond_0

    .line 4258
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V

    .line 4260
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    .line 4261
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4151
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 4152
    .local v1, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 4157
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    const v3, 0xc367

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4158
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 4160
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4161
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    if-eqz v3, :cond_1

    .line 4162
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SupplicantState.isConnecting WpsInprogress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4171
    :cond_0
    iput-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    .line 4173
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4174
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfigStore;->isSkipInternetCheck(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4180
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 4183
    :cond_3
    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 4184
    .local v2, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 4190
    .end local v2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_0
    sget-object v3, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v3, :cond_5

    .line 4192
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v1, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4194
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v1, Landroid/net/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 4196
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 4198
    return-object v0

    .line 4187
    :cond_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0
.end method

.method private handleSuspendMsg(I)V
    .locals 3
    .param p1, "isScreenOff"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3003
    if-ne p1, v0, :cond_0

    .line 3004
    invoke-direct {p0, v2, v0}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3005
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3011
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 3021
    :goto_0
    return-void

    .line 3014
    :cond_0
    invoke-direct {p0, v2, v1}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 3017
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 3018
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    goto :goto_0
.end method

.method private isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 9658
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 9659
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 9660
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9661
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9662
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKTCMWifiSettingScreen: top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9663
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.kt.wificm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9667
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 9355
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9356
    const/4 v0, 0x0

    .line 9357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWfcRegistered()Z
    .locals 9

    .prologue
    .line 9575
    const/4 v6, 0x0

    .line 9576
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 9577
    .local v7, "isRegistered":Z
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9580
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiStateMachine;->WFC_REGISTRATION_STATE:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9581
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9582
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 9583
    .local v8, "value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 9584
    const/4 v7, 0x1

    .line 9587
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 9588
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9590
    :cond_1
    return v7

    .line 9587
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 9588
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9587
    :cond_2
    throw v1
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
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
    .line 3118
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3120
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 3121
    .local v6, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3122
    .local v3, "intf":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 3123
    .local v5, "regex":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3124
    const/4 v7, 0x1

    .line 3129
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :goto_1
    return v7

    .line 3122
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "intf":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3129
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private monitorNetworkPropertiesUpdate()V
    .locals 4

    .prologue
    .line 9530
    const/4 v1, 0x0

    .line 9531
    .local v1, "reason":I
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    .line 9556
    :goto_0
    return-void

    .line 9532
    :cond_0
    const-string v2, "ConnectedState"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ConnectedState"

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9533
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9534
    const/4 v1, 0x1

    .line 9544
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 9545
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9546
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9547
    const-string v2, "newRssi"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9548
    const-string v2, "monitorNetworkPropertiesUpdate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9549
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 9552
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorState:Ljava/lang/String;

    .line 9553
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorIpAddress:Ljava/net/InetAddress;

    .line 9554
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorBssid:Ljava/lang/String;

    .line 9555
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 9535
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 9536
    const/4 v1, 0x2

    goto :goto_1

    .line 9537
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mMonitorLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 9538
    const/4 v1, 0x3

    goto :goto_1

    .line 9540
    :cond_5
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private noteBatchedScanStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2193
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    if-eq v1, v2, :cond_1

    .line 2197
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 2202
    :goto_0
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 2207
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 2209
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 2210
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2214
    :goto_1
    return-void

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2201
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 2202
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 2201
    throw v1

    .line 2211
    :catch_1
    move-exception v0

    .line 2212
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private noteBatchedScanStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2217
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_0

    .line 2219
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 2224
    :goto_0
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 2227
    :cond_0
    return-void

    .line 2220
    :catch_0
    move-exception v0

    .line 2221
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 2224
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 2223
    throw v1
.end method

.method private noteScanEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2180
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_0

    .line 2182
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2186
    :goto_0
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 2189
    :cond_0
    return-void

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2186
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    throw v1
.end method

.method private noteScanStart(ILandroid/os/WorkSource;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2169
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_1

    .line 2170
    :cond_0
    if-eqz p2, :cond_2

    .end local p2    # "workSource":Landroid/os/WorkSource;
    :goto_0
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 2172
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    :cond_1
    :goto_1
    return-void

    .line 2170
    .restart local p2    # "workSource":Landroid/os/WorkSource;
    :cond_2
    new-instance p2, Landroid/os/WorkSource;

    .end local p2    # "workSource":Landroid/os/WorkSource;
    invoke-direct {p2, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_0

    .line 2173
    :catch_0
    move-exception v0

    .line 2174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notifyCaptivePortal(Z)V
    .locals 14
    .param p1, "visible"    # Z

    .prologue
    .line 9380
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 9381
    .local v11, "r":Landroid/content/res/Resources;
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 9384
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 9388
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    .line 9395
    .local v12, "ssid":Ljava/lang/String;
    const v0, 0x10406e0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 9396
    .local v13, "title":Ljava/lang/CharSequence;
    const v0, 0x10406e6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v1, v3

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 9397
    .local v6, "details":Ljava/lang/CharSequence;
    const v8, 0x1080877

    .line 9399
    .local v8, "icon":I
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 9400
    .local v9, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Landroid/app/Notification;->when:J

    .line 9401
    iput v8, v9, Landroid/app/Notification;->icon:I

    .line 9402
    const/4 v0, 0x2

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 9403
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://www.google.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9404
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10400000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9405
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 9406
    iput-object v13, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 9407
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v0, v13, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 9409
    const-string v0, "Wifi.CaptivePortal.signin"

    const/4 v1, 0x1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1, v9, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 9410
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisabledCaptivePortalSSID:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9411
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Landroid/net/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V

    .line 9420
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v8    # "icon":I
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v12    # "ssid":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mSignInNotificationShown:Z

    .line 9421
    return-void

    .line 9415
    :cond_1
    :try_start_0
    const-string v0, "Wifi.CaptivePortal.signin"

    const/4 v1, 0x1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9416
    :catch_0
    move-exception v7

    .line 9417
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "WifiStateMachine"

    const-string v1, "Runtime Exeption on notifyCaptivePortal()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V
    .locals 15
    .param p1, "titleType"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .prologue
    .line 9441
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 9444
    .local v13, "notificationManager":Landroid/app/NotificationManager;
    const v11, 0x1080877

    .line 9445
    .local v11, "icon":I
    if-eqz p3, :cond_0

    .line 9446
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406e1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 9447
    .local v14, "title":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 9448
    .local v9, "details":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 9461
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 9468
    .local v7, "b":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v7}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v12

    .line 9472
    .local v12, "notification":Landroid/app/Notification;
    const/4 v1, 0x2

    iput v1, v12, Landroid/app/Notification;->priority:I

    .line 9473
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 9474
    .local v3, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9475
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9476
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 9478
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9479
    .local v8, "deleteIntent":Landroid/content/Intent;
    const-string v1, "nid"

    invoke-virtual {v8, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9480
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 9482
    const-string v1, "Wifi.CaptivePortal.disable"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v1, v11, v12, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 9483
    move/from16 v0, p1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mtitleType:I

    .line 9484
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisabledCaptivePortalSSID:Ljava/lang/String;

    .line 9492
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "b":Landroid/app/Notification$Builder;
    .end local v8    # "deleteIntent":Landroid/content/Intent;
    .end local v9    # "details":Ljava/lang/CharSequence;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v14    # "title":Ljava/lang/CharSequence;
    :goto_1
    move/from16 v0, p3

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisableNotificationShown:Z

    .line 9493
    return-void

    .line 9450
    .restart local v9    # "details":Ljava/lang/CharSequence;
    .restart local v14    # "title":Ljava/lang/CharSequence;
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406e2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 9451
    goto/16 :goto_0

    .line 9453
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406e3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 9454
    goto/16 :goto_0

    .line 9456
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406e4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 9457
    goto/16 :goto_0

    .line 9487
    .end local v9    # "details":Ljava/lang/CharSequence;
    .end local v14    # "title":Ljava/lang/CharSequence;
    :cond_0
    :try_start_0
    const-string v1, "Wifi.CaptivePortal.disable"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v1, v11, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9488
    :catch_0
    move-exception v10

    .line 9489
    .local v10, "e":Ljava/lang/RuntimeException;
    const-string v1, "WifiStateMachine"

    const-string v2, "Runtime Exeption on notifyDisabledCaptivePortalStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyWatchdogDhcpSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "startComplete"    # Ljava/lang/String;

    .prologue
    .line 9559
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_0

    .line 9565
    :goto_0
    return-void

    .line 9560
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9561
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9562
    const-string v1, "newRssi"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9563
    const-string v1, "DhcpSession"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9564
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 9059
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9060
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 9061
    return-object v0
.end method

.method private static parseChannel(Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p0, "getCapabilityChannels"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2506
    if-nez p0, :cond_1

    .line 2507
    const/16 v18, 0x0

    .line 2563
    :cond_0
    return-object v18

    .line 2509
    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2510
    .local v18, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2511
    .local v13, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/net/wifi/WifiChannel;>;"
    const-string v3, "Mode["

    .line 2512
    .local v3, "MODE_STR":Ljava/lang/String;
    const-string v2, "[NO_IBSS]"

    .line 2513
    .local v2, "FLAG_NO_IBSS":Ljava/lang/String;
    const/4 v14, -0x1

    .line 2518
    .local v14, "mode":I
    const-string v19, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2519
    .local v12, "lines":[Ljava/lang/String;
    move-object v4, v12

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v11, v4, v9

    .line 2520
    .local v11, "line":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2521
    .local v5, "channel":I
    const/4 v8, 0x0

    .line 2522
    .local v8, "freq":I
    const/4 v7, 0x0

    .line 2523
    .local v7, "flag":I
    const-string v19, "Mode["

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2524
    const-string v19, "Mode["

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const-string v20, "Mode["

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2525
    .local v15, "modeString":Ljava/lang/String;
    const-string v19, "G"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2526
    const/4 v14, 0x2

    .line 2519
    .end local v15    # "modeString":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2527
    .restart local v15    # "modeString":Ljava/lang/String;
    :cond_3
    const-string v19, "B"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2528
    const/4 v14, 0x0

    goto :goto_1

    .line 2529
    :cond_4
    const-string v19, "A"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2530
    const/4 v14, 0x1

    goto :goto_1

    .line 2534
    .end local v15    # "modeString":Ljava/lang/String;
    :cond_5
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2535
    .local v6, "channelData":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 2537
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 2542
    :goto_2
    const/16 v19, 0x1

    :try_start_1
    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 2546
    :goto_3
    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    const/16 v19, 0x3

    aget-object v19, v6, v19

    const-string v20, "[NO_IBSS]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2547
    const/4 v7, 0x1

    .line 2550
    :cond_6
    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_2

    .line 2551
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2552
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiChannel;

    .line 2553
    .local v17, "oldChannel":Landroid/net/wifi/WifiChannel;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiChannel;->mode:Ljava/util/BitSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->set(I)V

    .line 2554
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiChannel;->flags:Ljava/util/BitSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 2556
    .end local v17    # "oldChannel":Landroid/net/wifi/WifiChannel;
    :cond_7
    new-instance v16, Landroid/net/wifi/WifiChannel;

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v8, v14, v7}, Landroid/net/wifi/WifiChannel;-><init>(IIII)V

    .line 2557
    .local v16, "newChannel":Landroid/net/wifi/WifiChannel;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2558
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2543
    .end local v16    # "newChannel":Landroid/net/wifi/WifiChannel;
    :catch_0
    move-exception v19

    goto :goto_3

    .line 2538
    :catch_1
    move-exception v19

    goto :goto_2
.end method

.method private recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "responsibleUid"    # I
    .param p2, "csph"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1940
    const-string v3, "batched_settings"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/BatchedScanSettings;

    .line 1941
    .local v1, "settings":Landroid/net/wifi/BatchedScanSettings;
    const-string v3, "batched_worksource"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1943
    .local v0, "responsibleWorkSource":Landroid/os/WorkSource;
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    .line 1944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set batched scan to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", worksource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1947
    :cond_0
    if-eqz v1, :cond_2

    .line 1948
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1956
    :cond_1
    :goto_0
    return v2

    .line 1950
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v3, :cond_1

    .line 1952
    :cond_3
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    .line 1953
    if-nez v0, :cond_4

    new-instance v0, Landroid/os/WorkSource;

    .end local v0    # "responsibleWorkSource":Landroid/os/WorkSource;
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 1954
    .restart local v0    # "responsibleWorkSource":Landroid/os/WorkSource;
    :cond_4
    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1955
    iput p2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    .line 1956
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 9011
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 9015
    :goto_0
    return-void

    .line 9012
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 9013
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 9014
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 9018
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 9023
    :goto_0
    return-void

    .line 9019
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 9020
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 9021
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 9022
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 9026
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 9031
    :goto_0
    return-void

    .line 9027
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 9028
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 9029
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9030
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private retrieveBatchedScanData()V
    .locals 31

    .prologue
    .line 2019
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v26

    .line 2020
    .local v26, "rawData":Ljava/lang/String;
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DEBUG_PARSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawData = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2021
    :cond_0
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 2022
    if-eqz v26, :cond_1

    const-string v1, "OK"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2023
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected BatchedScanResults :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2160
    :goto_0
    return-void

    .line 2027
    :cond_2
    const/16 v27, 0x0

    .line 2028
    .local v27, "scanCount":I
    const-string v15, "----"

    .line 2029
    .local v15, "END_OF_BATCHES":Ljava/lang/String;
    const-string v16, "scancount="

    .line 2030
    .local v16, "SCANCOUNT":Ljava/lang/String;
    const-string v17, "trunc"

    .line 2031
    .local v17, "TRUNCATED":Ljava/lang/String;
    const-string v12, "age="

    .line 2032
    .local v12, "AGE":Ljava/lang/String;
    const-string v13, "dist="

    .line 2033
    .local v13, "DIST":Ljava/lang/String;
    const-string v14, "distSd="

    .line 2035
    .local v14, "DISTSD":Ljava/lang/String;
    const-string v1, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 2036
    .local v28, "splitData":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 2037
    .local v22, "n":I
    aget-object v1, v28, v22

    const-string v4, "scancount="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2039
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "n":I
    .local v23, "n":I
    :try_start_0
    aget-object v1, v28, v22

    const-string v4, "scancount="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    move/from16 v22, v23

    .line 2044
    .end local v23    # "n":I
    .restart local v22    # "n":I
    :goto_1
    if-nez v27, :cond_4

    .line 2045
    const-string v1, "scanCount==0 - aborting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2040
    .end local v22    # "n":I
    .restart local v23    # "n":I
    :catch_0
    move-exception v20

    .line 2041
    .local v20, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scancount parseInt Exception from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v23

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move/from16 v22, v23

    .line 2042
    .end local v23    # "n":I
    .restart local v22    # "n":I
    goto :goto_1

    .line 2043
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v1, "scancount not found"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2049
    :cond_4
    new-instance v21, Landroid/content/Intent;

    const-string v1, "android.net.wifi.BATCHED_RESULTS"

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2050
    .local v21, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 2053
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2054
    new-instance v18, Landroid/net/wifi/BatchedScanResult;

    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 2056
    .local v18, "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    const/4 v3, 0x0

    .line 2057
    .local v3, "bssid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2058
    .local v2, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v6, 0x0

    .line 2059
    .local v6, "level":I
    const/4 v7, 0x0

    .line 2061
    .local v7, "freq":I
    const-wide/16 v8, 0x0

    .line 2062
    .local v8, "tsf":J
    const/4 v11, -0x1

    .local v11, "distSd":I
    move v10, v11

    .line 2063
    .local v10, "dist":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 2064
    .local v24, "now":J
    const-string v1, "bssid="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    .line 2067
    .local v19, "bssidStrLen":I
    :goto_2
    move-object/from16 v0, v28

    array-length v1, v0

    move/from16 v0, v22

    if-ge v0, v1, :cond_16

    .line 2068
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DEBUG_PARSE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2069
    :cond_5
    aget-object v1, v28, v22

    const-string v4, "----"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2070
    add-int/lit8 v1, v22, 0x1

    move-object/from16 v0, v28

    array-length v4, v0

    if-eq v1, v4, :cond_6

    .line 2071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "didn\'t consume "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v28

    array-length v4, v0

    sub-int v4, v4, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2073
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2074
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2076
    :cond_7
    const-string v1, "retrieveBatchedScanResults X"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2077
    monitor-exit v29

    goto/16 :goto_0

    .line 2164
    .end local v2    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v6    # "level":I
    .end local v7    # "freq":I
    .end local v8    # "tsf":J
    .end local v10    # "dist":I
    .end local v11    # "distSd":I
    .end local v18    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    .end local v19    # "bssidStrLen":I
    .end local v24    # "now":J
    :catchall_0
    move-exception v1

    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2079
    .restart local v2    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v6    # "level":I
    .restart local v7    # "freq":I
    .restart local v8    # "tsf":J
    .restart local v10    # "dist":I
    .restart local v11    # "distSd":I
    .restart local v18    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    .restart local v19    # "bssidStrLen":I
    .restart local v24    # "now":J
    :cond_8
    :try_start_2
    aget-object v1, v28, v22

    const-string v4, "####"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    aget-object v1, v28, v22

    const-string v4, "===="

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2080
    :cond_9
    if-eqz v3, :cond_a

    .line 2081
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    move-object/from16 v30, v0

    new-instance v1, Landroid/net/wifi/ScanResult;

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v1 .. v11}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJII)V

    move-object/from16 v0, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    const/4 v2, 0x0

    .line 2084
    const/4 v3, 0x0

    .line 2085
    const/4 v6, 0x0

    .line 2086
    const/4 v7, 0x0

    .line 2087
    const-wide/16 v8, 0x0

    .line 2088
    const/4 v11, -0x1

    move v10, v11

    .line 2090
    :cond_a
    aget-object v1, v28, v22

    const-string v4, "####"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2091
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2092
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2093
    new-instance v18, Landroid/net/wifi/BatchedScanResult;

    .end local v18    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 2146
    .restart local v18    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    :cond_b
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 2095
    :cond_c
    const-string v1, "Found empty batch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 2098
    :cond_d
    aget-object v1, v28, v22

    const-string v4, "trunc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2099
    const/4 v1, 0x1

    move-object/from16 v0, v18

    iput-boolean v1, v0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    goto :goto_3

    .line 2100
    :cond_e
    aget-object v1, v28, v22

    const-string v4, "bssid="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2101
    new-instance v3, Ljava/lang/String;

    .end local v3    # "bssid":Ljava/lang/String;
    aget-object v1, v28, v22

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, v19

    move/from16 v0, v19

    invoke-direct {v3, v1, v0, v4}, Ljava/lang/String;-><init>([BII)V

    .restart local v3    # "bssid":Ljava/lang/String;
    goto :goto_3

    .line 2103
    :cond_f
    aget-object v1, v28, v22

    const-string v4, "freq="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_10

    .line 2105
    :try_start_3
    aget-object v1, v28, v22

    const-string v4, "freq="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    goto :goto_3

    .line 2106
    :catch_1
    move-exception v20

    .line 2107
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid freqency: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2108
    const/4 v7, 0x0

    .line 2109
    goto :goto_3

    .line 2110
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    aget-object v1, v28, v22

    const-string v4, "age="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_11

    .line 2112
    :try_start_5
    aget-object v1, v28, v22

    const-string v4, "age="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    sub-long v8, v24, v4

    .line 2113
    const-wide/16 v4, 0x3e8

    mul-long/2addr v8, v4

    goto/16 :goto_3

    .line 2114
    :catch_2
    move-exception v20

    .line 2115
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid timestamp: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2116
    const-wide/16 v8, 0x0

    .line 2117
    goto/16 :goto_3

    .line 2118
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    aget-object v1, v28, v22

    const-string v4, "ssid="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2119
    aget-object v1, v28, v22

    const-string v4, "ssid="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v2

    goto/16 :goto_3

    .line 2121
    :cond_12
    aget-object v1, v28, v22

    const-string v4, "level="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-eqz v1, :cond_13

    .line 2123
    :try_start_7
    aget-object v1, v28, v22

    const-string v4, "level="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v6

    .line 2124
    if-lez v6, :cond_b

    add-int/lit16 v6, v6, -0x100

    goto/16 :goto_3

    .line 2125
    :catch_3
    move-exception v20

    .line 2126
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid level: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2127
    const/4 v6, 0x0

    .line 2128
    goto/16 :goto_3

    .line 2129
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    aget-object v1, v28, v22

    const-string v4, "dist="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    if-eqz v1, :cond_14

    .line 2131
    :try_start_9
    aget-object v1, v28, v22

    const-string v4, "dist="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v10

    goto/16 :goto_3

    .line 2132
    :catch_4
    move-exception v20

    .line 2133
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid distance: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2134
    const/4 v10, -0x1

    .line 2135
    goto/16 :goto_3

    .line 2136
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    aget-object v1, v28, v22

    const-string v4, "distSd="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v1

    if-eqz v1, :cond_15

    .line 2138
    :try_start_b
    aget-object v1, v28, v22

    const-string v4, "distSd="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v11

    goto/16 :goto_3

    .line 2139
    :catch_5
    move-exception v20

    .line 2140
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid distanceSd: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2141
    const/4 v11, -0x1

    .line 2142
    goto/16 :goto_3

    .line 2144
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse batched scan result line: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v28, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2148
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v26

    .line 2149
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DEBUG_PARSE:Z

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading more data:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2150
    :cond_17
    if-nez v26, :cond_18

    .line 2151
    const-string v1, "Unexpected null BatchedScanResults"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2152
    monitor-exit v29

    goto/16 :goto_0

    .line 2154
    :cond_18
    const-string v1, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 2155
    move-object/from16 v0, v28

    array-length v1, v0

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    aget-object v1, v28, v1

    const-string v4, "ok"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2156
    :cond_19
    const-string v1, "batch scan results just ended!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 2158
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2160
    :cond_1a
    monitor-exit v29
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 2162
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_2
.end method

.method private sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 4092
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 4093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action Frame VS WES Received data [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4096
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ACTION_FRAME_VS_WES_RECEIVED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4097
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ActionFrameVSWESData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4098
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 4099
    return-void
.end method

.method private sendActionMsapBroadcastEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "IntentAction"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 4062
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4063
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 4064
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send Action Msap BroadcastEvent [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4065
    :cond_0
    const-string v1, "android.net.wifi.EXTRA_ACTION_MSAP_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4066
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 4068
    :cond_1
    return-void
.end method

.method private sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4071
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 4078
    :goto_0
    return-void

    .line 4074
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4075
    :catch_0
    move-exception v0

    .line 4076
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4041
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 4048
    :goto_0
    return-void

    .line 4044
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4045
    :catch_0
    move-exception v0

    .line 4046
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendErrorBroadcast(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 3986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3987
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3988
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3989
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3990
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3991
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 3992
    return-void
.end method

.method private sendHS20AnqpCompleteBroadcast()V
    .locals 3

    .prologue
    .line 9040
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.HS20_ANQP_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9041
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9042
    return-void
.end method

.method private sendHS20ApChangedBroadcast()V
    .locals 3

    .prologue
    .line 9035
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.HS20_AP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9036
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9037
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 3995
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3996
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3997
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3998
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 3999
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3971
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3972
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3973
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3974
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3975
    if-eqz p1, :cond_0

    .line 3976
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3977
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    .line 3980
    :cond_1
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3982
    :cond_2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 3983
    return-void
.end method

.method private sendOxygenStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3957
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3958
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3959
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3960
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3961
    if-eqz p1, :cond_0

    .line 3962
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3963
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    .line 3965
    :cond_1
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3967
    :cond_2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 3968
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 2
    .param p1, "newRssi"    # I

    .prologue
    .line 3950
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3951
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3952
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3953
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 3954
    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 3

    .prologue
    .line 3931
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V

    .line 3934
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3935
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3936
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3940
    :goto_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3941
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 3942
    return-void

    .line 3938
    :cond_0
    const-string v1, "android.net.wifi.OXYGEN_SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendShowApDialogBroadcast()V
    .locals 3

    .prologue
    .line 4010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4011
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendShowApDialogBroadcast()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4013
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 4014
    return-void
.end method

.method private sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4081
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 4088
    :goto_0
    return-void

    .line 4084
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4085
    :catch_0
    move-exception v0

    .line 4086
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send sticky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendStickyBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4051
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 4058
    :goto_0
    return-void

    .line 4054
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4055
    :catch_0
    move-exception v0

    .line 4056
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send stciky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 4002
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4003
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4004
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4005
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 4006
    return-void
.end method

.method private setConnectableAp(Ljava/lang/String;)Landroid/net/wifi/Hs20ScanResult;
    .locals 18
    .param p1, "apStr"    # Ljava/lang/String;

    .prologue
    .line 3826
    if-nez p1, :cond_0

    .line 3827
    const/4 v1, 0x0

    .line 3878
    :goto_0
    return-object v1

    .line 3830
    :cond_0
    const/4 v3, 0x0

    .line 3831
    .local v3, "bssid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3832
    .local v4, "hessid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3833
    .local v6, "level":I
    const/4 v7, 0x0

    .line 3834
    .local v7, "freq":I
    const-wide/16 v8, 0x0

    .line 3835
    .local v8, "tsf":J
    const/4 v5, 0x0

    .line 3836
    .local v5, "flags":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3837
    .local v2, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v10, 0x0

    .line 3839
    .local v10, "operatorName":Ljava/lang/String;
    const-string v1, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 3841
    .local v16, "lines":[Ljava/lang/String;
    move-object/from16 v11, v16

    .local v11, "arr$":[Ljava/lang/String;
    array-length v14, v11

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v14, :cond_9

    aget-object v15, v11, v13

    .line 3842
    .local v15, "line":Ljava/lang/String;
    const-string v1, "bssid="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3843
    const-string v1, "bssid="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3841
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3844
    :cond_2
    const-string v1, "hessid="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3845
    const-string v1, "hessid="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 3846
    :cond_3
    const-string v1, "freq="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3848
    :try_start_0
    const-string v1, "freq="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_2

    .line 3849
    :catch_0
    move-exception v12

    .line 3850
    .local v12, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 3851
    goto :goto_2

    .line 3852
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string v1, "level="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3854
    :try_start_1
    const-string v1, "level="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 3858
    if-lez v6, :cond_1

    add-int/lit16 v6, v6, -0x100

    goto :goto_2

    .line 3859
    :catch_1
    move-exception v12

    .line 3860
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    .line 3861
    goto :goto_2

    .line 3862
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v1, "tsf="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3864
    :try_start_2
    const-string v1, "tsf="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v8

    goto :goto_2

    .line 3865
    :catch_2
    move-exception v12

    .line 3866
    .restart local v12    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v8, 0x0

    .line 3867
    goto :goto_2

    .line 3868
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v1, "flags="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3869
    const-string v1, "flags="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 3870
    :cond_7
    const-string v1, "hs20_operator_friendly_name="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3871
    const-string v1, "hs20_operator_friendly_name="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/net/wifi/Hs20ScanResult;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 3873
    :cond_8
    const-string v1, "ssid="

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3874
    const-string v1, "ssid="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v2

    goto/16 :goto_2

    .line 3878
    .end local v15    # "line":Ljava/lang/String;
    :cond_9
    new-instance v1, Landroid/net/wifi/Hs20ScanResult;

    invoke-direct/range {v1 .. v10}, Landroid/net/wifi/Hs20ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setCountryCode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3136
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_country_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3138
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3139
    invoke-virtual {p0, v0, v5}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 3150
    :cond_0
    :goto_0
    return-void

    .line 3141
    :cond_1
    const-string v2, "TRUE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_CountryCodeDefaultFromCsc"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3143
    const-string v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3144
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3145
    move-object v0, v1

    .line 3146
    invoke-virtual {p0, v0, v5}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3148
    .end local v1    # "temp":Ljava/lang/String;
    :cond_2
    const-string v2, "WifiStateMachine"

    const-string v3, "Set the Nv default ccode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFrequencyBand()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3157
    invoke-virtual {p0, v0, v0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 3163
    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 4107
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 4108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDetailed state, old ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4112
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 4113
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    :cond_1
    return-void
.end method

.method private setNextBatchedAlarm(I)V
    .locals 8
    .param p1, "scansExpected"    # I

    .prologue
    const/4 v7, 0x0

    .line 1968
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1970
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v4, v4, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 1973
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v2, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ge v2, p1, :cond_2

    .line 1974
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget p1, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 1977
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v1, v2, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 1978
    .local v1, "secToFull":I
    mul-int/2addr v1, p1

    .line 1980
    const-string/jumbo v2, "wifi.batchedScan.pollPeriod"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1981
    .local v0, "debugPeriod":I
    if-lez v0, :cond_3

    move v1, v0

    .line 1985
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v5, v5, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setPoorConnectionDisconnectNotificationVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 9277
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_poor_connection_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9291
    :cond_0
    return-void
.end method

.method private declared-synchronized setPowerBackOff()V
    .locals 4

    .prologue
    .line 9594
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 9595
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerBackOff, mScreenOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPowerBackOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPowerBackOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9598
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerBackOff:Z

    if-eqz v1, :cond_2

    .line 9599
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    if-nez v1, :cond_1

    .line 9600
    const-string v1, "WifiStateMachine"

    const-string v2, "PowerBackoff end~"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9601
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerBackOff:Z

    .line 9602
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x46

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9627
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 9605
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    if-ne v1, v2, :cond_1

    .line 9606
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_4

    .line 9607
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 9609
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 9610
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 9611
    .local v0, "callState":I
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerBackOff, callState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9613
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9620
    const-string v1, "WifiStateMachine"

    const-string v2, "PowerBackoff Start~"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9621
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerBackOff:Z

    .line 9622
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9594
    .end local v0    # "callState":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setScanResults()V
    .locals 55

    .prologue
    .line 3305
    const-string v6, ""

    .line 3306
    .local v6, "bssid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3307
    .local v7, "hessid":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3308
    .local v9, "level":I
    const/4 v10, 0x0

    .line 3309
    .local v10, "freq":I
    const-wide/16 v11, 0x0

    .line 3310
    .local v11, "tsf":J
    const-string v8, ""

    .line 3311
    .local v8, "flags":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3314
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    new-instance v46, Ljava/lang/StringBuffer;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuffer;-><init>()V

    .line 3315
    .local v46, "scanResultsBuf":Ljava/lang/StringBuffer;
    const/16 v47, 0x0

    .line 3318
    .local v47, "sid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v50

    .line 3319
    .local v50, "tmpResults":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_2

    .line 3339
    :goto_0
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v45

    .line 3340
    .local v45, "scanResults":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_6

    .line 3341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v52, v0

    monitor-enter v52

    .line 3342
    :try_start_0
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3343
    monitor-exit v52
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3626
    :cond_1
    return-void

    .line 3320
    .end local v45    # "scanResults":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3321
    const-string v51, "\n"

    move-object/from16 v0, v46

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3322
    const-string v51, "\n"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 3323
    .local v38, "lines":[Ljava/lang/String;
    const/16 v47, -0x1

    .line 3324
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v51, v0

    add-int/lit8 v32, v51, -0x1

    .local v32, "i":I
    :goto_1
    if-ltz v32, :cond_3

    .line 3325
    aget-object v51, v38, v32

    const-string v52, "####"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_4

    .line 3336
    :cond_3
    :goto_2
    const/16 v51, -0x1

    move/from16 v0, v47

    move/from16 v1, v51

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3327
    :cond_4
    aget-object v51, v38, v32

    const-string v52, "id="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_5

    .line 3329
    :try_start_1
    aget-object v51, v38, v32

    const-string v52, "id="

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v51

    add-int/lit8 v47, v51, 0x1

    goto :goto_2

    .line 3324
    :cond_5
    add-int/lit8 v32, v32, -0x1

    goto :goto_1

    .line 3343
    .end local v32    # "i":I
    .end local v38    # "lines":[Ljava/lang/String;
    .restart local v45    # "scanResults":Ljava/lang/String;
    :catchall_0
    move-exception v51

    :try_start_2
    monitor-exit v52
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v51

    .line 3348
    :cond_6
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 3353
    .local v15, "apMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v52, v0

    monitor-enter v52

    .line 3354
    :try_start_3
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3355
    const-string v51, "\n"

    move-object/from16 v0, v45

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 3356
    .restart local v38    # "lines":[Ljava/lang/String;
    const-string v51, "bssid="

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v19

    .line 3357
    .local v19, "bssidStrLen":I
    const-string v51, "hessid="

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v31

    .line 3358
    .local v31, "hessidStrLen":I
    const-string v51, "flags="

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v28

    .line 3360
    .local v28, "flagLen":I
    const/4 v14, -0x1

    .local v14, "distSd":I
    move v13, v14

    .line 3362
    .local v13, "dist":I
    move-object/from16 v16, v38

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v33, 0x0

    .local v33, "i$":I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v36

    if-ge v0, v1, :cond_15

    aget-object v37, v16, v33

    .line 3363
    .local v37, "line":Ljava/lang/String;
    const-string v51, "bssid="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_8

    .line 3364
    new-instance v18, Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->getBytes()[B

    move-result-object v51

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v53

    sub-int v53, v53, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    move/from16 v2, v19

    move/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .end local v6    # "bssid":Ljava/lang/String;
    .local v18, "bssid":Ljava/lang/String;
    move-object/from16 v6, v18

    .line 3362
    .end local v18    # "bssid":Ljava/lang/String;
    .restart local v6    # "bssid":Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 3365
    :cond_8
    const-string v51, "hessid="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_9

    .line 3366
    new-instance v30, Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->getBytes()[B

    move-result-object v51

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v53

    sub-int v53, v53, v31

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move/from16 v2, v31

    move/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .end local v7    # "hessid":Ljava/lang/String;
    .local v30, "hessid":Ljava/lang/String;
    move-object/from16 v7, v30

    .end local v30    # "hessid":Ljava/lang/String;
    .restart local v7    # "hessid":Ljava/lang/String;
    goto :goto_4

    .line 3367
    :cond_9
    const-string v51, "freq="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v51

    if-eqz v51, :cond_a

    .line 3369
    :try_start_4
    const-string v51, "freq="

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v51

    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v10

    goto :goto_4

    .line 3370
    :catch_0
    move-exception v27

    .line 3371
    .local v27, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    .line 3372
    goto :goto_4

    .line 3373
    .end local v27    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    :try_start_5
    const-string v51, "level="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v51

    if-eqz v51, :cond_b

    .line 3375
    :try_start_6
    const-string v51, "level="

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v51

    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v9

    .line 3379
    if-lez v9, :cond_7

    add-int/lit16 v9, v9, -0x100

    goto :goto_4

    .line 3380
    :catch_1
    move-exception v27

    .line 3381
    .restart local v27    # "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    .line 3382
    goto :goto_4

    .line 3383
    .end local v27    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    :try_start_7
    const-string v51, "tsf="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v51

    if-eqz v51, :cond_c

    .line 3385
    :try_start_8
    const-string v51, "tsf="

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v51

    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v11

    goto/16 :goto_4

    .line 3386
    :catch_2
    move-exception v27

    .line 3387
    .restart local v27    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v11, 0x0

    .line 3388
    goto/16 :goto_4

    .line 3389
    .end local v27    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    :try_start_9
    const-string v51, "flags="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_d

    .line 3390
    new-instance v29, Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->getBytes()[B

    move-result-object v51

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v53

    sub-int v53, v53, v28

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    move/from16 v2, v28

    move/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .end local v8    # "flags":Ljava/lang/String;
    .local v29, "flags":Ljava/lang/String;
    move-object/from16 v8, v29

    .end local v29    # "flags":Ljava/lang/String;
    .restart local v8    # "flags":Ljava/lang/String;
    goto/16 :goto_4

    .line 3391
    :cond_d
    const-string v51, "ssid="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_e

    .line 3392
    const-string v51, "ssid="

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v51

    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    goto/16 :goto_4

    .line 3394
    :cond_e
    const-string v51, "===="

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-nez v51, :cond_f

    const-string v51, "####"

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_7

    .line 3395
    :cond_f
    if-eqz v6, :cond_11

    .line 3396
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v48

    .line 3397
    .local v48, "ssid":Ljava/lang/String;
    :goto_5
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 3398
    .local v35, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 3399
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_14

    .line 3400
    iput v9, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 3401
    iput-object v5, v4, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 3403
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v51

    :goto_6
    move-object/from16 v0, v51

    iput-object v0, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 3405
    iput-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 3406
    iput v10, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 3407
    iput-wide v11, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 3414
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3418
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "\""

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    iget-object v0, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v53, "\""

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 3419
    .local v24, "curVals":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v24, :cond_10

    .line 3420
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "curVals":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 3421
    .restart local v24    # "curVals":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "\""

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    iget-object v0, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v53, "\""

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3423
    :cond_10
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3427
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v24    # "curVals":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v35    # "key":Ljava/lang/String;
    .end local v48    # "ssid":Ljava/lang/String;
    :cond_11
    const/4 v6, 0x0

    .line 3428
    const/4 v7, 0x0

    .line 3429
    const/4 v9, 0x0

    .line 3430
    const/4 v10, 0x0

    .line 3431
    const-wide/16 v11, 0x0

    .line 3432
    const-string v8, ""

    .line 3433
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 3396
    :cond_12
    const-string v48, "<unknown ssid>"

    goto/16 :goto_5

    .line 3403
    .restart local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v35    # "key":Ljava/lang/String;
    .restart local v48    # "ssid":Ljava/lang/String;
    :cond_13
    const-string v51, "<unknown ssid>"

    goto/16 :goto_6

    .line 3409
    :cond_14
    new-instance v4, Landroid/net/wifi/ScanResult;

    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    invoke-direct/range {v4 .. v14}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJII)V

    .line 3412
    .restart local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 3436
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v13    # "dist":I
    .end local v14    # "distSd":I
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v19    # "bssidStrLen":I
    .end local v28    # "flagLen":I
    .end local v31    # "hessidStrLen":I
    .end local v33    # "i$":I
    .end local v35    # "key":Ljava/lang/String;
    .end local v36    # "len$":I
    .end local v37    # "line":Ljava/lang/String;
    .end local v38    # "lines":[Ljava/lang/String;
    .end local v48    # "ssid":Ljava/lang/String;
    :catchall_1
    move-exception v51

    monitor-exit v52
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v51

    .restart local v13    # "dist":I
    .restart local v14    # "distSd":I
    .restart local v16    # "arr$":[Ljava/lang/String;
    .restart local v19    # "bssidStrLen":I
    .restart local v28    # "flagLen":I
    .restart local v31    # "hessidStrLen":I
    .restart local v33    # "i$":I
    .restart local v36    # "len$":I
    .restart local v38    # "lines":[Ljava/lang/String;
    :cond_15
    :try_start_a
    monitor-exit v52
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v41

    .line 3440
    .local v41, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v23

    .line 3441
    .local v23, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .end local v33    # "i$":I
    :cond_16
    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_1

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiConfiguration;

    .line 3442
    .local v21, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/List;

    .line 3443
    .local v43, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v43, :cond_18

    .line 3444
    sget-boolean v51, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v51, :cond_17

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "There are no configured ssid["

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "] in scanResults"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    .line 3445
    :cond_17
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v51, v0

    const/16 v52, 0xb

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_16

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v51, v0

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_16

    .line 3447
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    move-wide/from16 v51, v0

    const-wide/16 v53, 0x0

    cmp-long v51, v51, v53

    if-nez v51, :cond_16

    .line 3448
    move-wide/from16 v0, v41

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    goto :goto_8

    .line 3453
    :cond_18
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    .line 3454
    .local v44, "sameApMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v39, -0xc8

    .line 3455
    .local v39, "maxRssi":I
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_9
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_20

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 3457
    .restart local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-eqz v51, :cond_1b

    .line 3458
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v51, v0

    const-string v52, "PSK-"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_19

    .line 3473
    :cond_1a
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v51, v0

    iget v0, v4, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v52, v0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v44

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3474
    iget v0, v4, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v51, v0

    move/from16 v0, v51

    move/from16 v1, v39

    if-le v0, v1, :cond_19

    iget v0, v4, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v39, v0

    goto :goto_9

    .line 3459
    :cond_1b
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x2

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-nez v51, :cond_1c

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x3

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-nez v51, :cond_1c

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x7

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-nez v51, :cond_1c

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x9

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-eqz v51, :cond_1d

    .line 3463
    :cond_1c
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v51, v0

    const-string v52, "EAP"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_1a

    goto/16 :goto_9

    .line 3464
    :cond_1d
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget-object v51, v51, v52

    if-eqz v51, :cond_1e

    .line 3465
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v51, v0

    const-string v52, "WEP"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_1a

    goto/16 :goto_9

    .line 3467
    :cond_1e
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x5

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-eqz v51, :cond_1f

    .line 3468
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v51, v0

    const-string v52, "WAPI-PSK"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_1a

    goto/16 :goto_9

    .line 3469
    :cond_1f
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x6

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-eqz v51, :cond_1a

    .line 3470
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v51, v0

    const-string v52, "WAPI-CERT"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_1a

    goto/16 :goto_9

    .line 3477
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_20
    const/16 v20, 0x0

    .line 3478
    .local v20, "canBeEnabled":Z
    const/16 v40, 0x0

    .line 3479
    .local v40, "needRssiComparison":Z
    const/16 v22, 0x0

    .line 3480
    .local v22, "configUpdated":Z
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v51, v0

    const/16 v52, 0xb

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v51, v0

    const/16 v52, 0xc

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_16

    :cond_21
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v51, v0

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_16

    .line 3483
    sget-boolean v51, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v51, :cond_22

    .line 3484
    const-string v51, "WifiStateMachine"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "SSID : "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    const-string v51, "WifiStateMachine"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "APs : "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    const-string v51, "WifiStateMachine"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "config.disableReason: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " config.status: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " config.recoverableRSSI: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " config.inRecoverArea: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " config.diabledTime: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    move-wide/from16 v53, v0

    invoke-virtual/range {v52 .. v54}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    :cond_22
    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->size()I

    move-result v51

    if-nez v51, :cond_23

    .line 3493
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    move-wide/from16 v51, v0

    const-wide/16 v53, 0x0

    cmp-long v51, v51, v53

    if-nez v51, :cond_16

    .line 3494
    move-wide/from16 v0, v41

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->updateDisabledPoorNetworkStatus(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_8

    .line 3500
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v51

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    move-wide/from16 v53, v0

    sub-long v25, v51, v53

    .line 3501
    .local v25, "disableDuration":J
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v51, v0

    const/16 v52, 0xc

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_26

    const v49, 0xea60

    .line 3503
    .local v49, "timeout":I
    :goto_a
    const/16 v17, 0x0

    .line 3505
    .local v17, "bEnable":Z
    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v51, v0

    cmp-long v51, v25, v51

    if-ltz v51, :cond_24

    .line 3506
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v51, v0

    const/16 v52, 0xc

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_27

    .line 3507
    const/16 v17, 0x1

    .line 3512
    :cond_24
    :goto_b
    if-eqz v17, :cond_16

    .line 3513
    sget-boolean v51, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v51, :cond_25

    const-string v51, "WifiStateMachine"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Enable. "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " msec is passed since it was disabled as poor quality."

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v51, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v51 .. v53}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    .line 3515
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3516
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 3517
    const/16 v51, -0xc8

    move/from16 v0, v51

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 3518
    const-wide/16 v51, 0x0

    move-wide/from16 v0, v51

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 3519
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 3520
    const-wide/16 v51, 0x0

    move-wide/from16 v0, v51

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 3521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->updateDisabledPoorNetworkStatus(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_8

    .line 3501
    .end local v17    # "bEnable":Z
    .end local v49    # "timeout":I
    :cond_26
    const/16 v49, 0x2710

    goto/16 :goto_a

    .line 3508
    .restart local v17    # "bEnable":Z
    .restart local v49    # "timeout":I
    :cond_27
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    move/from16 v51, v0

    move/from16 v0, v39

    move/from16 v1, v51

    if-ge v0, v1, :cond_28

    const/16 v51, -0x4b

    move/from16 v0, v39

    move/from16 v1, v51

    if-lt v0, v1, :cond_24

    .line 3509
    :cond_28
    const/16 v17, 0x1

    goto/16 :goto_b

    .line 3330
    .end local v13    # "dist":I
    .end local v14    # "distSd":I
    .end local v15    # "apMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v17    # "bEnable":Z
    .end local v19    # "bssidStrLen":I
    .end local v20    # "canBeEnabled":Z
    .end local v21    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v22    # "configUpdated":Z
    .end local v23    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v25    # "disableDuration":J
    .end local v28    # "flagLen":I
    .end local v31    # "hessidStrLen":I
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v36    # "len$":I
    .end local v39    # "maxRssi":I
    .end local v40    # "needRssiComparison":Z
    .end local v41    # "now":J
    .end local v43    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v44    # "sameApMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v45    # "scanResults":Ljava/lang/String;
    .end local v49    # "timeout":I
    .restart local v32    # "i":I
    :catch_3
    move-exception v51

    goto/16 :goto_2
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 3180
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuspendOptimizations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3181
    :cond_0
    if-eqz p2, :cond_2

    .line 3182
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3186
    :goto_0
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3187
    :cond_1
    return-void

    .line 3184
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 3166
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuspendOptimizationsNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3167
    :cond_0
    if-eqz p2, :cond_2

    .line 3168
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3170
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3171
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    .line 3177
    :cond_1
    :goto_0
    return-void

    .line 3174
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3175
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto :goto_0
.end method

.method private setWifiApState(I)V
    .locals 5
    .param p1, "wifiApState"    # I

    .prologue
    .line 3244
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3247
    .local v2, "previousWifiApState":I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_2

    .line 3248
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3257
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3259
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3261
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3262
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3263
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3264
    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3265
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsProvisioningNeeded:Z

    if-eqz v3, :cond_3

    .line 3266
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V

    .line 3270
    :goto_1
    return-void

    .line 3249
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 3250
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3252
    :catch_0
    move-exception v0

    .line 3253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3268
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private setWifiState(I)V
    .locals 6
    .param p1, "wifiState"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 3195
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 3196
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mSkipWifiStateBroadcast:Z

    .line 3199
    :cond_0
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mSkipWifiStateBroadcast:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    if-nez v3, :cond_1

    .line 3200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipWifiStateBroadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3241
    :goto_0
    return-void

    .line 3204
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3207
    .local v2, "previousWifiState":I
    if-ne p1, v5, :cond_5

    .line 3208
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3219
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3221
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3223
    :cond_3
    const-string v3, "disabled"

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3230
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3231
    .local v1, "intent":Landroid/content/Intent;
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    if-ne v3, v5, :cond_6

    .line 3232
    const-string v3, "android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3236
    :goto_2
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3237
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3238
    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3239
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    goto :goto_0

    .line 3209
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 3211
    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    .line 3213
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3215
    :catch_0
    move-exception v0

    .line 3216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3234
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private showStatusBarOxygenIcon()V
    .locals 5

    .prologue
    .line 9264
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 9266
    .local v0, "mStatusBarManager":Landroid/app/StatusBarManager;
    const-string/jumbo v1, "wifi_oxygen"

    const v2, 0x108086c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 9267
    return-void
.end method

.method private skipWifiStateBroadcast(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skipWifiStateBroadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastBroadcastedWifiState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3191
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipWifiStateBroadcast:Z

    .line 3192
    return-void
.end method

.method private startBatchedScan()V
    .locals 4

    .prologue
    .line 1880
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-nez v2, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    if-eqz v2, :cond_2

    .line 1883
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "not starting Batched Scans due to DHCP"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1888
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1890
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1892
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    move-result-object v1

    .line 1894
    .local v1, "scansExpected":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    .line 1895
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    .line 1896
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    if-lez v2, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteBatchedScanStart()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception parsing WifiNative.setBatchedScanSettings response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startNextBatchedScan()V
    .locals 1

    .prologue
    .line 1910
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1912
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    .line 1913
    return-void
.end method

.method private startNextBatchedScanAsync()V
    .locals 1

    .prologue
    .line 1905
    const v0, 0x20088

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1906
    return-void
.end method

.method private startScanNative(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2260
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->scan(I)Z

    .line 2261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 2262
    return-void
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4428
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$16;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$16;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4447
    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 14
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
    .local p1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3044
    const/4 v8, 0x0

    .line 3046
    .local v8, "wifiAvailable":Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3048
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 3050
    .local v9, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3051
    .local v5, "intf":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 3052
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3054
    const/4 v4, 0x0

    .line 3056
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 3057
    if-eqz v4, :cond_1

    .line 3058
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startTethering, mRVFMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.43.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3071
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3073
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3080
    :cond_1
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    .line 3081
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tethering on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3090
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v5    # "intf":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :cond_2
    :goto_1
    return v10

    .line 3075
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v5    # "intf":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3076
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3084
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 3085
    const/4 v10, 0x1

    goto :goto_1

    .line 3051
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private stopBatchedScan()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1961
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1962
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    .line 1963
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteBatchedScanStop()V

    .line 1964
    return-void
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    .line 3095
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3099
    const/4 v1, 0x0

    .line 3101
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 3102
    if-eqz v1, :cond_0

    .line 3103
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3105
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3111
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 3112
    const-string v2, "Untether initiate failed!"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3114
    :cond_1
    return-void

    .line 3107
    :catch_0
    move-exception v0

    .line 3108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private supressBrowserOnCaptivePortal()Z
    .locals 2

    .prologue
    .line 9432
    const-string v1, "persist.sys.vzw_wifi_running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9436
    .local v0, "wifiSetupRunning":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method private updateHS20AnqpInfoToaddToConfiguredNetwork(I)V
    .locals 2
    .param p1, "netID"    # I

    .prologue
    .line 9046
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 9047
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 9048
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiConfigStore;->updateHs20Network(Landroid/net/wifi/WifiConfiguration;)V

    .line 9049
    :cond_0
    return-void
.end method

.method private updateLTECoexState()I
    .locals 3

    .prologue
    .line 4521
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update LTECoexState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLTECoexState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v1, 0x41

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLTECoexState:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v0

    return v0
.end method

.method private updateLinkProperties()V
    .locals 8

    .prologue
    .line 3755
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .line 3758
    .local v4, "newLp":Landroid/net/LinkProperties;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 3759
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 3762
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 3766
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3769
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v6, v6, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v6, :cond_3

    .line 3770
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v3, v6, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    .line 3772
    .local v3, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3773
    .local v0, "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3774
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 3777
    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 3778
    .local v5, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 3785
    .end local v0    # "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    .end local v5    # "route":Landroid/net/RouteInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3780
    .restart local v0    # "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lp":Landroid/net/LinkProperties;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 3781
    .local v1, "dns":Ljava/net/InetAddress;
    invoke-virtual {v4, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 3783
    .end local v1    # "dns":Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 3785
    .end local v0    # "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3789
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3790
    sget-boolean v6, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_4

    .line 3791
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Link configuration changed for netId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "new: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3794
    :cond_4
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3795
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_5

    .line 3796
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 3799
    :cond_5
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V

    .line 3800
    return-void
.end method

.method private updatePoorNetworkParameters()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9295
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 9296
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 9298
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 9299
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 9301
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v3

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mMobilePolicyDataEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9306
    :goto_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    .line 9307
    .local v1, "mPreviousPoorNetworkAvoidanceEnabled":Z
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 9312
    .local v2, "simState":I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsFmcNetwork:Z

    if-nez v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    .line 9315
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "mobile_data"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsFmcNetwork:Z

    if-nez v3, :cond_7

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 9319
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9320
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_8

    if-ne v2, v9, :cond_8

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mMobilePolicyDataEnable:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 9324
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 9326
    if-nez v1, :cond_3

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_3

    .line 9327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    .line 9328
    const-string v3, "WifiStateMachine"

    const-string v6, "ANS turned on. Do not start scan for a while."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9331
    :cond_3
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_4

    .line 9332
    const-string v6, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePoorNetworkAvoidance - Poor Network Test Enabled / !mIsFmcNetwork : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsFmcNetwork:Z

    if-nez v3, :cond_b

    move v3, v4

    :goto_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " - mPoorNetworkAvoidanceEnabled:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v3, :cond_c

    const-string v3, "enabled"

    :goto_7
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9336
    const-string v6, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePoorNetworkDetection - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / MobilePolicyDataDisabled / !mIsFmcNetwork : \n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "airplane_mode_on"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d

    move v3, v4

    :goto_8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "mobile_data"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_9
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v2, v9, :cond_f

    move v3, v4

    :goto_a
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mMobilePolicyDataEnable:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mIsFmcNetwork:Z

    if-nez v7, :cond_10

    :goto_b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mPoorNetworkDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_11

    const-string v3, "enabled"

    :goto_c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9345
    :cond_4
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-nez v3, :cond_5

    .line 9350
    :cond_5
    return-void

    .line 9302
    .end local v1    # "mPreviousPoorNetworkAvoidanceEnabled":Z
    .end local v2    # "simState":I
    :catch_0
    move-exception v0

    .line 9303
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiStateMachine"

    const-string v6, "updatePoorNetworkParameters - Exception while retrieving ConnectionManager"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mPreviousPoorNetworkAvoidanceEnabled":Z
    .restart local v2    # "simState":I
    :cond_6
    move v3, v5

    .line 9312
    goto/16 :goto_1

    :cond_7
    move v3, v5

    .line 9315
    goto/16 :goto_2

    :cond_8
    move v3, v5

    .line 9320
    goto/16 :goto_3

    :cond_9
    move v3, v5

    .line 9324
    goto/16 :goto_4

    :cond_a
    move v3, v5

    .line 9332
    goto/16 :goto_5

    :cond_b
    move v3, v5

    goto/16 :goto_6

    :cond_c
    const-string v3, "disabled"

    goto/16 :goto_7

    :cond_d
    move v3, v5

    .line 9336
    goto/16 :goto_8

    :cond_e
    move v3, v5

    goto :goto_9

    :cond_f
    move v3, v5

    goto :goto_a

    :cond_10
    move v4, v5

    goto :goto_b

    :cond_11
    const-string v3, "disabled"

    goto :goto_c
.end method

.method private waitForDhcpRelease(I)I
    .locals 8
    .param p1, "maxSecWait"    # I

    .prologue
    const/16 v6, 0x14

    .line 9064
    const/16 v4, 0xc8

    .line 9065
    .local v4, "sleepTime":I
    if-le p1, v6, :cond_0

    move p1, v6

    .end local p1    # "maxSecWait":I
    :cond_0
    mul-int/lit16 v6, p1, 0x3e8

    div-int v2, v6, v4

    .line 9066
    .local v2, "repeats":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init.svc.dhcpcd_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9069
    .local v1, "key":Ljava/lang/String;
    const/4 v6, 0x1

    if-ge v2, v6, :cond_3

    .line 9070
    const/4 v2, 0x1

    move v3, v2

    .line 9072
    .end local v2    # "repeats":I
    .local v3, "repeats":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "repeats":I
    .restart local v2    # "repeats":I
    if-lez v3, :cond_2

    .line 9073
    sget-boolean v6, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_1

    .line 9074
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitForDhcpRelease repeats: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9077
    :cond_1
    int-to-long v6, v4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9083
    :goto_1
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9085
    .local v5, "value":Ljava/lang/String;
    const-string v6, "stopped"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9086
    const/4 v6, 0x0

    .line 9089
    .end local v5    # "value":Ljava/lang/String;
    :goto_2
    return v6

    .line 9079
    :catch_0
    move-exception v0

    .line 9080
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitForDhcpRelease sleep exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 9089
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    move v3, v2

    .end local v2    # "repeats":I
    .restart local v3    # "repeats":I
    goto :goto_0
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2705
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2706
    return-void
.end method

.method public declared-synchronized callSECApi(Landroid/os/Message;)I
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4527
    monitor-enter p0

    :try_start_0
    sget-boolean v12, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v12, :cond_0

    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "callSECApi what="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    :cond_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v12, :sswitch_data_0

    .line 4865
    :sswitch_0
    const/4 v11, -0x1

    :cond_1
    :goto_0
    monitor-exit p0

    return v11

    .line 4530
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 4531
    .local v5, "enable":I
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiManager.SEC_COMMAND_ID_SETWMMPS : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x33

    invoke-virtual {v12, v13, v5}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v11

    goto :goto_0

    .line 4536
    .end local v5    # "enable":I
    :sswitch_2
    const/4 v11, 0x0

    goto :goto_0

    .line 4544
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4545
    .local v2, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v13, 0x1

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto :goto_0

    .line 4550
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    .line 4551
    const/4 v11, -0x1

    goto :goto_0

    .line 4553
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4554
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0xe

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto :goto_0

    .line 4559
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_3

    .line 4560
    const/4 v11, -0x1

    goto :goto_0

    .line 4563
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiConfigStore;->isSkipInternetCheck(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4564
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 4566
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4570
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_5

    .line 4571
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4574
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const-string v14, "skip_internet_check"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4578
    const/4 v1, 0x0

    .line 4579
    .local v1, "SkipInternetCheck":Z
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 4580
    const/4 v1, 0x1

    .line 4584
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 4586
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v12}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 4587
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13, v1}, Landroid/net/wifi/WifiConfigStore;->updateSkipInternetCheck(IZ)V

    .line 4588
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4582
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 4590
    .end local v1    # "SkipInternetCheck":Z
    :cond_8
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4595
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_9

    .line 4596
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4598
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4599
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x9

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto/16 :goto_0

    .line 4603
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4604
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v12, "enable"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    .line 4605
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4608
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_a

    .line 4609
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4611
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4612
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0xa

    const-string v14, "ampdu"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v11

    goto/16 :goto_0

    .line 4635
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_a
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4638
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4639
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0xb

    const-string v14, "stop"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto/16 :goto_0

    .line 4644
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_b

    .line 4645
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4647
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4648
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0xc

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto/16 :goto_0

    .line 4653
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4654
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v12, "enable"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 4655
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiManager.SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P mSkipScanAssoc : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssocLock:Z

    if-nez v12, :cond_c

    .line 4657
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v14, 0xd

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    if-nez v12, :cond_e

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v14, v12}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 4658
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    if-nez v12, :cond_c

    .line 4659
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/net/wifi/WifiStateMachine;->callResetTimer(Z)V

    .line 4662
    :cond_c
    const-string v12, "lock"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 4663
    const-string v12, "lock"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssocLock:Z

    .line 4665
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4657
    :cond_e
    const/4 v12, 0x0

    goto :goto_2

    .line 4669
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_f

    .line 4670
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4672
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v14, 0x42

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v11

    goto/16 :goto_0

    .line 4676
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_10

    .line 4677
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4679
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v14, 0x44

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v11

    goto/16 :goto_0

    .line 4682
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4683
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v12, "netId"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4684
    .local v7, "netId":Ljava/lang/Integer;
    const-string v12, "autojoin"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4685
    .local v3, "autoJoin":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiConfigStore;->updateAutojoin(II)V

    .line 4686
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4739
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "autoJoin":Ljava/lang/Integer;
    .end local v7    # "netId":Ljava/lang/Integer;
    :sswitch_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    if-eqz v12, :cond_11

    .line 4740
    const-string v12, "WifiStateMachine"

    const-string v13, "WifiManager.SEC_COMMAND_ID_PRE_SCAN"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 4742
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0xd

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto/16 :goto_0

    .line 4744
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4748
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4749
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v12, "OPTION"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 4750
    .local v8, "option":I
    const-string v12, "PATH"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4751
    .local v9, "path":Ljava/lang/String;
    if-nez v8, :cond_12

    .line 4752
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x3d

    invoke-virtual {v12, v13, v9}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v11

    .line 4753
    .local v11, "ret":I
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4754
    .local v6, "f":Ljava/io/File;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 4527
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "f":Ljava/io/File;
    .end local v8    # "option":I
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "ret":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 4756
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v8    # "option":I
    .restart local v9    # "path":Ljava/lang/String;
    :cond_12
    const/4 v12, 0x1

    if-ne v8, v12, :cond_13

    .line 4757
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x3e

    invoke-virtual {v12, v13, v9}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v11

    .line 4758
    .restart local v11    # "ret":I
    if-nez v11, :cond_1

    .line 4759
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_0

    .line 4765
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v8    # "option":I
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "ret":I
    :cond_13
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x3f

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto/16 :goto_0

    .line 4768
    :sswitch_14
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiStateMachine;->mLTECoexState:I

    .line 4769
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/16 v13, 0xd

    if-ne v12, v13, :cond_15

    .line 4771
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->updateLTECoexState()I

    move-result v11

    goto/16 :goto_0

    .line 4773
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4776
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v13, 0x2012f

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4777
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4782
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_16

    .line 4783
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4785
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x1c

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v11

    goto/16 :goto_0

    .line 4788
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_17

    .line 4789
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4791
    :cond_17
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4792
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x15

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v11

    goto/16 :goto_0

    .line 4796
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_18

    .line 4797
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4799
    :cond_18
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4800
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x16

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto/16 :goto_0

    .line 4805
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4806
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x19

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v11

    goto/16 :goto_0

    .line 4811
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_19

    .line 4812
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4814
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x17

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v11

    goto/16 :goto_0

    .line 4818
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1a

    .line 4819
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4821
    :cond_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4822
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x18

    const-string v14, "BSSID"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v11

    goto/16 :goto_0

    .line 4826
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1b

    .line 4827
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 4829
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x1a

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v11

    goto/16 :goto_0

    .line 4835
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4836
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x1f

    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v11

    goto/16 :goto_0

    .line 4841
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4842
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x20

    const-string v14, "rate"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v11

    goto/16 :goto_0

    .line 4847
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4848
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v13, 0x21

    const-string v14, "ampdu"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v11

    goto/16 :goto_0

    .line 4854
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .line 4855
    .local v10, "receivedData":Landroid/os/Bundle;
    const-string v12, "country"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4856
    .local v4, "countryCodeForUpdateDb":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    .line 4857
    const v12, 0x20051

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4858
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4862
    .end local v4    # "countryCodeForUpdateDb":Ljava/lang/String;
    .end local v10    # "receivedData":Landroid/os/Bundle;
    :sswitch_21
    move-object/from16 v0, p0

    iget v11, v0, Landroid/net/wifi/WifiStateMachine;->mIsReconn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4528
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_b
        0x13 -> :sswitch_c
        0x18 -> :sswitch_a
        0x1a -> :sswitch_d
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x25 -> :sswitch_0
        0x26 -> :sswitch_11
        0x29 -> :sswitch_17
        0x2a -> :sswitch_18
        0x2b -> :sswitch_1a
        0x2c -> :sswitch_1b
        0x2d -> :sswitch_19
        0x2e -> :sswitch_1c
        0x2f -> :sswitch_16
        0x32 -> :sswitch_1d
        0x33 -> :sswitch_1e
        0x34 -> :sswitch_1f
        0x37 -> :sswitch_20
        0x3d -> :sswitch_12
        0x3e -> :sswitch_13
        0x3f -> :sswitch_14
        0x40 -> :sswitch_e
        0x42 -> :sswitch_f
        0x47 -> :sswitch_10
        0x48 -> :sswitch_1
        0xc1 -> :sswitch_15
        0xc8 -> :sswitch_21
    .end sparse-switch
.end method

.method public canEnabledFirmwareType(I)I
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x3

    .line 4018
    if-eq p1, v0, :cond_1

    .line 4019
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 4037
    :cond_0
    :goto_0
    return v0

    .line 4025
    :cond_1
    if-eq p1, v1, :cond_3

    .line 4026
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 4028
    goto :goto_0

    .line 4031
    :cond_3
    if-eqz p1, :cond_5

    .line 4032
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 4034
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 4037
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public captivePortalCheckComplete()V
    .locals 1

    .prologue
    .line 2456
    const v0, 0x20014

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2457
    return-void
.end method

.method public checkScanNet()V
    .locals 1

    .prologue
    .line 2616
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    if-eqz v0, :cond_0

    .line 2617
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->checkScanResults()V

    .line 2621
    :goto_0
    return-void

    .line 2619
    :cond_0
    const-string v0, "checkScanNet: mWifiMobility is null"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2713
    const v0, 0x20039

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2714
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    .line 2597
    const v0, 0x20049

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2598
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2955
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2956
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDhcpResults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSignalLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastBssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReconnectCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationalMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserWantsSuspendOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplicant status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableBackgroundScan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSetCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistedCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSkipScanAssoc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastDriverErrorMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastDriverErrorMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSkipWifiStateBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipWifiStateBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2976
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiConfigStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2977
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    .line 2725
    const v0, 0x20037

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2726
    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2721
    const v2, 0x2005b

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2722
    return-void

    :cond_0
    move v0, v1

    .line 2721
    goto :goto_0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2717
    const v2, 0x20052

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2718
    return-void

    :cond_0
    move v0, v1

    .line 2717
    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2833
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2834
    .local v0, "enabler":I
    :goto_0
    const v2, 0x2005c

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2835
    return-void

    .end local v0    # "enabler":I
    :cond_0
    move v0, v1

    .line 2833
    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpRenewAfterRoamingMode()I
    .locals 3

    .prologue
    .line 4130
    const-string v0, "WifiStateMachine"

    const-string v1, "getDhcpRenewAfterRoamingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDhcpRenewAfterRoamingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 2841
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1688
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getRvfMode()I
    .locals 1

    .prologue
    .line 2325
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return v0
.end method

.method public getS69BssInfo(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1806
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "getS69BssInfo "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    const v2, 0x20195

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1808
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1809
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1810
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->parsebss(Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;

    move-result-object v2

    return-object v2
.end method

.method public getSkipScanAssoc()Z
    .locals 1

    .prologue
    .line 2469
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    return v0
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netID"    # I

    .prologue
    .line 2877
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public handleEapTlsFinish(Z)V
    .locals 4
    .param p1, "isTerminating"    # Z

    .prologue
    const/4 v3, 0x1

    .line 9098
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    if-ne v2, v3, :cond_1

    .line 9099
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 9100
    .local v1, "suppState":Landroid/net/wifi/SupplicantState;
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_1

    .line 9104
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    .line 9105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9106
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.action.lock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9107
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9110
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "suppState":Landroid/net/wifi/SupplicantState;
    :cond_1
    return-void
.end method

.method handleEapTlsKeystoreRequired()V
    .locals 1

    .prologue
    .line 9121
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 9125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    .line 9126
    return-void
.end method

.method handlePostDhcpSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4338
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 4340
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2300f

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4343
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 4345
    invoke-direct {p0, v3, v3}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 4347
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 4349
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mStopBatchedScanForDhcp:Z

    if-eqz v0, :cond_0

    .line 4350
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V

    .line 4351
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mStopBatchedScanForDhcp:Z

    .line 4353
    :cond_0
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4264
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 4266
    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 4267
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v1, :cond_0

    .line 4285
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 4294
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 4296
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSupported:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v1, :cond_1

    .line 4297
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 4298
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mStopBatchedScanForDhcp:Z

    .line 4302
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4303
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x2300f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4304
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 4305
    const v1, 0x30007

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4306
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4307
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 4308
    return-void
.end method

.method public isUsbTethered()Z
    .locals 11

    .prologue
    .line 2770
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 2772
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 2773
    .local v8, "tethered":[Ljava/lang/String;
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 2775
    .local v9, "usbRegexs":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 2776
    .local v7, "tether":Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 2777
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2778
    const/4 v10, 0x1

    .line 2781
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "regex":Ljava/lang/String;
    .end local v7    # "tether":Ljava/lang/String;
    :goto_2
    return v10

    .line 2776
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "regex":Ljava/lang/String;
    .restart local v7    # "tether":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2775
    .end local v6    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 2781
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v7    # "tether":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public isWifiOnly(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9509
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mIsWifiOnly:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 9510
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 9511
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9512
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsWifiOnly:I

    .line 9517
    :cond_0
    :goto_0
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mIsWifiOnly:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    .line 9514
    :cond_1
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsWifiOnly:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9517
    goto :goto_1
.end method

.method notifyEapTlsKeystoreRequired()V
    .locals 1

    .prologue
    .line 9115
    const v0, 0x20118

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 9116
    return-void
.end method

.method notifyShowEapMessageDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4452
    const v0, 0x2007c

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4453
    return-void
.end method

.method parsebss(Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;
    .locals 17
    .param p1, "reply"    # Ljava/lang/String;

    .prologue
    .line 1748
    const/4 v2, 0x0

    .line 1749
    .local v2, "bssid":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1750
    .local v3, "freq":I
    const/4 v4, -0x1

    .line 1751
    .local v4, "level":I
    const/4 v5, 0x0

    .line 1752
    .local v5, "ssid":Ljava/lang/String;
    const-string v6, ""

    .line 1753
    .local v6, "capability":Ljava/lang/String;
    const-string v7, ""

    .line 1754
    .local v7, "s69_capability":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1755
    .local v1, "s_bss":Landroid/net/wifi/S69BssInfo;
    if-nez p1, :cond_0

    .line 1756
    const/4 v14, 0x0

    .line 1799
    :goto_0
    return-object v14

    .line 1763
    :cond_0
    const-string v14, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1764
    .local v13, "lines":[Ljava/lang/String;
    move-object v8, v13

    .local v8, "arr$":[Ljava/lang/String;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_7

    aget-object v12, v8, v10

    .line 1765
    .local v12, "line":Ljava/lang/String;
    const-string v14, "bssid="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1766
    const-string v14, "bssid="

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1764
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1767
    :cond_2
    const-string v14, "freq="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1769
    :try_start_0
    const-string v14, "freq="

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_2

    .line 1770
    :catch_0
    move-exception v9

    .line 1771
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .line 1772
    goto :goto_2

    .line 1773
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v14, "level="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1775
    :try_start_1
    const-string v14, "level="

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 1779
    if-lez v4, :cond_1

    .line 1780
    add-int/lit16 v4, v4, -0x100

    goto :goto_2

    .line 1782
    :catch_1
    move-exception v9

    .line 1783
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .line 1784
    goto :goto_2

    .line 1785
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string v14, "flags="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1786
    const-string v14, "flags="

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1787
    :cond_5
    const-string v14, "ssid="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1788
    const-string v14, "ssid="

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1789
    :cond_6
    const-string v14, "s69flag="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1790
    const-string v14, "s69flag="

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1793
    .end local v12    # "line":Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_9

    if-eqz v5, :cond_9

    .line 1794
    sget-boolean v14, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v14, :cond_8

    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "S69BssInfo fecthed "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_8
    if-eqz v2, :cond_9

    .line 1796
    new-instance v1, Landroid/net/wifi/S69BssInfo;

    .end local v1    # "s_bss":Landroid/net/wifi/S69BssInfo;
    invoke-direct/range {v1 .. v7}, Landroid/net/wifi/S69BssInfo;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "s_bss":Landroid/net/wifi/S69BssInfo;
    :cond_9
    move-object v14, v1

    .line 1799
    goto/16 :goto_0
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    .line 2626
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2627
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    .line 2604
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2605
    return-void
.end method

.method public reloadSIMState()V
    .locals 1

    .prologue
    .line 2894
    const v0, 0x20135

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2895
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    .prologue
    .line 2634
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2635
    return-void
.end method

.method public requestBatchedScanPoll()V
    .locals 1

    .prologue
    .line 1876
    const v0, 0x20089

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1877
    return-void
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2901
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2902
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3946
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 3947
    return-void
.end method

.method public sendUserSelection(Z)V
    .locals 3
    .param p1, "keepConnection"    # Z

    .prologue
    .line 9568
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUserSelection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9570
    :cond_0
    const v1, 0x20136

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(II)V

    .line 9571
    return-void

    .line 9570
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "callingUid"    # I
    .param p3, "csph"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1858
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1859
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "batched_settings"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1860
    const-string v1, "batched_worksource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1861
    const v1, 0x20087

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1862
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 2791
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TN"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CountryISO"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CountryISO"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2794
    :cond_0
    const-string v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2795
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2796
    move-object p1, v1

    .line 2798
    :cond_1
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setCountryCode] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    .line 2801
    .end local v1    # "temp":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_3

    .line 2813
    :goto_0
    return-void

    .line 2807
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2808
    .local v0, "countryCodeSequence":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2809
    const-string v2, "Ignoring resetting of country code"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2811
    :cond_4
    const v3, 0x20050

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v3, v0, v2, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDhcpRenewAfterRoamingMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 4123
    const-string v0, "WifiStateMachine"

    const-string v1, "setDhcpRenewAfterRoamingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    .line 4125
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDhcpRenewAfterRoamingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    return v0
.end method

.method public setDriverStart(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2448
    if-eqz p1, :cond_0

    .line 2449
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2453
    :goto_0
    return-void

    .line 2451
    :cond_0
    const v0, 0x2000e

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2821
    if-eqz p2, :cond_0

    .line 2822
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2826
    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2827
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2765
    const v2, 0x2004d

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2766
    return-void

    :cond_0
    move v0, v1

    .line 2765
    goto :goto_0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 2304
    if-eqz p2, :cond_0

    .line 2305
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2309
    :goto_0
    return-void

    .line 2307
    :cond_0
    const v0, 0x20018

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setIbssRunning(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2290
    if-eqz p1, :cond_0

    .line 2291
    const v0, 0x2000b

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2298
    :goto_0
    return-void

    .line 2293
    :cond_0
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2295
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    goto :goto_0
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 9362
    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsFmcNetwork:Z

    .line 9363
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updatePoorNetworkParameters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9364
    const/4 v1, 0x1

    .line 9367
    :goto_0
    return v1

    .line 9365
    :catch_0
    move-exception v0

    .line 9366
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiStateMachine"

    const-string v2, "setIsFmcNetwork - Exception while setting isFmcNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9367
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOperationalMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2463
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting operational mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2464
    :cond_0
    const v0, 0x20048

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2465
    return-void
.end method

.method public setRvfMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2322
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    .line 2323
    return-void
.end method

.method public setSupplicantRunning(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2268
    if-eqz p1, :cond_0

    .line 2269
    const v0, 0x2000b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2273
    :goto_0
    return-void

    .line 2271
    :cond_0
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setSupplicantRunning(ZI)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "mode"    # I

    .prologue
    .line 2279
    if-eqz p1, :cond_0

    .line 2280
    const v0, 0x2000b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2284
    :goto_0
    return-void

    .line 2282
    :cond_0
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWifiApConfigTxPower(I)V
    .locals 2
    .param p1, "txPowerMode"    # I

    .prologue
    .line 2336
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20131

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2337
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2312
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2313
    return-void
.end method

.method public setccx_send_location_service_request(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I
    .locals 5
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "location_request"    # Ljava/lang/String;

    .prologue
    .line 1726
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setccx_send_location_service_request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    const v2, 0x20193

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1728
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 1729
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1730
    return v0
.end method

.method public sets69_part_msg(Lcom/android/internal/util/AsyncChannel;II)Ljava/lang/String;
    .locals 5
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "start"    # I
    .param p3, "size"    # I

    .prologue
    .line 1737
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sets69_part_msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_0
    const v2, 0x20194

    invoke-virtual {p1, v2, p2, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 1739
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1740
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1741
    return-object v0
.end method

.method startDhcp()V
    .locals 2

    .prologue
    .line 4312
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-nez v0, :cond_0

    .line 4313
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4315
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "ibss"

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 4322
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 4323
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4324
    return-void

    .line 4318
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    goto :goto_0
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2732
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2733
    const v0, 0x20054

    invoke-virtual {p0, v0, v2, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2734
    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 2748
    const v0, 0x20054

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2749
    return-void
.end method

.method public startPartialScan([I)I
    .locals 8
    .param p1, "channel"    # [I

    .prologue
    const/4 v5, -0x1

    .line 2231
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_1

    .line 2232
    sget-boolean v6, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "SKIP startScan during CONNECTING state"

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2256
    :cond_0
    :goto_0
    return v5

    .line 2236
    :cond_1
    const-string v3, ""

    .line 2237
    .local v3, "freqs":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2238
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_5

    .line 2239
    const/4 v2, 0x0

    .line 2240
    .local v2, "freq":Ljava/lang/Integer;
    aget v6, p1, v4

    const/16 v7, 0x96c

    if-ge v6, v7, :cond_2

    .line 2241
    sget-object v6, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "freq":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 2245
    .restart local v2    # "freq":Ljava/lang/Integer;
    :goto_2
    if-nez v2, :cond_4

    .line 2246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel is unavailable ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2243
    :cond_2
    sget-object v6, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    aget v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 2249
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2250
    add-int/lit8 v1, v1, 0x1

    .line 2238
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2254
    .end local v2    # "freq":Ljava/lang/Integer;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2255
    .local v0, "cmd":Ljava/lang/String;
    const v5, 0x20065

    invoke-virtual {p0, v5, v0}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2256
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public startScan(ILandroid/os/WorkSource;)V
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1825
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 1826
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScan is cancelled. ANS is turned on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds ago."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1833
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsReconn:I

    if-nez v0, :cond_2

    .line 1834
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SKIP startScan during CONNECTING state"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1838
    :cond_2
    const v0, 0x20047

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method stopDhcp()V
    .locals 2

    .prologue
    .line 4327
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 4329
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 4330
    const-string v0, "complete"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V

    .line 4331
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4333
    :cond_0
    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2740
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2741
    const v0, 0x20055

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2742
    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 2755
    const v0, 0x20055

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2756
    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2644
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2645
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2646
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2647
    return v0
.end method

.method public syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I
    .locals 5
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 4875
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSECApi what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    :cond_0
    const v2, 0x2012d

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4878
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 4879
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 4880
    return v0
.end method

.method public syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 4889
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSECApi what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    :cond_0
    const v2, 0x2012e

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4892
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4893
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 4894
    return-object v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .prologue
    .line 2691
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2692
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2693
    .local v0, "result":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDisableNetwork:  netId  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2695
    return v0

    .line 2692
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2677
    const v5, 0x20036

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2679
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .line 2680
    .local v0, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2681
    return v0

    .end local v0    # "result":Z
    .end local v1    # "resultMsg":Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 2677
    goto :goto_0

    .restart local v1    # "resultMsg":Landroid/os/Message;
    :cond_1
    move v0, v4

    .line 2679
    goto :goto_1
.end method

.method public syncGetBatchedScanResultsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    monitor-enter v4

    .line 1866
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1868
    .local v0, "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/BatchedScanResult;

    .line 1869
    .local v2, "result":Landroid/net/wifi/BatchedScanResult;
    new-instance v3, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v3, v2}, Landroid/net/wifi/BatchedScanResult;-><init>(Landroid/net/wifi/BatchedScanResult;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1872
    .end local v0    # "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/BatchedScanResult;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1871
    .restart local v0    # "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2651
    const v2, 0x2003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2652
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2653
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2654
    return-object v0
.end method

.method public syncGetConnectableAPList()Landroid/net/wifi/HS20ConnectableList;
    .locals 3

    .prologue
    .line 2882
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    monitor-enter v1

    .line 2883
    :try_start_0
    new-instance v0, Landroid/net/wifi/HS20ConnectableList;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    invoke-direct {v0, v2}, Landroid/net/wifi/HS20ConnectableList;-><init>(Landroid/net/wifi/HS20ConnectableList;)V

    monitor-exit v1

    return-object v0

    .line 2884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetCountryRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4515
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .prologue
    .line 2439
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2440
    :try_start_0
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    monitor-exit v1

    return-object v0

    .line 2441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetFullRoamScanPeriod()I
    .locals 1

    .prologue
    .line 4499
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public syncGetNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 2889
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public syncGetPartialScanResultsList([I)Ljava/util/List;
    .locals 9
    .param p1, "channels"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2571
    .local v0, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_3

    .line 2572
    const/4 v1, 0x0

    .line 2573
    .local v1, "freq":Ljava/lang/Integer;
    aget v7, p1, v2

    const/16 v8, 0x96c

    if-ge v7, v8, :cond_0

    .line 2574
    sget-object v7, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v8, p1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "freq":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 2578
    .restart local v1    # "freq":Ljava/lang/Integer;
    :goto_1
    if-nez v1, :cond_2

    .line 2579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channel is unavailable ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2590
    .end local v1    # "freq":Ljava/lang/Integer;
    :goto_2
    return-object v6

    .line 2576
    .restart local v1    # "freq":Ljava/lang/Integer;
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v8, p1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    goto :goto_1

    :cond_1
    move-object v1, v6

    goto :goto_3

    .line 2582
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2585
    .end local v1    # "freq":Ljava/lang/Integer;
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2586
    .local v5, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 2587
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2588
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    move-object v6, v5

    .line 2590
    goto :goto_2
.end method

.method public syncGetRoamBand()I
    .locals 1

    .prologue
    .line 4507
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getBand()I

    move-result v0

    return v0
.end method

.method public syncGetRoamDelta()I
    .locals 1

    .prologue
    .line 4483
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamDelta()I

    move-result v0

    return v0
.end method

.method public syncGetRoamScanPeriod()I
    .locals 1

    .prologue
    .line 4491
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public syncGetRoamTrigger()I
    .locals 1

    .prologue
    .line 4475
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamTrigger()I

    move-result v0

    return v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2476
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 2477
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2478
    .local v2, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2479
    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-direct {v3, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2482
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2481
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public syncGetSupportedWifiChannels()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2487
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupportedChannels:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupportedChannels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2488
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v1

    .line 2491
    .local v1, "getCapabilitiesChannelString":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->parseChannel(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupportedChannels:Ljava/util/List;

    .line 2493
    .end local v1    # "getCapabilitiesChannelString":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupportedChannels:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 2494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2495
    .local v3, "supportChannel":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupportedChannels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .line 2496
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    new-instance v4, Landroid/net/wifi/WifiChannel;

    invoke-direct {v4, v0}, Landroid/net/wifi/WifiChannel;-><init>(Landroid/net/wifi/WifiChannel;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2500
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "supportChannel":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :cond_2
    const-string v4, "can\'t get supported channels"

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2501
    const/4 v3, 0x0

    :cond_3
    return-object v3
.end method

.method public syncGetWifiApConfigTxPower()I
    .locals 4

    .prologue
    .line 2330
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x20132

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2331
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 2332
    .local v1, "txPowerMode":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2333
    return v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 2316
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2317
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2318
    .local v1, "ret":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2319
    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 2406
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2413
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2425
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 2415
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 2417
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 2419
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 2421
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 2423
    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    .line 2413
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiIBSSState()I
    .locals 2

    .prologue
    .line 2375
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2376
    const/4 v0, 0x1

    .line 2378
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public syncGetWifiIBSSStateByName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2383
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2384
    const-string v0, "disabled"

    .line 2398
    :goto_0
    return-object v0

    .line 2386
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2398
    const-string v0, "[invalid state]"

    goto :goto_0

    .line 2388
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 2390
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 2392
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 2394
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 2396
    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    .line 2386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    .line 2344
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    if-eqz v0, :cond_0

    .line 2345
    const/4 v0, 0x1

    .line 2347
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2354
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirmwareType:I

    if-eqz v0, :cond_0

    .line 2355
    const-string v0, "disabled"

    .line 2369
    :goto_0
    return-object v0

    .line 2357
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2369
    const-string v0, "[invalid state]"

    goto :goto_0

    .line 2359
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 2361
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 2363
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 2365
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 2367
    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    .line 2357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1694
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1695
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1696
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1697
    return v0

    .line 1695
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .prologue
    .line 2663
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2664
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2665
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2666
    return v0

    .line 2664
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetworkByMDM(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 9238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 9245
    :goto_0
    return v0

    .line 9241
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9242
    const v2, 0x20119

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 9243
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 9244
    .local v0, "result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2912
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2913
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2914
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2915
    return v0

    .line 2913
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncSaveNetworkByMDM(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 9249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 9256
    :goto_0
    return v0

    .line 9252
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;

    invoke-interface {v2, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9253
    const v2, 0x2011a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 9254
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 9255
    .local v0, "result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public syncSetCountryRev(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 4511
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public syncSetFullRoamScanPeriod(I)Z
    .locals 1
    .param p1, "fullRoamScanPeriod"    # I

    .prologue
    .line 4495
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamBand(I)Z
    .locals 1
    .param p1, "roamBand"    # I

    .prologue
    .line 4503
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setBand(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamDelta(I)Z
    .locals 1
    .param p1, "roamDelta"    # I

    .prologue
    .line 4479
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamScanPeriod(I)Z
    .locals 1
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 4487
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamTrigger(I)Z
    .locals 1
    .param p1, "roamTrigger"    # I

    .prologue
    .line 4471
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public syncccx_disable_location_service(Lcom/android/internal/util/AsyncChannel;)I
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1715
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "syncccx_disable_location_service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_0
    const v2, 0x20192

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1717
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 1718
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1719
    return v0
.end method

.method public syncccx_enable_location_service(Lcom/android/internal/util/AsyncChannel;)I
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1704
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "syncccx_enable_location_service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_0
    const v2, 0x20191

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1706
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 1707
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1708
    return v0
.end method

.method tryingSSID(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4464
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->setLastSSID(Ljava/lang/String;)V

    .line 4465
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 4466
    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    :cond_0
    return-void
.end method

.method public unlockMobNetwork(I)V
    .locals 2
    .param p1, "netid"    # I

    .prologue
    .line 2608
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    if-eqz v0, :cond_0

    .line 2609
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->unLockMobilityByNetID(Ljava/lang/Integer;)V

    .line 2613
    :goto_0
    return-void

    .line 2611
    :cond_0
    const-string v0, "unlockMobNetwork: mWifiMobility is null"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "newSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2919
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    .line 2921
    if-eqz p1, :cond_0

    .line 2922
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2924
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_3

    .line 2925
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_2

    .line 2928
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2929
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 2931
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2947
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2951
    return-void

    .line 2935
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 2936
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 2948
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2940
    :cond_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_1

    .line 2942
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 2943
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 2944
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2950
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 1842
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "updateResources "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisableNotificationShown:Z

    if-eqz v0, :cond_1

    .line 1844
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mtitleType:I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDisabledCaptivePortalSSID:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mDisableNotificationShown:Z

    invoke-direct {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V

    .line 1846
    :cond_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSignInNotificationShown:Z

    if-eqz v0, :cond_2

    .line 1847
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V

    .line 1849
    :cond_2
    return-void
.end method
