.class public abstract Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;
.super Landroid/os/Binder;
.source "ICocktailHost.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailHost$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailHost"

.field static final TRANSACTION_closeContextualCocktail:I = 0x3

.field static final TRANSACTION_removeCocktail:I = 0x2

.field static final TRANSACTION_updateCocktail:I = 0x1

.field static final TRANSACTION_updateToolLauncher:I = 0x5

.field static final TRANSACTION_viewDataChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;
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
    const-string v1, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailHost;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailHost;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    sget-object v4, Lcom/samsung/android/cocktailbar/Cocktail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 59
    .local v1, "_arg1":Lcom/samsung/android/cocktailbar/Cocktail;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v1    # "_arg1":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v2    # "_arg2":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/cocktailbar/Cocktail;
    goto :goto_1

    .line 66
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/android/cocktailbar/Cocktail;
    :sswitch_2
    const-string v4, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->removeCocktail(II)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v4, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->closeContextualCocktail(II)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v4, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->viewDataChanged(III)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_5
    const-string v4, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->updateToolLauncher(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
