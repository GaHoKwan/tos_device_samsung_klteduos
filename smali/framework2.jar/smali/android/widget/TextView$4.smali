.class Landroid/widget/TextView$4;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onTextContextMenuItem(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 9992
    iput-object p1, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9995
    iget-object v0, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView;->mSelectall:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$402(Landroid/widget/TextView;Z)Z

    .line 9996
    return-void
.end method
