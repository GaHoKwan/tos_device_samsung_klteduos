.class final Landroid/hardware/scontext/SContextActivityNotification$1;
.super Ljava/lang/Object;
.source "SContextActivityNotification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextActivityNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/scontext/SContextActivityNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextActivityNotification;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 107
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotification;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextActivityNotification;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextActivityNotification$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextActivityNotification;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextActivityNotification;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 112
    new-array v0, p1, [Landroid/hardware/scontext/SContextActivityNotification;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextActivityNotification$1;->newArray(I)[Landroid/hardware/scontext/SContextActivityNotification;

    move-result-object v0

    return-object v0
.end method