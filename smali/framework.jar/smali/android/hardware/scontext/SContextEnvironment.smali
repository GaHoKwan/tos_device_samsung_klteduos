.class public Landroid/hardware/scontext/SContextEnvironment;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextEnvironment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 40
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method private getTemperatureHumidityData(I)[D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Temperature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 76
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Humidity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 109
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getData(I)[D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->getTemperatureHumidityData(I)[D

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSensorType()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 89
    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method
