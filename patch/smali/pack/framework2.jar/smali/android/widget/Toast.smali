.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_LONG_DOUBLE:I = 0x2

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/widget/Toast$TN;

    invoke-direct {v0}, Landroid/widget/Toast$TN;-><init>()V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 115
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mY:I

    .line 117
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 119
invoke-virtual/range {p0 .. p1}, Landroid/widget/Toast;->tos_Toast_init(Landroid/content/Context;)V
    return-void
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 367
    :goto_0
    return-object v0

    .line 366
    :cond_0
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 367
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static tos_org_makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    const/4 v8, 0x0

    .line 273
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 275
    .local v2, "result":Landroid/widget/Toast;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 281
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 282
    .local v4, "v":Landroid/view/View;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 283
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x101046c

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    iget v5, v1, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    .line 287
    const v5, 0x1090126

    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 294
    :cond_0
    :goto_0
    new-instance v5, Landroid/widget/Toast$1;

    invoke-direct {v5, v2}, Landroid/widget/Toast$1;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 301
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iput-object v4, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 304
    iput p2, v2, Landroid/widget/Toast;->mDuration:I

    .line 306
    return-object v2

    .line 291
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_1
    const v5, 0x10900de

    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->hide()V

    .line 160
    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 188
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 189
    return-void
.end method

.method public setGravity(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 234
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 235
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 236
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 237
    return-void
.end method

.method public setMargin(FF)V
    .locals 1
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 211
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 212
    return-void
.end method

.method public setShowForAllUsers()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->setShowForAllUsers()V

    .line 353
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 330
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 338
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 339
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_0
    iget-object v1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 343
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 172
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    .line 125
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 126
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "setView must have been called"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_0
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 130
    .local v1, "service":Landroid/app/INotificationManager;
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 132
    .local v2, "tn":Landroid/widget/Toast$TN;
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v4, v2, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 135
    :try_start_0
    iget v4, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface {v1, v0, v2, v4}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "service.gate.enabled"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    .local v3, "tv":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 144
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>Toast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 136
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x1

    .line 250
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 251
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 253
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 254
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 255
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 256
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 257
    const-string v1, "android.widget.Toast#makeText"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 259
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    .line 263
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->tos_org_makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    goto :goto_0
.end method

.method tos_Toast_init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->NEW_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::yongchen::20150915"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 112
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 113
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 114
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 115
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 116
    const-string v1, "android.widget.Toast#Toast"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 117
    return-void
.end method