.class Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/HorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/HorizontalListView$1;

    .prologue
    .line 2808
    invoke-direct {p0}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 2825
    iget v0, p0, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 2821
    iget v0, p0, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .prologue
    .line 2816
    iput p1, p0, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2817
    iput p2, p0, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2818
    return-void
.end method
