.class final Landroid/view/View$CheckForTap;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 19445
    iput-object p1, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 19445
    invoke-direct {p0, p1}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 19447
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 19448
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 19451
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    # getter for: Landroid/view/View;->USE_SET_INTEGRATOR_HAPTIC:Z
    invoke-static {v0}, Landroid/view/View;->access$2700(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19452
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performPress()Z

    .line 19456
    :cond_0
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    # invokes: Landroid/view/View;->checkForLongClick(I)V
    invoke-static {v0, v1}, Landroid/view/View;->access$2800(Landroid/view/View;I)V

    .line 19457
    return-void
.end method