.class Landroid/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0x21

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 138
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    .line 139
    .local v5, "progress":I
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 140
    .local v1, "max":I
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 141
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "format":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 147
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 148
    .local v2, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    iget-object v7, v7, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x101046c

    invoke-virtual {v7, v8, v2, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 150
    int-to-double v7, v5

    int-to-double v9, v1

    div-double v3, v7, v9

    .line 151
    .local v3, "percent":D
    new-instance v6, Landroid/text/SpannableString;

    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    .local v6, "tmp":Landroid/text/SpannableString;
    iget v7, v2, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_1

    .line 153
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v6, v7, v11, v8, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    :goto_1
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "percent":D
    .end local v6    # "tmp":Landroid/text/SpannableString;
    :goto_2
    return-void

    .line 144
    :cond_0
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    .restart local v3    # "percent":D
    .restart local v6    # "tmp":Landroid/text/SpannableString;
    :cond_1
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v6, v7, v11, v8, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 161
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "percent":D
    .end local v6    # "tmp":Landroid/text/SpannableString;
    :cond_2
    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
