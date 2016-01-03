.class Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnSlidingPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x12


# instance fields
.field bottomThresHold:I

.field downPendingIntent:Landroid/app/PendingIntent;

.field leftThresHold:I

.field rightThresHold:I

.field slidingPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field topThresHold:I

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "leftThresHold"    # I
    .param p4, "topThresHold"    # I
    .param p5, "rightThresHold"    # I
    .param p6, "bottomThresHold"    # I
    .param p7, "downPendingIntent"    # Landroid/app/PendingIntent;
    .param p8, "slidingPendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3366
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3367
    iput p2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    .line 3368
    iput p3, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    .line 3369
    iput p4, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    .line 3370
    iput p5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    .line 3371
    iput p6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    .line 3372
    iput-object p7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 3373
    iput-object p8, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->slidingPendingIntent:Landroid/app/PendingIntent;

    .line 3374
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 3376
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    .line 3378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    .line 3379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    .line 3380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    .line 3381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    .line 3382
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 3383
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->slidingPendingIntent:Landroid/app/PendingIntent;

    .line 3384
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 3399
    const/4 v1, 0x0

    .line 3400
    .local v1, "touchListener":Landroid/view/View$OnTouchListener;
    iget v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3401
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->slidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 3402
    new-instance v1, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;

    .end local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3453
    .restart local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3455
    :cond_0
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3458
    const-string v0, "SetOnSlidingPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 3387
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3388
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3389
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3390
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3391
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3392
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3393
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3394
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->slidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3395
    return-void
.end method
