.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addIdleTimer:I = 0x4a

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addRouteWithMetric:I = 0x68

.field static final TRANSACTION_addSecondaryRoute:I = 0x10

.field static final TRANSACTION_addUpstreamV6Interface:I = 0x25

.field static final TRANSACTION_attachPppd:I = 0x28

.field static final TRANSACTION_cancelWps:I = 0x3a

.field static final TRANSACTION_clearDnsInterfaceForPid:I = 0x61

.field static final TRANSACTION_clearDnsInterfaceForUidRange:I = 0x63

.field static final TRANSACTION_clearDnsInterfaceMaps:I = 0x64

.field static final TRANSACTION_clearHostExemption:I = 0x5f

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearMarkedForwarding:I = 0x59

.field static final TRANSACTION_clearMarkedForwardingRoute:I = 0x5d

.field static final TRANSACTION_clearUidRangeRoute:I = 0x57

.field static final TRANSACTION_delSrcRoute:I = 0x6a

.field static final TRANSACTION_detachPppd:I = 0x29

.field static final TRANSACTION_disableEpdg:I = 0x21

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x24

.field static final TRANSACTION_enableEpdg:I = 0x20

.field static final TRANSACTION_enableIpv6:I = 0xc

.field static final TRANSACTION_enableNat:I = 0x23

.field static final TRANSACTION_flushDefaultDnsCache:I = 0x4e

.field static final TRANSACTION_flushInterfaceDnsCache:I = 0x4f

.field static final TRANSACTION_getAccessPointNumConnectedSta:I = 0x2a

.field static final TRANSACTION_getAccessPointStaList:I = 0x2b

.field static final TRANSACTION_getDnsForwarders:I = 0x1f

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x15

.field static final TRANSACTION_getMarkForProtect:I = 0x5b

.field static final TRANSACTION_getMarkForUid:I = 0x5a

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x3d

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x3b

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x3c

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x3f

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x3e

.field static final TRANSACTION_getNetworkStatsVideoCall:I = 0x49

.field static final TRANSACTION_getRoutes:I = 0xd

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x46

.field static final TRANSACTION_isClatdStarted:I = 0x67

.field static final TRANSACTION_isFirewallEnabled:I = 0x51

.field static final TRANSACTION_isTetheringStarted:I = 0x19

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x1c

.field static final TRANSACTION_listTtys:I = 0x27

.field static final TRANSACTION_readWhiteList:I = 0x2d

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeIdleTimer:I = 0x4b

.field static final TRANSACTION_removeInterfaceAlert:I = 0x43

.field static final TRANSACTION_removeInterfaceQuota:I = 0x41

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeSecondaryRoute:I = 0x11

.field static final TRANSACTION_removeUpstreamV6Interface:I = 0x26

.field static final TRANSACTION_replaceDefaultRoute:I = 0x14

.field static final TRANSACTION_replaceSrcRoute:I = 0x69

.field static final TRANSACTION_rmcEnable:I = 0x31

.field static final TRANSACTION_rmcSetInterval:I = 0x34

.field static final TRANSACTION_rmcSetMac:I = 0x32

.field static final TRANSACTION_rmcSetRate:I = 0x33

.field static final TRANSACTION_setAccessPoint:I = 0x38

.field static final TRANSACTION_setAccessPointDisassocSta:I = 0x2c

.field static final TRANSACTION_setDefaultInterfaceForDns:I = 0x4c

.field static final TRANSACTION_setDnsForwarders:I = 0x1d

.field static final TRANSACTION_setDnsInterfaceForPid:I = 0x60

.field static final TRANSACTION_setDnsInterfaceForUidRange:I = 0x62

.field static final TRANSACTION_setDnsServersForInterface:I = 0x4d

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x54

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x53

.field static final TRANSACTION_setFirewallEnabled:I = 0x50

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x52

.field static final TRANSACTION_setFirewallUidRule:I = 0x55

.field static final TRANSACTION_setGlobalAlert:I = 0x44

.field static final TRANSACTION_setHostExemption:I = 0x5e

.field static final TRANSACTION_setInterfaceAlert:I = 0x42

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x40

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x16

.field static final TRANSACTION_setMacaddrAcl:I = 0x2e

.field static final TRANSACTION_setMarkedForwarding:I = 0x58

.field static final TRANSACTION_setMarkedForwardingRoute:I = 0x5c

.field static final TRANSACTION_setMaxClient:I = 0x2f

.field static final TRANSACTION_setMtu:I = 0x12

.field static final TRANSACTION_setTxPower:I = 0x30

.field static final TRANSACTION_setUidNetworkRules:I = 0x45

.field static final TRANSACTION_setUidRangeRoute:I = 0x56

.field static final TRANSACTION_setv6DnsForwarders:I = 0x1e

.field static final TRANSACTION_shutdown:I = 0x13

.field static final TRANSACTION_startAccessPoint:I = 0x36

.field static final TRANSACTION_startClatd:I = 0x65

.field static final TRANSACTION_startNetworkStatsOnPorts:I = 0x47

.field static final TRANSACTION_startTethering:I = 0x17

.field static final TRANSACTION_startWpsPbc:I = 0x39

.field static final TRANSACTION_stopAccessPoint:I = 0x37

.field static final TRANSACTION_stopClatd:I = 0x66

.field static final TRANSACTION_stopNetworkStatsOnPorts:I = 0x48

.field static final TRANSACTION_stopTethering:I = 0x18

.field static final TRANSACTION_tetherInterface:I = 0x1a

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x1b

.field static final TRANSACTION_updateRa:I = 0x22

.field static final TRANSACTION_wifiFirmwareReload:I = 0x35

.field static final TRANSACTION_wps_ap_method:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 1204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 62
    .restart local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    .end local v10    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 80
    .local v10, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v10, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InterfaceConfiguration;

    .line 102
    .local v2, "_arg1":Landroid/net/InterfaceConfiguration;
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 100
    .end local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_2

    .line 108
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 135
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 140
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 139
    .end local v2    # "_arg1":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 146
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v10

    .line 180
    .local v10, "_result":[Landroid/net/RouteInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p3, v10, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 182
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 186
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[Landroid/net/RouteInfo;
    :sswitch_e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 196
    .local v2, "_arg1":Landroid/net/RouteInfo;
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 194
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_4

    .line 202
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 212
    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 210
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    .line 218
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_10
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 228
    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 226
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_6

    .line 234
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_11
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 244
    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_7

    .line 250
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_12
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 268
    :sswitch_14
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 273
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->replaceDefaultRoute(Ljava/lang/String;[B)Z

    move-result v10

    .line 274
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 275
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 280
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":Z
    :sswitch_15
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v10

    .line 282
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v10, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 283
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 288
    .end local v10    # "_result":Z
    :sswitch_16
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 291
    .local v1, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 290
    .end local v1    # "_arg0":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 297
    :sswitch_17
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 306
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 313
    :sswitch_19
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v10

    .line 315
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v10, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 316
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 321
    .end local v10    # "_result":Z
    :sswitch_1a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 330
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 339
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v10

    .line 341
    .local v10, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 347
    .end local v10    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders([Ljava/lang/String;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 356
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_1e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 359
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setv6DnsForwarders([Ljava/lang/String;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 365
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_1f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v10

    .line 367
    .restart local v10    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 373
    .end local v10    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 384
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_21
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 395
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_22
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 408
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_23
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 419
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 430
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_25
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->addUpstreamV6Interface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 448
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v10

    .line 450
    .restart local v10    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 456
    .end local v10    # "_result":[Ljava/lang/String;
    :sswitch_28
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 467
    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 473
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :sswitch_29
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 482
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointNumConnectedSta()I

    move-result v10

    .line 484
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v10    # "_result":I
    :sswitch_2b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointStaList()Ljava/lang/String;

    move-result-object v10

    .line 492
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 498
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setAccessPointDisassocSta(Ljava/lang/String;)I

    move-result v10

    .line 502
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 508
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_2d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->readWhiteList()I

    move-result v10

    .line 510
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 516
    .end local v10    # "_result":I
    :sswitch_2e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setMacaddrAcl(I)I

    move-result v10

    .line 520
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 526
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_2f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setMaxClient(I)I

    move-result v10

    .line 530
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 536
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_30
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 539
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setTxPower(I)I

    move-result v10

    .line 540
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 546
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_31
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 549
    .local v1, "_arg0":Z
    :goto_c
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->rmcEnable(Z)I

    move-result v10

    .line 550
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 548
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 556
    :sswitch_32
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->rmcSetMac(Ljava/lang/String;)I

    move-result v10

    .line 560
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 566
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_33
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 569
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->rmcSetRate(I)I

    move-result v10

    .line 570
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 576
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_34
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 579
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->rmcSetInterval(I)I

    move-result v10

    .line 580
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 586
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_35
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 597
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_36
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 600
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 606
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 607
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 603
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_d

    .line 613
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_37
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 622
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_38
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 625
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 631
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 632
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 628
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_e

    .line 638
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_39
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->startWpsPbc()V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 645
    :sswitch_3a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->cancelWps()V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 652
    :sswitch_3b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v10

    .line 654
    .local v10, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    if-eqz v10, :cond_e

    .line 656
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 662
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 660
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 666
    .end local v10    # "_result":Landroid/net/NetworkStats;
    :sswitch_3c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v10

    .line 668
    .restart local v10    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v10, :cond_f

    .line 670
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 676
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 674
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 680
    .end local v10    # "_result":Landroid/net/NetworkStats;
    :sswitch_3d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v10

    .line 682
    .restart local v10    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v10, :cond_10

    .line 684
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 690
    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 688
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 694
    .end local v10    # "_result":Landroid/net/NetworkStats;
    :sswitch_3e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v10

    .line 698
    .restart local v10    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    if-eqz v10, :cond_11

    .line 700
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 706
    :goto_12
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 704
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 710
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Landroid/net/NetworkStats;
    :sswitch_3f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v10

    .line 712
    .restart local v10    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v10, :cond_12

    .line 714
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 720
    :goto_13
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 718
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 724
    .end local v10    # "_result":Landroid/net/NetworkStats;
    :sswitch_40
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 729
    .local v8, "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 735
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    :sswitch_41
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 744
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_42
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 749
    .restart local v8    # "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 755
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    :sswitch_43
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 758
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 764
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_44
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 767
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 773
    .end local v6    # "_arg0":J
    :sswitch_45
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 777
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v2, 0x1

    .line 778
    .local v2, "_arg1":Z
    :goto_14
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    .line 779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 777
    .end local v2    # "_arg1":Z
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 784
    .end local v1    # "_arg0":I
    :sswitch_46
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v10

    .line 786
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    if-eqz v10, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 787
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 792
    .end local v10    # "_result":Z
    :sswitch_47
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 799
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 805
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_48
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 809
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 811
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 812
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 818
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_49
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 822
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 824
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 825
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;

    move-result-object v10

    .line 826
    .local v10, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v10, :cond_15

    .line 828
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    :goto_16
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 832
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 838
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v10    # "_result":Landroid/net/NetworkStats;
    :sswitch_4a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 842
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 851
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_4b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 854
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 860
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 863
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 869
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 873
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 876
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 882
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_4e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->flushDefaultDnsCache()V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 889
    :sswitch_4f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->flushInterfaceDnsCache(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 898
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_50
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    .line 901
    .local v1, "_arg0":Z
    :goto_17
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 900
    .end local v1    # "_arg0":Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 907
    :sswitch_51
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v10

    .line 909
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v10, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 910
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 915
    .end local v10    # "_result":Z
    :sswitch_52
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 919
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    .line 920
    .local v2, "_arg1":Z
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 919
    .end local v2    # "_arg1":Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 926
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_53
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 930
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    .line 931
    .restart local v2    # "_arg1":Z
    :goto_1a
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 930
    .end local v2    # "_arg1":Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 937
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_54
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 941
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 943
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v3, 0x1

    .line 944
    .local v3, "_arg2":Z
    :goto_1b
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 943
    .end local v3    # "_arg2":Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 950
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_55
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 954
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x1

    .line 955
    .local v2, "_arg1":Z
    :goto_1c
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(IZ)V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 954
    .end local v2    # "_arg1":Z
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 961
    .end local v1    # "_arg0":I
    :sswitch_56
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 967
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 968
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidRangeRoute(Ljava/lang/String;II)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 974
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_57
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 978
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 981
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->clearUidRangeRoute(Ljava/lang/String;II)V

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 987
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_58
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 990
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setMarkedForwarding(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 996
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_59
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 999
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearMarkedForwarding(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1005
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1008
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getMarkForUid(I)I

    move-result v10

    .line 1009
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_5b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getMarkForProtect()I

    move-result v10

    .line 1017
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1023
    .end local v10    # "_result":I
    :sswitch_5c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 1028
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 1033
    .local v2, "_arg1":Landroid/net/RouteInfo;
    :goto_1d
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setMarkedForwardingRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_1c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_1d

    .line 1039
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_5d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1044
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 1049
    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    :goto_1e
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->clearMarkedForwardingRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1047
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_1d
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_1e

    .line 1055
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_5e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1058
    sget-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1063
    .local v1, "_arg0":Landroid/net/LinkAddress;
    :goto_1f
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setHostExemption(Landroid/net/LinkAddress;)V

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1061
    .end local v1    # "_arg0":Landroid/net/LinkAddress;
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/LinkAddress;
    goto :goto_1f

    .line 1069
    .end local v1    # "_arg0":Landroid/net/LinkAddress;
    :sswitch_5f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 1072
    sget-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1077
    .restart local v1    # "_arg0":Landroid/net/LinkAddress;
    :goto_20
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearHostExemption(Landroid/net/LinkAddress;)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1075
    .end local v1    # "_arg0":Landroid/net/LinkAddress;
    :cond_1f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/LinkAddress;
    goto :goto_20

    .line 1083
    .end local v1    # "_arg0":Landroid/net/LinkAddress;
    :sswitch_60
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1088
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setDnsInterfaceForPid(Ljava/lang/String;I)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1094
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_61
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1097
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearDnsInterfaceForPid(I)V

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1103
    .end local v1    # "_arg0":I
    :sswitch_62
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1109
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1110
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V

    .line 1111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_63
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1120
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1121
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->clearDnsInterfaceForUidRange(II)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1127
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_64
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->clearDnsInterfaceMaps()V

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1134
    :sswitch_65
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1143
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_66
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopClatd()V

    .line 1145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1150
    :sswitch_67
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted()Z

    move-result v10

    .line 1152
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    if-eqz v10, :cond_20

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1153
    :cond_20
    const/4 v0, 0x0

    goto :goto_21

    .line 1158
    .end local v10    # "_result":Z
    :sswitch_68
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1164
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 1165
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 1170
    .local v3, "_arg2":Landroid/net/RouteInfo;
    :goto_22
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v10

    .line 1171
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    if-eqz v10, :cond_22

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1168
    .end local v3    # "_arg2":Landroid/net/RouteInfo;
    .end local v10    # "_result":Z
    :cond_21
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/net/RouteInfo;
    goto :goto_22

    .line 1172
    .restart local v10    # "_result":Z
    :cond_22
    const/4 v0, 0x0

    goto :goto_23

    .line 1177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/net/RouteInfo;
    .end local v10    # "_result":Z
    :sswitch_69
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1183
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1185
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1186
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z

    move-result v10

    .line 1187
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    if-eqz v10, :cond_23

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1188
    :cond_23
    const/4 v0, 0x0

    goto :goto_24

    .line 1193
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v10    # "_result":Z
    :sswitch_6a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1197
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1198
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delSrcRoute([BI)Z

    move-result v10

    .line 1199
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    if-eqz v10, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1200
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
