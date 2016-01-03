.class public Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
.super Ljava/lang/Object;
.source "SmartClipDataElementImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;


# static fields
.field public static final EXTRACTION_MODE_DRAG_AND_DROP:I = 0x2

.field public static final EXTRACTION_MODE_NORMAL:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataElementImpl"


# instance fields
.field protected mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mId:I

.field protected mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mRectOnScreen:Landroid/graphics/Rect;

.field protected mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field public mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    .line 40
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 43
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 49
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 52
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 55
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .locals 2
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    .line 40
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 43
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 49
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 52
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 55
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 173
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 179
    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 192
    return-void
.end method

.method private setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0
    .param p1, "sibling"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 331
    return-void
.end method

.method private setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0
    .param p1, "parent"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 335
    return-void
.end method

.method private setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0
    .param p1, "sibling"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 327
    return-void
.end method


# virtual methods
.method public addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 6
    .param p1, "childToAdd"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 270
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 272
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v4, :cond_2

    .line 273
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 274
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 275
    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 276
    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 277
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    .line 278
    goto :goto_0

    .line 279
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v4, :cond_0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 281
    .local v1, "lastChild":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 282
    invoke-direct {v1, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 283
    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 284
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    .line 289
    goto :goto_0
.end method

.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .locals 2
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 144
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTag(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 1
    .param p1, "tagSet"    # Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    return-void
.end method

.method public clearMetaData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 196
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V

    .line 197
    return-void
.end method

.method public createChildInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    move-result-object v0

    .line 257
    .local v0, "newElement":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 258
    return-object v0
.end method

.method public dump()Z
    .locals 3

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "dumpStr":Ljava/lang/String;
    const-string v2, "SmartClipDataElementImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 471
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    .line 473
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    .line 475
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getAllTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 362
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v1, :cond_0

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 364
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    .line 366
    :cond_0
    return v0
.end method

.method public getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method protected getDumpString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 409
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 410
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParentCount()I

    move-result v2

    .line 412
    .local v2, "parentCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 413
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    if-eqz v9, :cond_3

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Rect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v9, :cond_4

    .line 424
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 425
    .local v5, "tagCount":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_5

    .line 426
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 428
    .local v4, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 430
    .local v8, "value":Ljava/lang/String;
    const-string v0, ""

    .line 432
    .local v0, "extra":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 433
    new-instance v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/String;
    const-string/jumbo v9, "null"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 436
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    instance-of v9, v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v9, :cond_2

    move-object v6, v4

    .line 437
    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .line 439
    .local v6, "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v9

    if-eqz v9, :cond_2

    .line 440
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", Extra data size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .end local v6    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 419
    .end local v0    # "extra":Ljava/lang/String;
    .end local v4    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v5    # "tagCount":I
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "mRectOnScreen(NULL)\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 447
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "No meta tag\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    :cond_5
    return-object v3
.end method

.method public getExtractionMode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .line 224
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getExtractionMode()I

    move-result v1

    goto :goto_0
.end method

.method public getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getMetaAreaRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParentCount()I
    .locals 2

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, "parentCount":I
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 375
    .local v0, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 376
    add-int/lit8 v1, v1, 0x1

    .line 377
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_0
    return v1
.end method

.method public getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 2
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_0

    .line 117
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 121
    :goto_0
    return-object v0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    .line 121
    .local v0, "typedArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    goto :goto_0
.end method

.method public getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isEmptyTag(Z)Z
    .locals 4
    .param p1, "includeChild"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    if-nez p1, :cond_2

    .line 233
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 236
    goto :goto_0

    .line 239
    :cond_2
    move-object v0, p0

    .line 241
    .local v0, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v0, :cond_4

    .line 242
    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 246
    :cond_3
    invoke-virtual {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 248
    goto :goto_0
.end method

.method public newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    return-object v0
.end method

.method public removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 5
    .param p1, "childToRemove"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v1, 0x0

    .line 293
    if-nez p1, :cond_0

    .line 321
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 297
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 299
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 300
    const-string v2, "SmartClipDataElementImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeChild : Incorrect parent of SlookSmartClipDataElement. element="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    goto :goto_0

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_3

    .line 310
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 313
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 314
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 317
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 318
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    .line 321
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .locals 0
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 212
    return-void
.end method

.method public setMetaAreaRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    .line 73
    return-void
.end method

.method public setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 2
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_2

    .line 100
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 0
    .param p1, "tagsArray"    # Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 160
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    .line 202
    return-void
.end method

.method public traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 3
    .param p1, "topMostNodeOfTraverse"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_1

    .line 387
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 404
    :cond_0
    :goto_0
    return-object v1

    .line 389
    :cond_1
    if-eq p0, p1, :cond_0

    .line 392
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_2

    .line 393
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_0

    .line 395
    :cond_2
    move-object v0, p0

    .line 396
    .local v0, "n":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eq v2, p1, :cond_4

    .line 397
    :cond_3
    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_1

    .line 400
    :cond_4
    if-eqz v0, :cond_0

    .line 401
    iget-object v1, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_0
.end method
