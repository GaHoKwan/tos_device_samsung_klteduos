.class public abstract Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;
.super Landroid/os/Binder;
.source "IFingerprintManager.java"

# interfaces
.implements Lcom/samsung/android/fingerprint/IFingerprintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/IFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.fingerprint.IFingerprintManager"

.field static final TRANSACTION_addPermission:I = 0x9

.field static final TRANSACTION_attachClient:I = 0x21

.field static final TRANSACTION_cancel:I = 0x18

.field static final TRANSACTION_closeTransaction:I = 0x24

.field static final TRANSACTION_detachClient:I = 0x22

.field static final TRANSACTION_enroll:I = 0x19

.field static final TRANSACTION_enrollForMultiUser:I = 0x1e

.field static final TRANSACTION_finishIdentify:I = 0x25

.field static final TRANSACTION_getEnrolledFingers:I = 0x2

.field static final TRANSACTION_getEnrolledPermissions:I = 0x3

.field static final TRANSACTION_getEnrolledUserCount:I = 0x14

.field static final TRANSACTION_getEnrolledUsers:I = 0x13

.field static final TRANSACTION_getIndexName:I = 0x2a

.field static final TRANSACTION_getLastImageQuality:I = 0x2d

.field static final TRANSACTION_getLastImageQualityMessage:I = 0x2c

.field static final TRANSACTION_getSensorServiceVersion:I = 0x12

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_hasPendingCommand:I = 0xa

.field static final TRANSACTION_identify:I = 0x1c

.field static final TRANSACTION_identifyForMultiUser:I = 0x1f

.field static final TRANSACTION_identifyWithDialog:I = 0x15

.field static final TRANSACTION_isEnrolledPermission:I = 0x4

.field static final TRANSACTION_isSensorReady:I = 0x26

.field static final TRANSACTION_notifyAlternativePasswordBegin:I = 0xf

.field static final TRANSACTION_notifyApplicationState:I = 0x16

.field static final TRANSACTION_notifyAuthSessionBegin:I = 0xd

.field static final TRANSACTION_notifyAuthSessionEnd:I = 0xe

.field static final TRANSACTION_notifyEnrollBegin:I = 0xb

.field static final TRANSACTION_notifyEnrollEnd:I = 0xc

.field static final TRANSACTION_openTransaction:I = 0x23

.field static final TRANSACTION_processFIDO:I = 0x29

.field static final TRANSACTION_protect:I = 0x27

.field static final TRANSACTION_reEnroll:I = 0x1a

.field static final TRANSACTION_registerClient:I = 0x17

.field static final TRANSACTION_removeAllEnrolledFingers:I = 0x8

.field static final TRANSACTION_removeEnrolledFinger:I = 0x7

.field static final TRANSACTION_removeEnrolledPermission:I = 0x6

.field static final TRANSACTION_removeEnrolledPermissions:I = 0x5

.field static final TRANSACTION_secondaryEnroll:I = 0x1b

.field static final TRANSACTION_setIndexName:I = 0x2b

.field static final TRANSACTION_setPassword:I = 0x11

.field static final TRANSACTION_showIdentifyDialog:I = 0x20

.field static final TRANSACTION_unprotect:I = 0x28

.field static final TRANSACTION_unregisterClient:I = 0x1d

.field static final TRANSACTION_verifyPassword:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/fingerprint/IFingerprintManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 562
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getVersion()I

    move-result v4

    .line 50
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledFingers(Ljava/lang/String;)I

    move-result v4

    .line 60
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 82
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 94
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 108
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeEnrolledFinger(ILjava/lang/String;)Z

    move-result v4

    .line 120
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v4, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeAllEnrolledFingers(Ljava/lang/String;)Z

    move-result v4

    .line 130
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->addPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 144
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->hasPendingCommand()Z

    move-result v4

    .line 152
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyEnrollBegin()Z

    move-result v4

    .line 160
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyEnrollEnd()Z

    move-result v4

    .line 168
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyAuthSessionBegin()Z

    move-result v4

    .line 176
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyAuthSessionEnd()Z

    move-result v4

    .line 184
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyAlternativePasswordBegin()V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 197
    :sswitch_10
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    move v2, v7

    .line 205
    .local v2, "_arg2":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 207
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v4, :cond_b

    move v6, v7

    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :cond_c
    move v2, v6

    .line 203
    goto :goto_1

    .line 213
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_11
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 219
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v4, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getSensorServiceVersion()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledUsers()Ljava/util/List;

    move-result-object v5

    .line 235
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 241
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledUserCount()I

    move-result v4

    .line 243
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v4    # "_result":I
    :sswitch_15
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 255
    .local v1, "_arg1":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 256
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 261
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identifyWithDialog(Ljava/lang/String;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v4

    .line 262
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .line 268
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_16
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 273
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 278
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyApplicationState(ILandroid/os/Bundle;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 276
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_17
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v0

    .line 288
    .local v0, "_arg0":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 289
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 294
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v4

    .line 295
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 292
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/IBinder;
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 301
    .end local v0    # "_arg0":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_18
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->cancel(Landroid/os/IBinder;)I

    move-result v4

    .line 305
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_19
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 315
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 318
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v4

    .line 319
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 325
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_1a
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 329
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->reEnroll(Landroid/os/IBinder;I)I

    move-result v4

    .line 331
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 341
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 342
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->secondaryEnroll(Landroid/os/IBinder;I)I

    move-result v4

    .line 343
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_1c
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 353
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v4

    .line 355
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 361
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1d
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 364
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v4

    .line 365
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v4, :cond_11

    move v6, v7

    :cond_11
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 380
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I

    move-result v4

    .line 381
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 387
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :sswitch_1f
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 391
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v4

    .line 395
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_20
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 405
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12

    move v2, v7

    .line 408
    .local v2, "_arg2":Z
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->showIdentifyDialog(Landroid/os/IBinder;Ljava/lang/String;Z)I

    move-result v4

    .line 409
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v4    # "_result":I
    :cond_12
    move v2, v6

    .line 407
    goto :goto_5

    .line 415
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_21
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 419
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 420
    .local v1, "_arg1":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;

    move-result-object v4

    .line 421
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 427
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v4    # "_result":Landroid/os/IBinder;
    :sswitch_22
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 430
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->detachClient(Landroid/os/IBinder;)Z

    move-result v4

    .line 431
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v4, :cond_13

    move v6, v7

    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 437
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_23
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 440
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->openTransaction(Landroid/os/IBinder;)Z

    move-result v4

    .line 441
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v4, :cond_14

    move v6, v7

    :cond_14
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 447
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_24
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 450
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->closeTransaction(Landroid/os/IBinder;)Z

    move-result v4

    .line 451
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v4, :cond_15

    move v6, v7

    :cond_15
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_25
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 461
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    .line 463
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v4, :cond_16

    move v6, v7

    :cond_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 469
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_26
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isSensorReady()Z

    move-result v4

    .line 471
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v4, :cond_17

    move v6, v7

    :cond_17
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 477
    .end local v4    # "_result":Z
    :sswitch_27
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 481
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 484
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B

    move-result-object v4

    .line 485
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 491
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":[B
    :sswitch_28
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 498
    .restart local v2    # "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B

    move-result-object v4

    .line 499
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 505
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":[B
    :sswitch_29
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 509
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 514
    .local v3, "_arg3":[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    .line 515
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 521
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :sswitch_2a
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getIndexName(I)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2b
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 535
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->setIndexName(ILjava/lang/String;)Z

    move-result v4

    .line 537
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    if-eqz v4, :cond_18

    move v6, v7

    :cond_18
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 543
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2c
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getLastImageQuality(Ljava/lang/String;)I

    move-result v4

    .line 557
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
