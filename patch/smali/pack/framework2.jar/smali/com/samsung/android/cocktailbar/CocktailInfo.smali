.class public Lcom/samsung/android/cocktailbar/CocktailInfo;
.super Ljava/lang/Object;
.source "CocktailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategory:I

.field private mContentView:Landroid/widget/RemoteViews;

.field private mDisplayPolicy:I

.field private mFooterView:Landroid/widget/RemoteViews;

.field private mIcon:I

.field private mOrientation:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    .line 34
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    .line 36
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    .line 38
    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    .line 42
    iput-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 44
    iput-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mFooterView:Landroid/widget/RemoteViews;

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mIcon:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mFooterView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$602(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "dumpResult":Ljava/lang/String;
    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    return v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getDisplayPolicy()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    return v0
.end method

.method public getFooterView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mFooterView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mIcon:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 158
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 159
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mFooterView:Landroid/widget/RemoteViews;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mIcon:I

    .line 165
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mFooterView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 150
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
