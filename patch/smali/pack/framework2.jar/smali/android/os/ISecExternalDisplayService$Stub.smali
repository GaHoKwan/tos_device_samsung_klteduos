.class public abstract Landroid/os/ISecExternalDisplayService$Stub;
.super Landroid/os/Binder;
.source "ISecExternalDisplayService.java"

# interfaces
.implements Landroid/os/ISecExternalDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISecExternalDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ISecExternalDisplayService"

.field static final TRANSACTION_SecExternalDisplayCreateSurface:I = 0x9

.field static final TRANSACTION_SecExternalDisplayDestroySurface:I = 0xc

.field static final TRANSACTION_SecExternalDisplayGet3DMode:I = 0x7

.field static final TRANSACTION_SecExternalDisplayGetStatus:I = 0x1

.field static final TRANSACTION_SecExternalDisplayRegisterEVF:I = 0x5

.field static final TRANSACTION_SecExternalDisplaySet3DMode:I = 0x8

.field static final TRANSACTION_SecExternalDisplaySetExternalUITransform:I = 0xb

.field static final TRANSACTION_SecExternalDisplaySetOutputMode:I = 0x4

.field static final TRANSACTION_SecExternalDisplaySetPause:I = 0x6

.field static final TRANSACTION_SecExternalDisplaySetResolution:I = 0x3

.field static final TRANSACTION_SecExternalDisplaySetStatus:I = 0x2

.field static final TRANSACTION_SecExternalDisplayType:I = 0xa

.field static final TRANSACTION_acquireCpuMinLock:I = 0xe

.field static final TRANSACTION_acquireGpuMinLock:I = 0x10

.field static final TRANSACTION_releaseCpuMinLock:I = 0xf

.field static final TRANSACTION_releaseGpuMinLock:I = 0x11

.field static final TRANSACTION_setFpsLevel:I = 0x12

.field static final TRANSACTION_setHMTParams:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ISecExternalDisplayService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;
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
    const-string v1, "android.os.ISecExternalDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISecExternalDisplayService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ISecExternalDisplayService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/ISecExternalDisplayService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ISecExternalDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGetStatus(I)Z

    move-result v4

    .line 52
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v1, v6

    .line 63
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetStatus(IZ)Z

    move-result v4

    .line 64
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_2
    move v1, v5

    .line 62
    goto :goto_1

    .line 70
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetResolution(I)Z

    move-result v4

    .line 74
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetOutputMode(I)Z

    move-result v4

    .line 84
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v6

    .line 93
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayRegisterEVF(Z)I

    move-result v4

    .line 94
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_5
    move v0, v5

    .line 92
    goto :goto_2

    .line 100
    :sswitch_6
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v6

    .line 103
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetPause(Z)Z

    move-result v4

    .line 104
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_7
    move v0, v5

    .line 102
    goto :goto_3

    .line 110
    :sswitch_7
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayGet3DMode()I

    move-result v4

    .line 112
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v4    # "_result":I
    :sswitch_8
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySet3DMode(I)I

    move-result v4

    .line 122
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_9
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v4

    .line 136
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v0, v6

    .line 145
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayType(Z)Z

    move-result v4

    .line 146
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_a
    move v0, v5

    .line 144
    goto :goto_4

    .line 152
    :sswitch_b
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v4

    .line 156
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v4, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/ISecExternalDisplayService$Stub;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v4

    .line 170
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v7, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 180
    .local v0, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 182
    .local v1, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 184
    .local v2, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 185
    .local v3, "_arg3":[F
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/ISecExternalDisplayService$Stub;->setHMTParams(FFF[F)Z

    move-result v4

    .line 186
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v4, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":[F
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->acquireCpuMinLock(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->releaseCpuMinLock()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 208
    :sswitch_10
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->acquireGpuMinLock(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/os/ISecExternalDisplayService$Stub;->releaseGpuMinLock()V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    :sswitch_12
    const-string v5, "android.os.ISecExternalDisplayService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ISecExternalDisplayService$Stub;->setFpsLevel(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
