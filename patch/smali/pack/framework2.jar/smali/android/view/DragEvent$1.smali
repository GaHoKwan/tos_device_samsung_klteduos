.class final Landroid/view/DragEvent$1;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DragEvent;
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
        "Landroid/view/DragEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 504
    invoke-static {}, Landroid/view/DragEvent;->obtain()Landroid/view/DragEvent;

    move-result-object v0

    .line 505
    .local v0, "event":Landroid/view/DragEvent;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mAction:I

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mX:F

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mY:F

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Landroid/view/DragEvent;->mDragResult:Z

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 512
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    sget-object v1, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipDescription;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 515
    :cond_1
    return-object v0

    .line 508
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/DragEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 519
    new-array v0, p1, [Landroid/view/DragEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->newArray(I)[Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method