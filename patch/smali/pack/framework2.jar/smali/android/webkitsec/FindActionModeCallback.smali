.class public Landroid/webkitsec/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/webkitsec/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private hintTextview:Landroid/widget/TextView;

.field private isESSBrowser:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActiveMatchIndex:I

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mIsParentThemeDeviceDefault:Z

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkitsec/WebView;

.field private searchIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const v6, 0x10202b6

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v7, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    .line 511
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 512
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 85
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 86
    .local v0, "outValue":Landroid/util/TypedValue;
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046c

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 88
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 89
    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.android.browser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kanas3gzn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ageraltezm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :cond_1
    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    .line 96
    :cond_2
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_7

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090129

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 151
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 152
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    .line 153
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$NoAction;

    invoke-direct {v3}, Landroid/webkitsec/FindActionModeCallback$NoAction;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 154
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_4

    .line 158
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020417

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020416

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    .line 160
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080aa5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$3;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$3;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    :cond_4
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$4;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$4;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 190
    :cond_5
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/webkitsec/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 192
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020415

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    .line 194
    :cond_6
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    .line 196
    return-void

    .line 99
    :cond_7
    const-string v2, "com.android.email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109012a

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 102
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$1;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$1;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$2;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$2;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_9

    .line 144
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090128

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto/16 :goto_0

    .line 147
    :cond_9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090133

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/webkitsec/FindActionModeCallback;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/FindActionModeCallback;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/FindActionModeCallback;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/FindActionModeCallback;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private findNext(Z)V
    .locals 2
    .param p1, "next"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 269
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_2

    .line 270
    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    iget v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebView;->findNext(Z)V

    .line 279
    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method private updateMatchesString()V
    .locals 3

    .prologue
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "matchString":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 509
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 485
    return-void
.end method

.method public findAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 290
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 291
    .local v0, "find":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 292
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->clearMatches()V

    .line 293
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 295
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAll(Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 298
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iput v3, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    .line 301
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 201
    :cond_0
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    .prologue
    .line 514
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 515
    const/4 v1, 0x0

    .line 522
    :goto_0
    return v1

    .line 517
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 518
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 522
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getActionModeGlobalRight()I
    .locals 3

    .prologue
    .line 527
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 528
    const/4 v1, 0x0

    .line 535
    :goto_0
    return v1

    .line 530
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 531
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 532
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 534
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 535
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 458
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v2, :cond_0

    .line 459
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 463
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 464
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 474
    :goto_0
    return v0

    .line 466
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    :goto_1
    move v0, v1

    .line 474
    goto :goto_0

    .line 469
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    goto :goto_1

    .line 464
    :pswitch_data_0
    .packed-switch 0x102045d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    .line 381
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 387
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 432
    :goto_0
    return v5

    .line 395
    :cond_0
    iget-object v7, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 397
    iget-boolean v7, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v7, :cond_1

    .line 398
    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, "mtempCustomView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 400
    .local v3, "parentCustomView":Landroid/view/View;
    const v7, 0x108097d

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    .end local v1    # "mtempCustomView":Landroid/view/View;
    .end local v3    # "parentCustomView":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "packageName":Ljava/lang/String;
    const-string v7, "com.android.email"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 405
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x1140007

    invoke-virtual {v7, v8, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 417
    :goto_1
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 418
    iget-object v7, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 419
    .local v0, "edit":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 420
    iget-object v7, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iput-boolean v5, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 422
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v7, "0"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 425
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 426
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_4

    .line 427
    iget-object v5, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    move v5, v6

    .line 432
    goto :goto_0

    .line 408
    .end local v0    # "edit":Landroid/text/Editable;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-boolean v7, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v7, :cond_3

    .line 409
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x1140006

    invoke-virtual {v7, v8, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x114000a

    invoke-virtual {v7, v8, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 429
    .restart local v0    # "edit":Landroid/text/Editable;
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 437
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 438
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 439
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 442
    :goto_0
    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 443
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->notifyFindDialogDismissed()V

    .line 446
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    .line 447
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 449
    return-void

    .line 441
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 249
    if-eqz p3, :cond_0

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 257
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    .line 495
    iget-boolean v0, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 497
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 208
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 212
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 222
    .local v1, "span":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 226
    .local v0, "length":I
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 229
    const/16 v2, 0x12

    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 230
    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 231
    return-void

    .line 215
    .end local v0    # "length":I
    .end local v1    # "span":Landroid/text/Spannable;
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWebView(Landroid/webkitsec/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkitsec/WebView;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 241
    :cond_0
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    .line 243
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p0}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    .line 244
    return-void
.end method

.method public showSoftInput()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 323
    return-void
.end method

.method public updateMatchCount(IIZ)V
    .locals 2
    .param p1, "matchIndex"    # I
    .param p2, "matchCount"    # I
    .param p3, "isEmptyFind"    # Z

    .prologue
    .line 326
    if-nez p3, :cond_0

    .line 327
    iput p2, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    .line 328
    iput p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    .line 329
    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    goto :goto_0
.end method
