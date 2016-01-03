.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$ProxySettings;,
        Landroid/net/wifi/WifiConfiguration$IpAssignment;,
        Landroid/net/wifi/WifiConfiguration$OperationMode;,
        Landroid/net/wifi/WifiConfiguration$SamsungFlag;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field public static final DISABLED_ASSOCIATION_REJECT:I = 0x4

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_CAPTIVE_PORTAL:I = 0xd

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_EAP_GENERAL_FAILURE:I = 0x9

.field public static final DISABLED_LOW_RSSI:I = 0x5

.field public static final DISABLED_MOBILITY_BLOCK:I = 0x6

.field public static final DISABLED_NOT_SUBSCRIBED:I = 0x7

.field public static final DISABLED_NO_INTERNET:I = 0xc

.field public static final DISABLED_POOR_CONNECTIVITY:I = 0xb

.field public static final DISABLED_SCC_DIFF_FREQ:I = 0xa

.field public static final DISABLED_TEMPORARY_DENIED:I = 0x8

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final HS20OPERATORNAME:Ljava/lang/String; = "HS20OperatorName"

.field public static final HS20VENUENAME:Ljava/lang/String; = "HS20VenueName"

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static final ISHS20AP:Ljava/lang/String; = "isHS20AP"

.field public static final ISHS20HOME:Ljava/lang/String; = "isHS20Home"

.field public static final KEYSTORE_ENGINE_ID:Ljava/lang/String; = "keystore"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final OLD_PRIVATE_KEY_NAME:Ljava/lang/String; = "private_key"

.field public static final SIMNUMBER:Ljava/lang/String; = "simnumber"

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final WAPI_ASCII_PASSWORD:I = 0x0

.field public static final WAPI_HEX_PASSWORD:I = 0x1

.field public static final authenticatedVarName:Ljava/lang/String; = "authenticated"

.field public static final autojoinVarName:Ljava/lang/String; = "autojoin"

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final captivePortalVarName:Ljava/lang/String; = "captive_portal"

.field public static final frequencyVarName:Ljava/lang/String; = "frequency"

.field public static final hessidVarName:Ljava/lang/String; = "hessid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final isUsableInternetVarName:Ljava/lang/String; = "usable_internet"

.field public static final isVendorSpecSsidVarName:Ljava/lang/String; = "vendor_spec_ssid"

.field public static final modeVarName:Ljava/lang/String; = "mode"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final skipInternetCheckVarName:Ljava/lang/String; = "skip_internet_check"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wapiAsCertVarName:Ljava/lang/String; = "wapi_as_cert"

.field public static final wapiCertIndexVarName:Ljava/lang/String; = "cert_index"

.field public static final wapiPskTypeVarName:Ljava/lang/String; = "psk_key_type"

.field public static final wapiUserCertVarName:Ljava/lang/String; = "wapi_user_cert"

.field public static final wepKeyVarNames:[Ljava/lang/String;

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public HESSID:Ljava/lang/String;

.field public HS20OpURL:Ljava/lang/String;

.field public HS20OperatorName:Ljava/lang/String;

.field public HS20VenueName:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public apIsolate:I

.field public autojoin:I

.field public channel:I

.field public disableReason:I

.field public disabledTime:J

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public frequency:I

.field public hiddenSSID:Z

.field public inRecoverArea:Z

.field public ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public isAuthenticated:Z

.field public isCaptivePortal:Z

.field public isHS20AP:I

.field public isHS20Home:I

.field public isUsableInternet:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field public macaddrAcl:I

.field public maxclient:I

.field public mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

.field public networkId:I

.field public notInRangeTime:J

.field public poorBSSID:Ljava/lang/String;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public recoverableRSSI:I

.field public samsungSpecificFlags:Ljava/util/BitSet;

.field public simnum:I

.field public skipInternetCheck:Z

.field public status:I

.field public txPowerMode:I

.field public vendorIE:I

.field public wapiAsCert:Ljava/lang/String;

.field public wapiCertIndex:I

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I

.field public wpsStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 34
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiConfiguration;->DBG:Z

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "wep_key0"

    aput-object v3, v0, v1

    const-string/jumbo v1, "wep_key1"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 1266
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 717
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 718
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 719
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 720
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 721
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 722
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 723
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 724
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 725
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 726
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 727
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 729
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 732
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 733
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 734
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 738
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 739
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 740
    const-string v1, "10"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 741
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 742
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 743
    iput v5, p0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 744
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 747
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    .line 750
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 751
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 752
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 753
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 756
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    .line 757
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    .line 758
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    .line 759
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    .line 760
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    .line 761
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    .line 764
    const/16 v1, -0xc8

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 765
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 766
    iput-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 767
    iput-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 768
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 771
    iput v5, p0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 774
    sget-object v1, Landroid/net/wifi/WifiConfiguration$OperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$OperationMode;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    .line 775
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 777
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->simnum:I

    .line 779
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 780
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 783
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 786
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    .line 788
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    if-eqz p1, :cond_1

    .line 1104
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1105
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1106
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1107
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1108
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1109
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1111
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 1112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1113
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1117
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1118
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1119
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1120
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1121
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1122
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1123
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1125
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1127
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1128
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1129
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1133
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 1134
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 1135
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 1136
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 1137
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 1138
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 1139
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 1142
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    .line 1145
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    .line 1146
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    .line 1147
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    .line 1148
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    .line 1149
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    .line 1150
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    .line 1153
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 1154
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 1155
    iget-wide v1, p1, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iput-wide v1, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 1156
    iget-wide v1, p1, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iput-wide v1, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 1157
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 1160
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 1163
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    .line 1164
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 1166
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->simnum:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->simnum:I

    .line 1168
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 1169
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 1173
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 1176
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    .line 1179
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1059
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1061
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 1062
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1066
    :cond_0
    return-object v2
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1055
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 1070
    const/4 v0, -0x1

    .line 1072
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1075
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1077
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1098
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 1081
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1093
    :goto_0
    return v0

    .line 1086
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1087
    goto :goto_0

    .line 1088
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 1089
    goto :goto_0

    .line 1090
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 1091
    goto :goto_0

    .line 1093
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 5
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1026
    const/4 v1, 0x0

    .line 1030
    .local v1, "keyMgmt":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1031
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-nez v2, :cond_1

    .line 1032
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1034
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1035
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 1037
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1041
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1042
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not an EAP network"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_5

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :goto_0
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 998
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 1014
    :goto_0
    return-object v2

    .line 999
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1000
    .local v0, "length":I
    if-le v0, v7, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1001
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1008
    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1010
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 1012
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1014
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 796
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 797
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 810
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, -0x1

    const/16 v11, 0xa

    .line 815
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .local v6, "sbuf":Ljava/lang/StringBuilder;
    iget v8, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v8, :cond_3

    .line 817
    const-string v8, "* "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_0
    :goto_0
    const-string v8, "ID: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 822
    sget-boolean v8, Landroid/net/wifi/WifiConfiguration;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, " SSID: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " BSSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " HESSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isHS20AP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 826
    :cond_1
    const-string v8, " PRIO: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 827
    const-string v8, " SIM NUMBER: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->simnum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    const-string v8, " KeyMgmt:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 831
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 832
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_4

    .line 834
    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 818
    .end local v2    # "k":I
    :cond_3
    iget v8, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 819
    const-string v8, "- DSBLE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 836
    .restart local v2    # "k":I
    :cond_4
    const-string v8, "??"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 840
    :cond_5
    const-string v8, " Protocols:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_3
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 842
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v8, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 843
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    sget-object v8, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_7

    .line 845
    sget-object v8, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 847
    :cond_7
    const-string v8, "??"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 851
    :cond_8
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    const-string v8, " AuthAlgorithms:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v0, v8, :cond_b

    .line 854
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 855
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    sget-object v8, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_a

    .line 857
    sget-object v8, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 859
    :cond_a
    const-string v8, "??"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 863
    :cond_b
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 864
    const-string v8, " PairwiseCiphers:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const/4 v5, 0x0

    .local v5, "pc":I
    :goto_7
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v5, v8, :cond_e

    .line 866
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 867
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    sget-object v8, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v5, v8, :cond_d

    .line 869
    sget-object v8, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 871
    :cond_d
    const-string v8, "??"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 875
    :cond_e
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    const-string v8, " GroupCiphers:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const/4 v1, 0x0

    .local v1, "gc":I
    :goto_9
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v1, v8, :cond_11

    .line 878
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v8, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 879
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    sget-object v8, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_10

    .line 881
    sget-object v8, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_f
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 883
    :cond_10
    const-string v8, "??"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 887
    :cond_11
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PSK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v8, :cond_12

    .line 889
    const/16 v8, 0x2a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    :cond_12
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IP assignment: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Proxy settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Channel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAC ACL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MaxClient: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VendorIE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ap Isolate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TxPowerMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    const-string v8, "samsungSpecificFlags:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const/4 v7, 0x0

    .local v7, "sf":I
    :goto_b
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v7, v8, :cond_15

    .line 913
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 914
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    sget-object v8, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_14

    .line 916
    sget-object v8, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_13
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 918
    :cond_14
    const-string v8, "??"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 923
    :cond_15
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    if-eqz v8, :cond_16

    .line 925
    const-string v8, " WapiAsCert: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    :cond_16
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v8, :cond_17

    .line 929
    const-string v8, " WapiUserCert: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :cond_17
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 932
    iget v8, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    if-eq v8, v10, :cond_18

    .line 933
    const-string v8, " WapiCertIndex: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    :cond_18
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 936
    iget v8, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    if-eq v8, v10, :cond_19

    .line 937
    const-string v8, " WapiPskType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    :cond_19
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recoverableRSSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inRecoverArea: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 946
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disabledTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 948
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notInRangeTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 950
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    if-eqz v8, :cond_1b

    .line 951
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 952
    .local v3, "length":I
    sget-boolean v8, Landroid/net/wifi/WifiConfiguration;->DBG:Z

    if-nez v8, :cond_1a

    const/4 v8, 0x5

    if-ge v3, v8, :cond_1b

    :cond_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "poorBSSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .end local v3    # "length":I
    :cond_1b
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 958
    const-string v8, "mode:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$OperationMode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    const-string v8, "frequency:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCaptivePortal: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 967
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAuthenticated: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 972
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isUsableInternet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 977
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skipInternetCheck: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1183
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1187
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1188
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1190
    .local v3, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    .end local v3    # "wepKey":Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1197
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1198
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1199
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1200
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1202
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1204
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1205
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1206
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1210
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1222
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1223
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    :cond_1
    :goto_2
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1232
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1235
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1236
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1239
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    iget-wide v7, p0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1242
    iget-wide v7, p0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1243
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1246
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$OperationMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1250
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->simnum:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    if-eqz v4, :cond_8

    :goto_7
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    return-void

    :cond_2
    move v4, v6

    .line 1194
    goto/16 :goto_1

    .line 1224
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1225
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1226
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1227
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :cond_4
    move v4, v6

    .line 1240
    goto :goto_3

    :cond_5
    move v4, v6

    .line 1254
    goto :goto_4

    :cond_6
    move v4, v6

    .line 1255
    goto :goto_5

    :cond_7
    move v4, v6

    .line 1258
    goto :goto_6

    :cond_8
    move v5, v6

    .line 1261
    goto :goto_7
.end method
