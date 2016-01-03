.class public abstract Lcom/samsung/android/cover/ICoverManager$Stub;
.super Landroid/os/Binder;
.source "ICoverManager.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ICoverManager"

.field static final TRANSACTION_disableCoverManager:I = 0x8

.field static final TRANSACTION_getCoverState:I = 0x6

.field static final TRANSACTION_getVersion:I = 0x9

.field static final TRANSACTION_isCoverManagerDisabled:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerListenerCallback:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x3

.field static final TRANSACTION_updateCoverSwitchState:I = 0x4

.field static final TRANSACTION_updateCoverVerfiedState:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.android.cover.ICoverManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/cover/ICoverManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 57
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .line 63
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2
    const-string v4, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 74
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    .line 81
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string v6, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v3

    .line 85
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v6, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    .line 95
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v5

    .line 96
    .local v1, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->updateCoverSwitchState(ZZ)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_3
    move v0, v4

    .line 93
    goto :goto_3

    .restart local v0    # "_arg0":Z
    :cond_4
    move v1, v4

    .line 95
    goto :goto_4

    .line 102
    .end local v0    # "_arg0":Z
    :sswitch_5
    const-string v6, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v5

    .line 106
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v1, v5

    .line 107
    .restart local v1    # "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cover/ICoverManager$Stub;->updateCoverVerfiedState(ZZ)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_5
    move v0, v4

    .line 104
    goto :goto_5

    .restart local v0    # "_arg0":Z
    :cond_6
    move v1, v4

    .line 106
    goto :goto_6

    .line 113
    .end local v0    # "_arg0":Z
    :sswitch_6
    const-string v6, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .line 115
    .local v3, "_result":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v3, :cond_7

    .line 117
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/cover/CoverState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 121
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v3    # "_result":Lcom/samsung/android/cover/CoverState;
    :sswitch_7
    const-string v6, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->isCoverManagerDisabled()Z

    move-result v3

    .line 129
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v6, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    move v0, v5

    .line 139
    .restart local v0    # "_arg0":Z
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 141
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    :cond_9
    move v0, v4

    .line 137
    goto :goto_7

    .line 148
    :sswitch_9
    const-string v4, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getVersion()I

    move-result v3

    .line 150
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
