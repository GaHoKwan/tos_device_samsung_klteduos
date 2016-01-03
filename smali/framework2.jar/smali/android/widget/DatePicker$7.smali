.class Landroid/widget/DatePicker$7;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1281
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 1282
    iget-object v0, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)Landroid/widget/CalendarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getCalendarViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateCalendarView()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)V

    .line 1287
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateInputState()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$900(Landroid/widget/DatePicker;)V

    .line 1289
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
