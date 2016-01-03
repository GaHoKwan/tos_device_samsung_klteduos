.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TABLET_KK:Z

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mTitleNeedsUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "latte"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/DatePickerDialog;->TABLET_KK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 62
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 120
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 124
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x104071c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 130
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Landroid/app/DatePickerDialog$1;

    invoke-direct {v5, p0}, Landroid/app/DatePickerDialog$1;-><init>(Landroid/app/DatePickerDialog;)V

    invoke-virtual {p0, v3, v4, v5}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 142
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/DatePickerDialog;->setIcon(I)V

    .line 144
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 146
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090047

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 148
    const v3, 0x102030a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 149
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 150
    invoke-direct {p0, p4, p5, p6}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 158
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 101
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;
    .locals 1
    .param p0, "x0"    # Landroid/app/DatePickerDialog;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method private needToUpdateTitle()Z
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x1

    .line 280
    .local v0, "willUpdate":Z
    sget-boolean v1, Landroid/app/DatePickerDialog;->TABLET_KK:Z

    if-eqz v1, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :cond_0
    return v0
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 206
    :cond_0
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 208
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 211
    :cond_1
    return-void
.end method

.method private updateTitle(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/app/DatePickerDialog;->needToUpdateTitle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const v1, 0x104071b

    invoke-virtual {p0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 276
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 254
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 255
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 256
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x10016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x18016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/app/DatePickerDialog;->tryNotifyDateSet()V

    .line 163
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 172
    invoke-direct {p0, p2, p3, p4}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    .line 173
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 298
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 300
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "day":I
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 302
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v1, "month"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v1, "day"

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 220
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    iget-boolean v1, p0, Landroid/app/DatePickerDialog;->mCancelable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 309
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 312
    :cond_0
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->clearFocus()V

    .line 314
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 192
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 193
    return-void
.end method
