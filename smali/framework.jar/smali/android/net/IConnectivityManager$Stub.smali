.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_ResetCwDefaultService:I = 0x45

.field static final TRANSACTION_SetCwDefaultService:I = 0x44

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x36

.field static final TRANSACTION_captivePortalCheckCompleted:I = 0x37

.field static final TRANSACTION_checkMobileProvisioning:I = 0x3a

.field static final TRANSACTION_createEnterpriseVpn:I = 0x46

.field static final TRANSACTION_disconnect:I = 0x48

.field static final TRANSACTION_disconnectSystemVpn:I = 0x4c

.field static final TRANSACTION_establishEnterpriseVpn:I = 0x4a

.field static final TRANSACTION_establishEnterpriseVpnIS:I = 0x4d

.field static final TRANSACTION_establishVpn:I = 0x31

.field static final TRANSACTION_findConnectionTypeForIface:I = 0x39

.field static final TRANSACTION_getActiveLinkProperties:I = 0xb

.field static final TRANSACTION_getActiveLinkQualityInfo:I = 0x3e

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x4

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x5

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xe

.field static final TRANSACTION_getAllLinkQualityInfo:I = 0x3f

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkInfoEx:I = 0x8

.field static final TRANSACTION_getAllNetworkState:I = 0xd

.field static final TRANSACTION_getDhcpServerConfiguration:I = 0x42

.field static final TRANSACTION_getGlobalProxy:I = 0x2a

.field static final TRANSACTION_getInterfaceName:I = 0x47

.field static final TRANSACTION_getLastTetherError:I = 0x1e

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x34

.field static final TRANSACTION_getLinkProperties:I = 0xc

.field static final TRANSACTION_getLinkQualityInfo:I = 0x3d

.field static final TRANSACTION_getMobileDataEnabled:I = 0x16

.field static final TRANSACTION_getMobileDataEnabledEx:I = 0x18

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x3b

.field static final TRANSACTION_getMobileRedirectedProvisioningUrl:I = 0x3c

.field static final TRANSACTION_getNetworkInfo:I = 0x6

.field static final TRANSACTION_getNetworkPreference:I = 0x3

.field static final TRANSACTION_getProvisioningOrActiveNetworkInfo:I = 0x9

.field static final TRANSACTION_getProxy:I = 0x2c

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x25

.field static final TRANSACTION_getTetherableIfaces:I = 0x20

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x23

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x24

.field static final TRANSACTION_getTetheredIfaces:I = 0x21

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x22

.field static final TRANSACTION_getVpnConfig:I = 0x32

.field static final TRANSACTION_isActiveNetworkMetered:I = 0xf

.field static final TRANSACTION_isMobilePolicyDataEnable:I = 0x1b

.field static final TRANSACTION_isNetworkSupported:I = 0xa

.field static final TRANSACTION_isTetheringSupported:I = 0x1f

.field static final TRANSACTION_markSocketAsUser:I = 0x1

.field static final TRANSACTION_onSwitchDataNetworkCallback:I = 0x52

.field static final TRANSACTION_onSwitchToSim1DataNetworkCallback:I = 0x53

.field static final TRANSACTION_onSwitchToSim2DataNetworkCallback:I = 0x54

.field static final TRANSACTION_prepareEnterpriseVpn:I = 0x49

.field static final TRANSACTION_prepareVpn:I = 0x30

.field static final TRANSACTION_prepareVpnForMvp:I = 0x2f

.field static final TRANSACTION_protectEnterpriseVpn:I = 0x4b

.field static final TRANSACTION_protectVpn:I = 0x2e

.field static final TRANSACTION_reportInetCondition:I = 0x29

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x28

.field static final TRANSACTION_requestRouteToHost:I = 0x14

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x15

.field static final TRANSACTION_saveDhcpServerConfiguration:I = 0x43

.field static final TRANSACTION_setAirplaneMode:I = 0x41

.field static final TRANSACTION_setDataDependency:I = 0x2d

.field static final TRANSACTION_setGlobalProxy:I = 0x2b

.field static final TRANSACTION_setMobileDataEnabled:I = 0x17

.field static final TRANSACTION_setMobileDataEnabledEx:I = 0x19

.field static final TRANSACTION_setNcmTethering:I = 0x27

.field static final TRANSACTION_setNetworkPreference:I = 0x2

.field static final TRANSACTION_setPolicyDataEnable:I = 0x1a

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x40

.field static final TRANSACTION_setRadio:I = 0x11

.field static final TRANSACTION_setRadios:I = 0x10

.field static final TRANSACTION_setUsbTethering:I = 0x26

.field static final TRANSACTION_startLegacyVpn:I = 0x33

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x12

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x13

.field static final TRANSACTION_supplyMessenger:I = 0x38

.field static final TRANSACTION_supplyMessengerEx:I = 0x56

.field static final TRANSACTION_switchDataNetwork:I = 0x4f

.field static final TRANSACTION_switchDataNetworkForMMS:I = 0x55

.field static final TRANSACTION_switchToSim1DataNetwork:I = 0x50

.field static final TRANSACTION_switchToSim2DataNetwork:I = 0x51

.field static final TRANSACTION_tether:I = 0x1c

.field static final TRANSACTION_untether:I = 0x1d

.field static final TRANSACTION_updateEnterpriseVpn:I = 0x4e

.field static final TRANSACTION_updateLockdownVpn:I = 0x35


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1058
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 47
    :sswitch_0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 61
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 68
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v6

    .line 79
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v6    # "_result":I
    :sswitch_4
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 87
    .local v6, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v6, :cond_1

    .line 89
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v6    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 103
    .restart local v6    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v6, :cond_2

    .line 105
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 115
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 119
    .restart local v6    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v6, :cond_3

    .line 121
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 133
    .local v6, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 139
    .end local v6    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 141
    .restart local v6    # "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 147
    .end local v6    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_9
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 149
    .local v6, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v6, :cond_4

    .line 151
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 155
    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v6    # "_result":Landroid/net/NetworkInfo;
    :sswitch_a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v6

    .line 165
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v6, :cond_5

    move v0, v7

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v8

    goto :goto_2

    .line 171
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 173
    .local v6, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v6, :cond_6

    .line 175
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v6    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 189
    .restart local v6    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v6, :cond_7

    .line 191
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 195
    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v6

    .line 203
    .local v6, "_result":[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 209
    .end local v6    # "_result":[Landroid/net/NetworkState;
    :sswitch_e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v6

    .line 211
    .local v6, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v6, :cond_8

    .line 213
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v6, p3, v7}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 217
    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v6    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v6

    .line 225
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v6, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v6    # "_result":Z
    :sswitch_10
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v7

    .line 234
    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v6

    .line 235
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_b
    move v1, v8

    .line 233
    goto :goto_3

    .line 241
    :sswitch_11
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v2, v7

    .line 246
    .local v2, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v6

    .line 247
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v6, :cond_c

    move v8, v7

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_d
    move v2, v8

    .line 245
    goto :goto_4

    .line 253
    .end local v1    # "_arg0":I
    :sswitch_12
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 260
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    .line 261
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v6    # "_result":I
    :sswitch_13
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v6

    .line 273
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 279
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_14
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(IILjava/lang/String;)Z

    move-result v6

    .line 287
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v6, :cond_e

    move v8, v7

    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_15
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 299
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v6

    .line 301
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v6, :cond_f

    move v8, v7

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_16
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v6

    .line 309
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v6, :cond_10

    move v8, v7

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v6    # "_result":Z
    :sswitch_17
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v1, v7

    .line 318
    .local v1, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_11
    move v1, v8

    .line 317
    goto :goto_5

    .line 324
    :sswitch_18
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabledEx(I)Z

    move-result v6

    .line 328
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v6, :cond_12

    move v8, v7

    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 334
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v1, v7

    .line 338
    .local v1, "_arg0":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabledEx(ZI)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_13
    move v1, v8

    .line 336
    goto :goto_6

    .line 345
    :sswitch_1a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v2, v7

    .line 350
    .local v2, "_arg1":Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_14
    move v2, v8

    .line 349
    goto :goto_7

    .line 356
    .end local v1    # "_arg0":I
    :sswitch_1b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isMobilePolicyDataEnable()Z

    move-result v6

    .line 358
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v6, :cond_15

    move v8, v7

    :cond_15
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 364
    .end local v6    # "_result":Z
    :sswitch_1c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v6

    .line 368
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 374
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_1d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v6

    .line 378
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 384
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_1e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v6

    .line 388
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 394
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_1f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v6

    .line 396
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v6, :cond_16

    move v8, v7

    :cond_16
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 402
    .end local v6    # "_result":Z
    :sswitch_20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 412
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_22
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 420
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 428
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_24
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 436
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 444
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_26
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v1, v7

    .line 453
    .local v1, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v6

    .line 454
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":I
    :cond_17
    move v1, v8

    .line 452
    goto :goto_8

    .line 460
    :sswitch_27
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v1, v7

    .line 463
    .restart local v1    # "_arg0":Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setNcmTethering(Z)I

    move-result v6

    .line 464
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":I
    :cond_18
    move v1, v8

    .line 462
    goto :goto_9

    .line 470
    :sswitch_28
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 479
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 483
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 490
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_2a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    .line 492
    .local v6, "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v6, :cond_19

    .line 494
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    invoke-virtual {v6, p3, v7}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 498
    :cond_19
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 504
    .end local v6    # "_result":Landroid/net/ProxyProperties;
    :sswitch_2b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 507
    sget-object v0, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyProperties;

    .line 512
    .local v1, "_arg0":Landroid/net/ProxyProperties;
    :goto_a
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 510
    .end local v1    # "_arg0":Landroid/net/ProxyProperties;
    :cond_1a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/ProxyProperties;
    goto :goto_a

    .line 518
    .end local v1    # "_arg0":Landroid/net/ProxyProperties;
    :sswitch_2c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    .line 520
    .restart local v6    # "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    if-eqz v6, :cond_1b

    .line 522
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-virtual {v6, p3, v7}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 526
    :cond_1b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 532
    .end local v6    # "_result":Landroid/net/ProxyProperties;
    :sswitch_2d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v2, v7

    .line 537
    .local v2, "_arg1":Z
    :goto_b
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_1c
    move v2, v8

    .line 536
    goto :goto_b

    .line 543
    .end local v1    # "_arg0":I
    :sswitch_2e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 546
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 551
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    .line 552
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    if-eqz v6, :cond_1d

    move v8, v7

    :cond_1d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 549
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_result":Z
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_c

    .line 558
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 563
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 568
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_d
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->prepareVpnForMvp(Ljava/lang/String;Landroid/os/Messenger;)Z

    move-result v6

    .line 569
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v6, :cond_1f

    move v8, v7

    :cond_1f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 566
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v6    # "_result":Z
    :cond_20
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_d

    .line 575
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :sswitch_30
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 581
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v6, :cond_21

    move v8, v7

    :cond_21
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 587
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_31
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 590
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 595
    .local v1, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 596
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v6, :cond_23

    .line 598
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    invoke-virtual {v6, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 593
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_e

    .line 602
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_23
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 608
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_32
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v6

    .line 610
    .local v6, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v6, :cond_24

    .line 612
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    invoke-virtual {v6, p3, v7}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 616
    :cond_24
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 622
    .end local v6    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_33
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 625
    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 630
    .local v1, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_f
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 628
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_f

    .line 636
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_34
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    .line 638
    .local v6, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v6, :cond_26

    .line 640
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    invoke-virtual {v6, p3, v7}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 644
    :cond_26
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 650
    .end local v6    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_35
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v6

    .line 652
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v6, :cond_27

    move v8, v7

    :cond_27
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 658
    .end local v6    # "_result":Z
    :sswitch_36
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 661
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 666
    .local v1, "_arg0":Landroid/net/NetworkInfo;
    :goto_10
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 664
    .end local v1    # "_arg0":Landroid/net/NetworkInfo;
    :cond_28
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_10

    .line 672
    .end local v1    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_37
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 675
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 681
    .restart local v1    # "_arg0":Landroid/net/NetworkInfo;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    move v2, v7

    .line 682
    .local v2, "_arg1":Z
    :goto_12
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 678
    .end local v1    # "_arg0":Landroid/net/NetworkInfo;
    .end local v2    # "_arg1":Z
    :cond_29
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_11

    :cond_2a
    move v2, v8

    .line 681
    goto :goto_12

    .line 688
    .end local v1    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_38
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 693
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 698
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_13
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 696
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_13

    .line 704
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :sswitch_39
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v6

    .line 708
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 714
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_3a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 717
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v6

    .line 718
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 724
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v6

    .line 726
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v6

    .line 734
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 740
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 743
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;

    move-result-object v6

    .line 744
    .local v6, "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v6, :cond_2c

    .line 746
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 750
    :cond_2c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 756
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_3e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v6

    .line 758
    .restart local v6    # "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    if-eqz v6, :cond_2d

    .line 760
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    invoke-virtual {v6, p3, v7}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 764
    :cond_2d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 770
    .end local v6    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_3f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;

    move-result-object v6

    .line 772
    .local v6, "_result":[Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 778
    .end local v6    # "_result":[Landroid/net/LinkQualityInfo;
    :sswitch_40
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    move v1, v7

    .line 782
    .local v1, "_arg0":Z
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 784
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 786
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :cond_2e
    move v1, v8

    .line 780
    goto :goto_14

    .line 793
    :sswitch_41
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v1, v7

    .line 796
    .restart local v1    # "_arg0":Z
    :goto_15
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_2f
    move v1, v8

    .line 795
    goto :goto_15

    .line 802
    :sswitch_42
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v6

    .line 804
    .local v6, "_result":Landroid/net/DhcpServerConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    if-eqz v6, :cond_30

    .line 806
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    invoke-virtual {v6, p3, v7}, Landroid/net/DhcpServerConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 810
    :cond_30
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 816
    .end local v6    # "_result":Landroid/net/DhcpServerConfiguration;
    :sswitch_43
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 819
    sget-object v0, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DhcpServerConfiguration;

    .line 824
    .local v1, "_arg0":Landroid/net/DhcpServerConfiguration;
    :goto_16
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-result v6

    .line 825
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    if-eqz v6, :cond_31

    move v8, v7

    :cond_31
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 822
    .end local v1    # "_arg0":Landroid/net/DhcpServerConfiguration;
    .end local v6    # "_result":Z
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/DhcpServerConfiguration;
    goto :goto_16

    .line 831
    .end local v1    # "_arg0":Landroid/net/DhcpServerConfiguration;
    :sswitch_44
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 839
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 840
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->SetCwDefaultService(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 846
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_45
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 849
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->ResetCwDefaultService(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 855
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 859
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 860
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 861
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    if-eqz v6, :cond_33

    move v8, v7

    :cond_33
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 867
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_47
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 870
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 871
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 881
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    move v2, v7

    .line 882
    .local v2, "_arg1":Z
    :goto_17
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->disconnect(Ljava/lang/String;Z)Z

    move-result v6

    .line 883
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    if-eqz v6, :cond_34

    move v8, v7

    :cond_34
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_35
    move v2, v8

    .line 881
    goto :goto_17

    .line 889
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_49
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 893
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    move v4, v7

    .line 899
    .local v4, "_arg3":Z
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    move v5, v7

    .local v5, "_arg4":Z
    :goto_19
    move-object v0, p0

    .line 900
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v6

    .line 901
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    if-eqz v6, :cond_36

    move v8, v7

    :cond_36
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :cond_37
    move v4, v8

    .line 897
    goto :goto_18

    .restart local v4    # "_arg3":Z
    :cond_38
    move v5, v8

    .line 899
    goto :goto_19

    .line 907
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    :sswitch_4a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 910
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 916
    .local v1, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 917
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 918
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v6, :cond_3a

    .line 920
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    invoke-virtual {v6, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 913
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_1a

    .line 924
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_3a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 930
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_4b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 933
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 939
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 940
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->protectEnterpriseVpn(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v6

    .line 941
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    if-eqz v6, :cond_3b

    move v8, v7

    :cond_3b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 936
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :cond_3c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1b

    .line 947
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_4c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->disconnectSystemVpn(I)V

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 956
    .end local v1    # "_arg0":I
    :sswitch_4d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 961
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->establishEnterpriseVpnIS(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 967
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_4e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 971
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    move v3, v7

    .line 974
    .local v3, "_arg2":Z
    :goto_1c
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->updateEnterpriseVpn(Ljava/lang/String;IZ)V

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    :cond_3d
    move v3, v8

    .line 973
    goto :goto_1c

    .line 980
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_4f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 983
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->switchDataNetwork(I)V

    .line 984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 989
    .end local v1    # "_arg0":I
    :sswitch_50
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->switchToSim1DataNetwork()V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 996
    :sswitch_51
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->switchToSim2DataNetwork()V

    .line 998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1003
    :sswitch_52
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1007
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    move v2, v7

    .line 1008
    .local v2, "_arg1":Z
    :goto_1d
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->onSwitchDataNetworkCallback(IZ)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_3e
    move v2, v8

    .line 1007
    goto :goto_1d

    .line 1014
    .end local v1    # "_arg0":I
    :sswitch_53
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    move v1, v7

    .line 1017
    .local v1, "_arg0":Z
    :goto_1e
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->onSwitchToSim1DataNetworkCallback(Z)V

    .line 1018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_3f
    move v1, v8

    .line 1016
    goto :goto_1e

    .line 1023
    :sswitch_54
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    move v1, v7

    .line 1026
    .restart local v1    # "_arg0":Z
    :goto_1f
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->onSwitchToSim2DataNetworkCallback(Z)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_40
    move v1, v8

    .line 1025
    goto :goto_1f

    .line 1032
    :sswitch_55
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1035
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->switchDataNetworkForMMS(I)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1041
    .end local v1    # "_arg0":I
    :sswitch_56
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 1046
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 1052
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1053
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->supplyMessengerEx(ILandroid/os/Messenger;I)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1049
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":I
    :cond_41
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_20

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
