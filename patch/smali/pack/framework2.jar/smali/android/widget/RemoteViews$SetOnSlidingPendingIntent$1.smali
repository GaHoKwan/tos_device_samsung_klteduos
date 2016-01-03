.class Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .prologue
    .line 3402
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3404
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 3405
    .local v3, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 3406
    .local v4, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3450
    :cond_0
    :goto_0
    return v7

    .line 3408
    :pswitch_0
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v5, v7}, Landroid/widget/RemoteViews;->access$1102(Landroid/widget/RemoteViews;I)I

    .line 3409
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v5, v3}, Landroid/widget/RemoteViews;->access$1202(Landroid/widget/RemoteViews;F)F

    .line 3410
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v5, v4}, Landroid/widget/RemoteViews;->access$1302(Landroid/widget/RemoteViews;F)F

    .line 3411
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_1

    .line 3412
    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3413
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3414
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3415
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1, v6, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_0

    .line 3420
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_1
    :pswitch_1
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v5}, Landroid/widget/RemoteViews;->access$1100(Landroid/widget/RemoteViews;)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 3421
    const/4 v2, 0x0

    .line 3422
    .local v2, "sliding":Z
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v5}, Landroid/widget/RemoteViews;->access$1200(Landroid/widget/RemoteViews;)F

    move-result v5

    sub-float/2addr v5, v3

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 3423
    const/4 v2, 0x1

    .line 3425
    :cond_2
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v5}, Landroid/widget/RemoteViews;->access$1300(Landroid/widget/RemoteViews;)F

    move-result v5

    sub-float/2addr v5, v4

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 3426
    const/4 v2, 0x1

    .line 3428
    :cond_3
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    if-lez v5, :cond_4

    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v5}, Landroid/widget/RemoteViews;->access$1200(Landroid/widget/RemoteViews;)F

    move-result v5

    sub-float v5, v3, v5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    .line 3429
    const/4 v2, 0x1

    .line 3431
    :cond_4
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    if-lez v5, :cond_5

    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v5}, Landroid/widget/RemoteViews;->access$1300(Landroid/widget/RemoteViews;)F

    move-result v5

    sub-float v5, v4, v5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    .line 3432
    const/4 v2, 0x1

    .line 3434
    :cond_5
    if-eqz v2, :cond_0

    .line 3435
    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3436
    .restart local v1    # "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3437
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3438
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->slidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1, v6, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 3439
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v5, v8}, Landroid/widget/RemoteViews;->access$1102(Landroid/widget/RemoteViews;I)I

    goto/16 :goto_0

    .line 3446
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "sliding":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v5, v8}, Landroid/widget/RemoteViews;->access$1102(Landroid/widget/RemoteViews;I)I

    goto/16 :goto_0

    .line 3406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
