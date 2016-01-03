.class public Lcom/android/server/location/GpsLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0xa

.field private static final AGPS_TYPE_SUPL_2_0_1_AGNSS:I = 0xc

.field private static final AGPS_TYPE_SUPL_2_AGNSS:I = 0xb

.field public static final APN_CTWAP:I = 0x1

.field private static final CARD_STATUS_DISABLE:I = 0x2

.field private static final CARD_STATUS_EMPTY:I = 0x0

.field private static final CARD_STATUS_ENABLE:I = 0x3

.field private static final CARD_STATUS_UNKNOW:I = 0x1

.field private static final DB_ID:Ljava/lang/String; = "_id"

.field private static final DEBUG:Z = true

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final LOCATION_MODE_BATTERY_SAVING:I = 0x2

.field private static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3

.field private static final LOCATION_MODE_OFF:I = 0x0

.field private static final LOCATION_MODE_SENSORS_ONLY:I = 0x1

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final Num_Top_SV:I = 0x5

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final PROPERTIES_FILE_CMCC:Ljava/lang/String; = "/etc/gps_cmcc.conf"

.field private static final SEC_PROPERTIES_FILE:Ljava/lang/String; = "/data/data/com.android.angryGps/secgps.conf"

.field private static final SEC_SERVER_TYPE_AUTO_CONFIG:I = 0x0

.field private static final SEC_SERVER_TYPE_CUSTOM_CONFIG:I = 0x1

.field private static final SEC_SERVER_TYPE_SPIRENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider_ex"

.field private static final VERBOSE:Z


# instance fields
.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private ktPositionMode:I

.field private mAutoConfigEnabled:Z

.field private mBatteryTemp:D

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field public mEngineCapabilities:I

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mPositionModeFromCSC:Ljava/lang/String;

.field mProperties:Ljava/util/Properties;

.field private mProperties_cmcc:Ljava/util/Properties;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field mSecProperties:Ljava/util/Properties;

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplServerHost_cmcc:Ljava/lang/String;

.field private mSuplServerPort_cmcc:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplType:I

.field private mTrackingafterSingleShot:Z

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "GpsLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    .line 141
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsLocationProvider_samsung;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1c6c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 87
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 88
    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    .line 89
    const/16 v0, 0x1c6b

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    .line 90
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    .line 91
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mBatteryTemp:D

    .line 97
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    .line 100
    const-string v0, "STANDALONE"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 102
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 103
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 104
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 105
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 106
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 110
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mCurrentMobileType:I

    .line 139
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    .line 177
    return-void
.end method

.method private extCtcSelectPositionMode(ZZ)I
    .locals 13
    .param p1, "singleShot"    # Z
    .param p2, "mNetworkAvailable"    # Z

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 651
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "extCTCSelectPositionMode()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "ctcPositionMode":I
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 654
    .local v5, "roamingInfo":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "location_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 655
    .local v2, "locationModeState":I
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "locationModeState :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v6, "gsm.network.type"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "network_prop":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "network_type":[Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    if-eqz v6, :cond_2

    .line 662
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Reset mTrackingafterSingleShot after MS-Assisted is fixed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 664
    const/4 v0, 0x1

    .line 669
    :goto_0
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    .line 737
    :cond_0
    :goto_1
    return v0

    .line 667
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 671
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 672
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Roaming, Start Standalone GPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 674
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto :goto_1

    .line 676
    :cond_3
    const-string v6, "LTE"

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "CTWAP"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "ctlte"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_4
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assisted_gps_enabled"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    .line 678
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 680
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 681
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "This is WIFI, Start Standalone GPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x0

    .line 683
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto :goto_1

    .line 686
    :cond_5
    if-eqz p2, :cond_9

    .line 687
    if-eqz p1, :cond_6

    invoke-direct {p0, v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 688
    const/4 v0, 0x2

    .line 689
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto :goto_1

    .line 691
    :cond_6
    const-string v6, "LTE"

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "ctlte"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x3

    if-eq v2, v6, :cond_8

    .line 692
    :cond_7
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Start Tracking Mode : MS-Based"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 695
    const/4 v0, 0x1

    .line 696
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto/16 :goto_1

    .line 699
    :cond_8
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start Tracking Mode : MS-ASSITED "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-direct {p0, v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 702
    const/4 v0, 0x2

    .line 703
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto/16 :goto_1

    .line 708
    :cond_9
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "There is no Data Connection, Start Standalone GPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v0, 0x0

    .line 710
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto/16 :goto_1

    .line 716
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_a
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 718
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 719
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "This is WIFI, Start Standalone GPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v0, 0x0

    .line 721
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto/16 :goto_1

    .line 723
    :cond_b
    const-string v6, "LTE"

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "CTWAP"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "ctlte"

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    if-eqz p2, :cond_d

    .line 724
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Start MS-Based GPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 726
    const/4 v0, 0x1

    .line 727
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto/16 :goto_1

    .line 731
    :cond_d
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "There is no Data Connection, Start Standalone GPS."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x0

    .line 733
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    goto/16 :goto_1
.end method

.method private extSelectPositionMode(I)I
    .locals 14
    .param p1, "_mPositionMode"    # I

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x2

    const-wide/32 v5, 0x36ee80

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 421
    move v7, p1

    .line 422
    .local v7, "mPositionMode":I
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "extSelectPositionMode()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assisted_gps_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 424
    const/4 v7, 0x1

    .line 425
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 428
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_3

    .line 429
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 432
    const/4 v7, 0x1

    .line 516
    .end local v8    # "phone":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v7

    .line 433
    .restart local v8    # "phone":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 437
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "extSelectPositionMode : LTO, Xtra"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v7, 0x0

    .line 439
    const-string v0, "persist.sys.xtra_interval"

    const-string v1, "24"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 440
    .local v11, "validity_period":I
    const-string v0, "persist.sys.xtra_time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 441
    .local v9, "timestamp":J
    int-to-long v0, v11

    mul-long/2addr v0, v5

    add-long/2addr v0, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 442
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Starting navi xtraDownloadRequest "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_xtra_DownloadRequest()V

    goto :goto_0

    .line 447
    .end local v9    # "timestamp":J
    .end local v11    # "validity_period":I
    :cond_2
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "extSelectPositionMode : AGPS_TYPE_SUPL!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 449
    const/4 v7, 0x1

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_4

    .line 453
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 454
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "extSelectPositionMode : LTO, Xtra"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v7, 0x0

    .line 456
    const-string v0, "persist.sys.xtra_interval"

    const-string v1, "24"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 457
    .restart local v11    # "validity_period":I
    const-string v0, "persist.sys.xtra_time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 458
    .restart local v9    # "timestamp":J
    int-to-long v0, v11

    mul-long/2addr v0, v5

    add-long/2addr v0, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 459
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Starting navi xtraDownloadRequest "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_xtra_DownloadRequest()V

    goto/16 :goto_0

    .line 462
    .end local v9    # "timestamp":J
    .end local v11    # "validity_period":I
    :cond_4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_a

    .line 463
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    .line 464
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_6

    .line 465
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "[LTE] KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v1, v13

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 468
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    if-ne v0, v12, :cond_5

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 469
    :cond_5
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 472
    :cond_6
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "[LTE] Non KT GPS mode : LTO"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 474
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "extSelectPositionMode : LTO, Xtra"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v7, 0x0

    .line 476
    const-string v0, "persist.sys.xtra_interval"

    const-string v1, "24"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 477
    .restart local v11    # "validity_period":I
    const-string v0, "persist.sys.xtra_time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 478
    .restart local v9    # "timestamp":J
    int-to-long v0, v11

    mul-long/2addr v0, v5

    add-long/2addr v0, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 479
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Starting navi xtraDownloadRequest "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_xtra_DownloadRequest()V

    goto/16 :goto_0

    .line 484
    .end local v9    # "timestamp":J
    .end local v11    # "validity_period":I
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_9

    .line 485
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "[3G] KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v1, v13

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 488
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    if-ne v0, v12, :cond_8

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 489
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 492
    :cond_9
    const-string v0, "GpsLocationProvider_ex"

    const-string v2, "[3G] Non KT GPS mode : SUPL1.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 494
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 498
    :cond_a
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "extSelectPositionMode() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 503
    .end local v8    # "phone":Landroid/telephony/TelephonyManager;
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    if-eqz v0, :cond_c

    .line 504
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Assisted GPS disabled but isSKAF is true, Set AGPS SKT SUPL Address!!  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 506
    const/4 v7, 0x1

    .line 507
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "GPS Assisted OFF but SKT app start!! set supl ver 2.0 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 511
    :cond_c
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 512
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "GPS_POSITION_MODE_STANDALONE  native_agps_xtra_set(0) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private extSelectUseGooglePositionMode(I)I
    .locals 14
    .param p1, "_mPositionMode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 521
    move v12, p1

    .line 522
    .local v12, "mPositionMode":I
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    const/4 v12, 0x1

    .line 525
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 528
    .local v13, "phone":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 551
    .end local v13    # "phone":Landroid/telephony/TelephonyManager;
    :goto_0
    return v12

    .line 532
    .restart local v13    # "phone":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 533
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 536
    :cond_1
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 538
    const/16 v6, 0xb

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v8, 0x1c6b

    move-object v5, p0

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 542
    .end local v13    # "phone":Landroid/telephony/TelephonyManager;
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    if-eqz v0, :cond_3

    .line 543
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Assisted GPS disabled but isSKAF is true, Set AGPS SKT SUPL Address!!  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    goto :goto_0

    .line 546
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 547
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "GPS_POSITION_MODE_STANDALONE  native_agps_xtra_set(0) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private extension_hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 561
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 748
    const-string v6, ""

    .line 750
    .local v6, "apn":Ljava/lang/String;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "getGpsCurrentApn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 762
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 764
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 765
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentApn] cursor.count() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 769
    :cond_0
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentApn] get apn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    .line 776
    :goto_0
    return-object v1

    .line 771
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 776
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private getSKAFEnable()Z
    .locals 3

    .prologue
    .line 393
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method public static getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    .locals 4

    .prologue
    .line 333
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 335
    :cond_0
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 339
    .local v1, "vendor":Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 372
    :cond_2
    :goto_0
    return-object v1

    .line 341
    :cond_3
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 343
    :cond_4
    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 344
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 345
    :cond_5
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 347
    :cond_6
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 348
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 349
    :cond_7
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 350
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 351
    :cond_8
    const-string v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "SKC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "SKO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 352
    :cond_9
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 353
    :cond_a
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 354
    :cond_b
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 355
    :cond_c
    const-string v2, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "KTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "KTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 356
    :cond_d
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 357
    :cond_e
    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 358
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 359
    :cond_f
    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 360
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 361
    :cond_10
    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 362
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 363
    :cond_11
    const-string v2, "CHN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 364
    const-string v2, "CMCC"

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 365
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 369
    :cond_12
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 370
    :cond_13
    const-string v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0
.end method

.method public static isOpeatorUsingCscGPS()Z
    .locals 7

    .prologue
    .line 268
    const/16 v4, 0x1b

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TMB"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "ATT"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "DCM"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "SKT"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "LGT"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "KTT"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "SKC"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "LUC"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "KTC"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "SKO"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "LUO"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "KTO"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "CHM"

    aput-object v5, v1, v4

    const/16 v4, 0xd

    const-string v5, "CHC"

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "CTC"

    aput-object v5, v1, v4

    const/16 v4, 0xf

    const-string v5, "VZW"

    aput-object v5, v1, v4

    const/16 v4, 0x10

    const-string v5, "SPR"

    aput-object v5, v1, v4

    const/16 v4, 0x11

    const-string v5, "USC"

    aput-object v5, v1, v4

    const/16 v4, 0x12

    const-string v5, "MTR"

    aput-object v5, v1, v4

    const/16 v4, 0x13

    const-string v5, "BST"

    aput-object v5, v1, v4

    const/16 v4, 0x14

    const-string v5, "VMU"

    aput-object v5, v1, v4

    const/16 v4, 0x15

    const-string v5, "TFN"

    aput-object v5, v1, v4

    const/16 v4, 0x16

    const-string v5, "XAR"

    aput-object v5, v1, v4

    const/16 v4, 0x17

    const-string v5, "XAS"

    aput-object v5, v1, v4

    const/16 v4, 0x18

    const-string v5, "AIO"

    aput-object v5, v1, v4

    const/16 v4, 0x19

    const-string v5, "KDI"

    aput-object v5, v1, v4

    const/16 v4, 0x1a

    const-string v5, "SBM"

    aput-object v5, v1, v4

    .line 269
    .local v1, "cscNotUseOperator":[Ljava/lang/String;
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "code":Ljava/lang/String;
    const/4 v3, 0x1

    .line 271
    .local v3, "isCscOperator":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 272
    :cond_0
    const-string v4, "ril.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_1
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOpeatorUsingCscGPS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 277
    aget-object v4, v1, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    const/4 v3, 0x0

    .line 282
    :cond_2
    return v3

    .line 275
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 295
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 297
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "mcc":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, "mnc":I
    const-string v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 9
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 800
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "setCscParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    if-nez p1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    const-string v0, "operation_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 806
    const-string v0, "hslp_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 807
    const-string v0, "hslp_port"

    const/16 v1, 0x1c6c

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 808
    const-string/jumbo v0, "ssl"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 809
    const-string/jumbo v0, "ssl_cert"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 810
    const-string/jumbo v0, "supl_ver"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 812
    .local v7, "SuplVer":I
    packed-switch v7, :pswitch_data_0

    .line 818
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 821
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string v1, "MSBASED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSuplType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSuplPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSuplSslMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    if-eqz p2, :cond_2

    .line 825
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 827
    :cond_2
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    goto/16 :goto_0

    .line 813
    :pswitch_0
    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    goto :goto_1

    .line 815
    :pswitch_1
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    goto :goto_1

    .line 812
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSKAFEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 383
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private setServer(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v2, ""

    .line 240
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string v3, ""

    .line 242
    .local v3, "mServerPort":Ljava/lang/String;
    const-string v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    const-string v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps_cmcc.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v6, "Generated by GpsLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 258
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 253
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSktSuplVer()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 404
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "AGPS_TYPE_SUPL_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 412
    return-void
.end method


# virtual methods
.method public extension_ctcControlTracking()V
    .locals 2

    .prologue
    .line 639
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    .line 642
    :cond_0
    return-void
.end method

.method public extension_ctcSetHandleEnable()V
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 788
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "set CTC GPS lock to enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_delete_aiding_data(I)V

    .line 791
    :cond_0
    return-void
.end method

.method public extension_ctcStartTracking(ZIZZI)Z
    .locals 8
    .param p1, "_mStarted"    # Z
    .param p2, "_positionMode"    # I
    .param p3, "_singleShot"    # Z
    .param p4, "_networkAvailable"    # Z
    .param p5, "_fixInterval"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 571
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_2

    .line 572
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    if-eqz v0, :cond_2

    .line 573
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Send ENABLE_TRACKING Message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-nez p1, :cond_2

    .line 575
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extension_ctcStartTracking, singleShot is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mStarted:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 p3, 0x0

    .line 577
    const/4 p1, 0x1

    .line 578
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    .line 579
    invoke-direct {p0, p3, p4}, Lcom/android/server/location/GpsLocationProvider_samsung;->extCtcSelectPositionMode(ZZ)I

    move-result p2

    .line 582
    packed-switch p2, :pswitch_data_0

    .line 593
    const-string/jumbo v7, "unknown"

    .line 596
    .local v7, "mode":Ljava/lang/String;
    :goto_0
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, p5

    .local v3, "interval":I
    :goto_1
    move-object v0, p0

    move v1, p2

    move v4, v2

    move v5, v2

    .line 599
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    const/4 p1, 0x0

    .line 601
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    .line 602
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, p1

    .line 614
    .end local v3    # "interval":I
    .end local v7    # "mode":Ljava/lang/String;
    .end local p1    # "_mStarted":Z
    .local v6, "_mStarted":I
    :goto_2
    return v6

    .line 584
    .end local v6    # "_mStarted":I
    .restart local p1    # "_mStarted":Z
    :pswitch_0
    const-string/jumbo v7, "standalone"

    .line 585
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 587
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v7, "MS_ASSISTED"

    .line 588
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 590
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string v7, "MS_BASED"

    .line 591
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 598
    :cond_0
    const/16 v3, 0x3e8

    goto :goto_1

    .line 605
    .restart local v3    # "interval":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_start()Z

    move-result v0

    if-nez v0, :cond_2

    .line 606
    const/4 p1, 0x0

    .line 607
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    .line 608
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, p1

    .line 609
    .restart local v6    # "_mStarted":I
    goto :goto_2

    .end local v3    # "interval":I
    .end local v6    # "_mStarted":I
    .end local v7    # "mode":Ljava/lang/String;
    :cond_2
    move v6, p1

    .line 614
    .restart local v6    # "_mStarted":I
    goto :goto_2

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public extension_ctcStopTracking(Z)Z
    .locals 2
    .param p1, "singleShot"    # Z

    .prologue
    .line 624
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 625
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mTrackingafterSingleShot:Z

    if-eqz v0, :cond_0

    .line 626
    const/4 p1, 0x1

    .line 629
    :cond_0
    return p1
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 4
    .param p1, "mBroadcastReciever"    # Landroid/content/BroadcastReceiver;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 861
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 862
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 863
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 865
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 866
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 876
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public extension_mBroadcastReciever(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 838
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v4, v5, :cond_1

    .line 841
    :cond_0
    const-string v4, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    .line 852
    :cond_1
    :goto_0
    return-void

    .line 843
    :cond_2
    const-string v4, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 844
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v5, "SUPL_HOST"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "mSuplServerHost_cmcc":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v5, "SUPL_PORT"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, "portString_cmcc":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v1, "getAgpsProfile":Landroid/content/Intent;
    const-string v4, "ServerAddr"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const-string v4, "ServerPort"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public extension_printSvStatus([FI)V
    .locals 6
    .param p1, "mSnrs"    # [F
    .param p2, "svCount"    # I

    .prologue
    .line 885
    const-string/jumbo v3, "user"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 886
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v2, "snrlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 888
    aget v3, p1, v0

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 890
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 892
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 893
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 894
    :cond_1
    if-eqz p2, :cond_2

    .line 895
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SV Count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / TOP5 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "snrlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .locals 7
    .param p1, "mNetworkAvailable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 940
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 941
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    if-eqz v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 944
    const/16 v1, 0xa

    const/16 v3, 0x1c6b

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 945
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 949
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public extension_reportGeofenceAddStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1261
    const-string v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1263
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1266
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofencePauseStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1299
    const-string v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1301
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1304
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceRemoveStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1280
    const-string v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1282
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1285
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceResumeStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1318
    const-string v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1320
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1323
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .locals 15
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1242
    const-string v1, "sec_location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v0

    .line 1244
    .local v0, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v0, :cond_0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    .line 1247
    :try_start_0
    invoke-interface/range {v0 .. v13}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v14

    .line 1249
    .local v14, "e":Landroid/os/RemoteException;
    const-string v1, "GpsLocationProvider_ex"

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 19
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1220
    const-string v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1222
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    const/16 v2, 0x2710

    move/from16 v0, p1

    if-le v0, v2, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move-wide/from16 v16, p15

    .line 1225
    :try_start_0
    invoke-interface/range {v1 .. v17}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v18

    .line 1228
    .local v18, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mEnabled"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 995
    const/4 v4, 0x0

    .line 996
    .local v4, "result":Z
    const-string v6, "set_csc_parameters"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 997
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->isOpeatorUsingCscGPS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 998
    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GpsLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    .line 999
    const/4 v4, 0x1

    :cond_0
    :goto_0
    move v5, v4

    .line 1064
    :goto_1
    return v5

    .line 1001
    :cond_1
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "GPS CSC not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v4, 0x0

    goto :goto_0

    .line 1004
    :cond_2
    const-string v6, "request_running"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1005
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    goto :goto_1

    .line 1006
    :cond_3
    const-string v6, "com.skt.intent.action.AGPS"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1007
    const-string v6, "opType"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1008
    .local v3, "opType":Ljava/lang/String;
    const-string v6, "cmdType"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "cmdType":Ljava/lang/String;
    const-string v6, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1011
    const-string v6, "msAssisted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "msBased"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1012
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1020
    :cond_5
    :goto_2
    const/4 v4, 0x1

    .line 1021
    goto :goto_0

    .line 1015
    :cond_6
    const-string v5, "off"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1016
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1017
    const-string/jumbo v5, "sys.sktgps"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1021
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_7
    const-string v6, "setOllehServer"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1022
    const-string v6, "host"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, "hostURL":Ljava/lang/String;
    const-string v6, "port"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1024
    .local v1, "hostPort":I
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1025
    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 1026
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    .line 1027
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v4, 0x1

    .line 1029
    goto/16 :goto_0

    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_8
    const-string v6, "setNativeServer"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1030
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1032
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1033
    :cond_9
    const-string v6, "activateGPS"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1034
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "activateGPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1036
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1037
    :cond_a
    const-string v6, "deactivateGPS"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1038
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "deactivateGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1040
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1041
    :cond_b
    const-string v6, "activateAGPS"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1042
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "activateAGPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assisted_gps_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1044
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1045
    :cond_c
    const-string v6, "deactivateAGPS"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1046
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1048
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1049
    :cond_d
    const-string v6, "setMode"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1050
    const-string v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 1051
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1053
    :cond_e
    const-string v6, "getMode"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1054
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string v5, "mode"

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1057
    :cond_f
    const-string/jumbo v6, "supl2_agnss"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1
.end method

.method public extension_sendGpsTime(JJ)V
    .locals 7
    .param p1, "mLastFixTime"    # J
    .param p3, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    .line 1192
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v2, v3, :cond_1

    .line 1193
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_sync_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gps clock sync: CLOCK_SYNC_ENABLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_sync_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gps:timestamp(Ms) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentTimeMillis:(Ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    sub-long v2, p1, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1197
    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1198
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, "[GPS Time for DRM] reportLocation call setAndBroadcastGPSSetTimeForDRM"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v0, "android.intent.action.GPS_SET_TIME"

    .line 1200
    .local v0, "ACTION_GPS_SET_TIME":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1202
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1203
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1204
    invoke-static {p3, p4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1209
    .end local v0    # "ACTION_GPS_SET_TIME":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;ZZ)I
    .locals 10
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "mNetworkAvailable"    # Z
    .param p4, "singleShot"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1077
    const/4 p1, 0x0

    move v3, p1

    .line 1156
    .end local p1    # "mPositionMode":I
    .local v3, "mPositionMode":I
    :goto_0
    return v3

    .line 1088
    .end local v3    # "mPositionMode":I
    .restart local p1    # "mPositionMode":I
    :cond_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_1

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_1

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v4, v5, :cond_2

    .line 1093
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->extSelectPositionMode(I)I

    move-result p1

    .line 1094
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startNavigating mPositionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_3

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v4, v5, :cond_4

    .line 1099
    :cond_3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "OperationTestMode"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1100
    .local v0, "OperationTestMode":I
    if-nez v0, :cond_4

    .line 1101
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "agps_function_switch"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1102
    .local v2, "isAgpsSwitchMode":I
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startNavigating SW test : isAgpsSwitchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    if-ne v2, v7, :cond_c

    .line 1105
    if-eqz p2, :cond_b

    .line 1106
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1107
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1108
    const/4 p1, 0x0

    .line 1109
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "startNavigating : agps on only for hom network info.isRoaming() == true "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .end local v0    # "OperationTestMode":I
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "isAgpsSwitchMode":I
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_5

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v4, v5, :cond_6

    .line 1137
    :cond_5
    const/4 p1, 0x0

    .line 1138
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startNavigating mPositionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v4

    if-ne v4, v7, :cond_7

    .line 1142
    const-string v4, "GpsLocationProvider_ex"

    const-string v5, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/4 p1, 0x0

    .line 1147
    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1148
    const-string/jumbo v4, "sys.sktgps"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :cond_8
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v4, v5, :cond_9

    .line 1152
    invoke-direct {p0, p4, p3}, Lcom/android/server/location/GpsLocationProvider_samsung;->extCtcSelectPositionMode(ZZ)I

    move-result p1

    .line 1153
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHN_CTC startNavigating mPositionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v3, p1

    .line 1156
    .end local p1    # "mPositionMode":I
    .restart local v3    # "mPositionMode":I
    goto/16 :goto_0

    .line 1112
    .end local v3    # "mPositionMode":I
    .restart local v0    # "OperationTestMode":I
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "isAgpsSwitchMode":I
    .restart local p1    # "mPositionMode":I
    :cond_a
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "OperationMode"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1113
    if-eq p1, v7, :cond_4

    if-eq p1, v9, :cond_4

    .line 1114
    const/4 p1, 0x1

    .line 1115
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "startNavigating : agps on only for hom network info.isRoaming() == false have not record. MS_BASED "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1119
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_b
    const/4 p1, 0x0

    .line 1120
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "startNavigating : agps on only for hom network PS error  STANDALONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1122
    :cond_c
    if-ne v2, v9, :cond_d

    .line 1124
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "OperationMode"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1125
    if-eq p1, v7, :cond_4

    if-eq p1, v9, :cond_4

    .line 1126
    const/4 p1, 0x1

    .line 1127
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startNavigating : //agpson for all network isAgpsSwitchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1130
    :cond_d
    const/4 p1, 0x0

    .line 1131
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startNavigating : //agps off isAgpsSwitchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public extension_set_supl_server()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 958
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 959
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 980
    :cond_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_2

    .line 981
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 986
    :cond_1
    :goto_0
    return-void

    .line 983
    :cond_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 984
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    move-object v1, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public extension_set_xtra_downloaded_time()V
    .locals 5

    .prologue
    .line 909
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 912
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 913
    .local v1, "timestamp":J
    const-string v3, "persist.sys.xtra_time"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 915
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 917
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "timestamp":J
    :cond_1
    return-void
.end method

.method public extension_stopNavigating()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1166
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 1167
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1169
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 1174
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 1175
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_2

    .line 1176
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1177
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_2
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1181
    :cond_3
    return-void
.end method

.method public extension_xtra_DownloadRequest()V
    .locals 3

    .prologue
    .line 926
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "extension_xtra_DownloadRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qcom.location.XtraDownloadRequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 929
    return-void
.end method

.method public getMobileDataEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1347
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1348
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1351
    .local v0, "retVal":Z
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1352
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 1355
    :cond_0
    :goto_1
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return v0

    .end local v0    # "retVal":Z
    :cond_1
    move v0, v3

    .line 1348
    goto :goto_0

    .restart local v0    # "retVal":Z
    :cond_2
    move v0, v3

    .line 1352
    goto :goto_1
.end method

.method public getWifiOnlyModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1337
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public init_GpsLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mProperties"    # Ljava/util/Properties;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    .line 182
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v7, "scontext"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/SContextManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 183
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 186
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v6, v7, :cond_0

    .line 187
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSecProperties:Ljava/util/Properties;

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/data/com.android.angryGps/secgps.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 191
    .local v5, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p2, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 192
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 194
    const-string v6, "SERVER_TYPE"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "server_type_s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 196
    .local v3, "server_type_i":I
    if-eqz v3, :cond_0

    .line 197
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mAutoConfigEnabled:Z

    .line 198
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Auto Config is DISABLED in AngryGPS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "server_type_i":I
    .end local v4    # "server_type_s":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v6, v7, :cond_1

    .line 208
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    .line 210
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v6, "/etc/gps_cmcc.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v1    # "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 212
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 213
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 215
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerHost_cmcc:Ljava/lang/String;

    .line 216
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "portString_cmcc":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerHost_cmcc:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 219
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerPort_cmcc:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 228
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "portString_cmcc":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Could not open GPS configuration file /data/data/com.android.angryGps/secgps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "portString_cmcc":Ljava/lang/String;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to parse SUPL_PORT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "portString_cmcc":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "Could not open GPS configuration file /etc/gps_cmcc.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
