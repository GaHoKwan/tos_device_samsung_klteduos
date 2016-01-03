.class Landroid/webkitsec/WebViewClassic$DateTimePicker;
.super Landroid/app/Dialog;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateTimePicker"
.end annotation


# instance fields
.field private isClear:Z

.field private isTimePickerShown:Z

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I

.field private mdatetime:I

.field private mhour:I

.field private mminute:I

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 7896
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    .line 7897
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 7893
    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z

    .line 7894
    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    .line 8052
    new-instance v0, Landroid/webkitsec/WebViewClassic$DateTimePicker$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$1;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 8070
    new-instance v0, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$2;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 7898
    return-void
.end method

.method static synthetic access$4002(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 7885
    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    return p1
.end method

.method static synthetic access$4102(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 7885
    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$4202(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 7885
    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    return p1
.end method

.method static synthetic access$4300(Landroid/webkitsec/WebViewClassic$DateTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    .prologue
    .line 7885
    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z

    return v0
.end method

.method static synthetic access$4302(Landroid/webkitsec/WebViewClassic$DateTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 7885
    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isClear:Z

    return p1
.end method

.method static synthetic access$4400(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    .prologue
    .line 7885
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->updateDate()V

    return-void
.end method

.method static synthetic access$4502(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 7885
    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    return p1
.end method

.method static synthetic access$4602(Landroid/webkitsec/WebViewClassic$DateTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 7885
    iput p1, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    return p1
.end method

.method static synthetic access$4700(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    .prologue
    .line 7885
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->updateTime()V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$DateTimePicker;

    .prologue
    .line 7885
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->clear()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 8039
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    .line 8040
    return-void
.end method

.method private onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, -0x2

    .line 8085
    packed-switch p1, :pswitch_data_0

    .line 8117
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 8087
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    iget v5, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 8088
    .local v0, "dpdialog":Landroid/app/DatePickerDialog;
    const-string v2, "Clear"

    new-instance v3, Landroid/webkitsec/WebViewClassic$DateTimePicker$3;

    invoke-direct {v3, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$3;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    invoke-virtual {v0, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 8103
    .end local v0    # "dpdialog":Landroid/app/DatePickerDialog;
    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    iget v5, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 8104
    .local v1, "tpdialog":Landroid/app/TimePickerDialog;
    const-string v2, "Clear"

    new-instance v3, Landroid/webkitsec/WebViewClassic$DateTimePicker$4;

    invoke-direct {v3, p0}, Landroid/webkitsec/WebViewClassic$DateTimePicker$4;-><init>(Landroid/webkitsec/WebViewClassic$DateTimePicker;)V

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v0, v1

    .line 8115
    goto :goto_0

    .line 8085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 8043
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 8044
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 8046
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateDate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7963
    .local v1, "date":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 7964
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7969
    :goto_0
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 7970
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7976
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7980
    .local v2, "dt":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    .line 7982
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mdatetime:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    if-nez v3, :cond_0

    .line 7984
    iput-boolean v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    .line 7985
    invoke-direct {p0, v6}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 7986
    .local v0, "d":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 7987
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7989
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_0
    return-void

    .line 7967
    .end local v2    # "dt":Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 7973
    :cond_2
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7994
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mdatetime:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 7996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7998
    .local v0, "datetime":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 7999
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8004
    :goto_0
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 8005
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8010
    :goto_1
    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8020
    .local v1, "dt":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    .line 8034
    .end local v0    # "datetime":Ljava/lang/StringBuilder;
    .end local v1    # "dt":Ljava/lang/String;
    :goto_2
    return-void

    .line 8002
    .restart local v0    # "datetime":Ljava/lang/StringBuilder;
    :cond_0
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    .line 8008
    :cond_1
    iget v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    .line 8024
    .end local v0    # "datetime":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    invoke-direct {p0, v4}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8032
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->replaceText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 7903
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 7904
    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7908
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 7909
    const-string v6, "-"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7910
    .local v2, "dateformat":[Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    .line 7911
    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    .line 7912
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    .line 7943
    .end local v2    # "dateformat":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-ne p1, v10, :cond_6

    .line 7945
    iput v10, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mdatetime:I

    .line 7946
    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->isTimePickerShown:Z

    .line 7947
    invoke-direct {p0, v8}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 7948
    .local v1, "d":Landroid/app/Dialog;
    if-eqz v1, :cond_1

    .line 7949
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 7957
    :cond_1
    :goto_1
    return-void

    .line 7914
    .end local v1    # "d":Landroid/app/Dialog;
    :cond_2
    if-eqz p2, :cond_3

    if-ne p1, v9, :cond_3

    .line 7915
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7916
    .local v5, "timeformat":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    .line 7917
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    goto :goto_0

    .line 7919
    .end local v5    # "timeformat":[Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_5

    if-ne p1, v10, :cond_5

    .line 7920
    const-string v6, "T"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7921
    .local v3, "datetimeformat":[Ljava/lang/String;
    aget-object v6, v3, v8

    if-eqz v6, :cond_4

    .line 7922
    aget-object v6, v3, v8

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7923
    .restart local v2    # "dateformat":[Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    .line 7924
    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    .line 7925
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    .line 7927
    .end local v2    # "dateformat":[Ljava/lang/String;
    :cond_4
    aget-object v6, v3, v9

    if-eqz v6, :cond_0

    .line 7928
    aget-object v6, v3, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7929
    .restart local v5    # "timeformat":[Ljava/lang/String;
    aget-object v6, v5, v9

    const-string v7, "Z"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7930
    .local v4, "time":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    .line 7931
    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    goto :goto_0

    .line 7935
    .end local v3    # "datetimeformat":[Ljava/lang/String;
    .end local v4    # "time":[Ljava/lang/String;
    .end local v5    # "timeformat":[Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 7936
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mYear:I

    .line 7937
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mMonth:I

    .line 7938
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mDay:I

    .line 7939
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mhour:I

    .line 7940
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Landroid/webkitsec/WebViewClassic$DateTimePicker;->mminute:I

    goto/16 :goto_0

    .line 7953
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_6
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 7954
    .restart local v1    # "d":Landroid/app/Dialog;
    if-eqz v1, :cond_1

    .line 7955
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method
