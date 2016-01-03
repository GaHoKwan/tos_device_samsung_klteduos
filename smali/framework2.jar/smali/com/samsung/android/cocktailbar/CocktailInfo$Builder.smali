.class public Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "CocktailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:I

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDisplayPolicy:I

.field private mFooterView:Landroid/widget/RemoteViews;

.field private mIcon:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 49
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 51
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 53
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mIcon:I

    .line 57
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mFooterView:Landroid/widget/RemoteViews;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    .line 97
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$002(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 98
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$102(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 99
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$202(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 100
    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mIcon:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mIcon:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$302(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 101
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$402(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mFooterView:Landroid/widget/RemoteViews;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mFooterView:Landroid/widget/RemoteViews;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$502(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 103
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$602(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    .line 105
    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    .line 77
    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 82
    return-object p0
.end method

.method public setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "displayPolicy"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    .line 72
    return-object p0
.end method

.method public setFooterView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mFooterView:Landroid/widget/RemoteViews;

    .line 92
    return-object p0
.end method

.method public setIcon(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mIcon:I

    .line 87
    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    .line 67
    return-object p0
.end method
