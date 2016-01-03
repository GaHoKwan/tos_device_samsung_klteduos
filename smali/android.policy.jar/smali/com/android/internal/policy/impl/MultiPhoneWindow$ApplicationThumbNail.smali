.class Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplicationThumbNail"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field private mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field private mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 2255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2247
    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 2248
    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 2249
    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 2250
    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    .line 2251
    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 2256
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    .line 2259
    new-instance v5, Lcom/samsung/android/theme/SThemeManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 2260
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2261
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2262
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 2264
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2265
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2266
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 2267
    invoke-virtual {v0, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 2268
    const v5, 0x108063b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 2269
    const v5, 0x108063c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 2270
    const v5, 0x108063d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 2271
    :catch_0
    move-exception v2

    .line 2272
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    .line 2370
    if-nez p1, :cond_0

    .line 2371
    const/4 v2, 0x0

    .line 2408
    :goto_0
    return-object v2

    .line 2373
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2374
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2377
    :cond_2
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 2378
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2380
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 2381
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2382
    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2383
    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2384
    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2386
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 2387
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2389
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2390
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2391
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2392
    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 2393
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2394
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2395
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2396
    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2397
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2399
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2400
    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 2401
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2403
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2404
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2405
    .local v3, "finalCanvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2406
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2407
    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 2290
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 2354
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2355
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2356
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 2357
    .local v1, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 2359
    .local v2, "radius":F
    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2365
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2349
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2309
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2314
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2319
    .local v4, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v4, :cond_1

    .line 2321
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2322
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2330
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 2316
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 2317
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .restart local v4    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 2325
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v2

    .line 2326
    .local v2, "iconId":I
    if-eqz v2, :cond_1

    .line 2327
    invoke-direct {p0, v4, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 2330
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconId":I
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 2335
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2338
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 2340
    .local v3, "mIconDpi":I
    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2345
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 2341
    :catch_0
    move-exception v2

    .line 2342
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2345
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method private getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bFocused"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2412
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2413
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 2414
    .local v0, "bgBmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 2415
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2419
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2420
    .local v3, "innerShadowBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2423
    .local v4, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2424
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2425
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2426
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2427
    invoke-virtual {v2, v0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2428
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2429
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 2430
    if-eqz v1, :cond_0

    .line 2431
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2433
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 2434
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 2435
    invoke-virtual {v2, v3, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2436
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 2438
    return-object v4

    .line 2417
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "innerShadowBmp":Landroid/graphics/Bitmap;
    .end local v4    # "output":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2279
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2280
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1050127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2281
    .local v2, "originPixelSize":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 2282
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2283
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    invoke-static {v0, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2284
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2286
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2294
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2295
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2296
    .local v1, "focus":Landroid/graphics/Bitmap;
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2297
    .local v2, "normal":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2298
    .local v3, "pressedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2299
    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2300
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2442
    if-nez p1, :cond_1

    .line 2443
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2444
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2446
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2447
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 2448
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2449
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2453
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
