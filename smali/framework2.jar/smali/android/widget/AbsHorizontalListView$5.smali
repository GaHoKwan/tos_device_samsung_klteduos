.class Landroid/widget/AbsHorizontalListView$5;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 8497
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 8499
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$5800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$5900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8515
    :cond_0
    :goto_0
    return-void

    .line 8503
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 8504
    .local v0, "motion":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8506
    :pswitch_0
    const-string v1, "[Motion-DoubleTap]"

    # invokes: Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$6000(Ljava/lang/String;)V

    .line 8507
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    .line 8508
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 8510
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 8504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
