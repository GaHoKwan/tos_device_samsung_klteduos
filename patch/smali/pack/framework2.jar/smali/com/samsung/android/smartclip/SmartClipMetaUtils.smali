.class public Lcom/samsung/android/smartclip/SmartClipMetaUtils;
.super Ljava/lang/Object;
.source "SmartClipMetaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMetaTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v0, 0x0

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->addSmartClipTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v0

    goto :goto_0
.end method

.method public static clearAllMetaTag(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAllSmartClipTag()Z

    move-result v0

    goto :goto_0
.end method

.method public static extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v0

    goto :goto_0
.end method

.method public static getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 170
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 171
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 172
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 173
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 174
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 175
    return-object v1
.end method

.method public static getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 161
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 162
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 163
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 164
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 166
    return-object v1
.end method

.method public static isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 5
    .param p0, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "metaValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 82
    if-eqz v0, :cond_0

    const-string v3, "about:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    const-string v3, "email://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 87
    goto :goto_0
.end method

.method public static removeMetaTag(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 60
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->removeSmartClipTag(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSmartClipDataExtractionListener(Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setIntentMetaTag(Landroid/view/View;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    if-nez p0, :cond_0

    move v3, v4

    .line 123
    :goto_0
    return v3

    .line 96
    :cond_0
    move-object v2, p0

    .line 98
    .local v2, "rootView":Landroid/view/View;
    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, p0

    .line 99
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 100
    .local v1, "parent":Landroid/view/View;
    if-nez v1, :cond_2

    .line 111
    .end local v1    # "parent":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->isValidIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 112
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->marshall(Landroid/content/Intent;)[B

    move-result-object v0

    .line 113
    .local v0, "intentData":[B
    if-eqz v0, :cond_3

    .line 114
    const-string v3, "app_launch_info"

    invoke-static {v2, v3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->removeMetaTag(Landroid/view/View;Ljava/lang/String;)Z

    .line 115
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string v4, "app_launch_info"

    const-string v6, ""

    invoke-direct {v3, v4, v6, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-static {v2, v3}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->addMetaTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move v3, v5

    .line 123
    goto :goto_0

    .line 103
    .end local v0    # "intentData":[B
    .restart local v1    # "parent":Landroid/view/View;
    :cond_2
    move-object v2, v1

    .line 105
    goto :goto_1

    .end local v1    # "parent":Landroid/view/View;
    .restart local v0    # "intentData":[B
    :cond_3
    move v3, v4

    .line 117
    goto :goto_0

    .end local v0    # "intentData":[B
    :cond_4
    move v3, v4

    .line 120
    goto :goto_0
.end method

.method public static setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    const/4 v3, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 146
    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 147
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v2

    .line 148
    .local v2, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    .line 150
    .local v0, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropper;
    :goto_1
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropper;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    move-result v3

    goto :goto_0

    .line 148
    .end local v0    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropper;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setSmartClipTag(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "metaTag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/View;->removeSmartClipTag(Ljava/lang/String;)Z

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->addSmartClipTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v1

    goto :goto_0
.end method
