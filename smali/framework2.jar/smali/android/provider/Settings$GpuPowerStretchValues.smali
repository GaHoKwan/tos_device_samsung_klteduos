.class public final Landroid/provider/Settings$GpuPowerStretchValues;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuPowerStretchValues"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;
    }
.end annotation


# static fields
.field public static final AUTO:I = 0x1

.field private static final AUTO_VALUE:Ljava/lang/String; = "autovalue"

.field public static final MANUAL:I = 0x0

.field private static final MANUAL_VALUE:Ljava/lang/String; = "manualvalue"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final PKGNAME:Ljava/lang/String; = "packagename"

.field private static final TAG:Ljava/lang/String; = "GpuPowerStretchValues"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValues(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "aParams"    # Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;

    .prologue
    .line 12234
    if-nez p1, :cond_1

    .line 12235
    const/4 v2, 0x0

    .line 12254
    :cond_0
    :goto_0
    return v2

    .line 12237
    :cond_1
    const/4 v1, 0x0

    .line 12238
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 12239
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://settings/powersaving_appsetting/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 12241
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 12243
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 12244
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12245
    const-string/jumbo v3, "mode"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;->mMode:I

    .line 12246
    const-string v3, "autovalue"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;->mAutoValue:I

    .line 12247
    const-string/jumbo v3, "manualvalue"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;->mManualValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12248
    const/4 v2, 0x1

    .line 12251
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static putValues(Landroid/content/ContentResolver;Ljava/lang/String;III)Z
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "autovalue"    # I
    .param p4, "manualvalue"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 12367
    if-nez p1, :cond_1

    move v4, v6

    .line 12405
    :cond_0
    :goto_0
    return v4

    .line 12371
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 12372
    .local v5, "values":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 12373
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 12374
    .local v4, "ret":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://settings/powersaving_appsetting/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 12376
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 12378
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 12379
    const-string v6, "content://settings/powersaving_appsetting/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12380
    .local v1, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 12381
    const-string/jumbo v6, "packagename"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12382
    const-string/jumbo v6, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12383
    const-string v6, "autovalue"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12384
    const-string/jumbo v6, "manualvalue"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12385
    invoke-virtual {p0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12386
    const/4 v4, 0x1

    .line 12402
    .end local v1    # "CONTENT_URI2":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 12387
    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 12388
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12389
    const-string/jumbo v7, "mode"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne p2, v7, :cond_4

    const-string v7, "autovalue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne p3, v7, :cond_4

    const-string/jumbo v7, "manualvalue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eq p4, v7, :cond_6

    .line 12392
    .local v2, "changed":Z
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 12393
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 12394
    const-string/jumbo v6, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12395
    const-string v6, "autovalue"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12396
    const-string/jumbo v6, "manualvalue"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12397
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12399
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .end local v2    # "changed":Z
    :cond_6
    move v2, v6

    .line 12389
    goto :goto_2

    .line 12402
    :catchall_0
    move-exception v6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method public static setManualModeValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "manualvalue"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 12265
    if-nez p1, :cond_1

    move v8, v10

    .line 12304
    :cond_0
    :goto_0
    return v8

    .line 12268
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 12269
    .local v9, "values":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 12270
    .local v5, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 12271
    .local v8, "ret":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://settings/powersaving_appsetting/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 12273
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 12275
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_3

    .line 12276
    const-string/jumbo v10, "ro.gpupowerstretch.sweetspot"

    const/16 v11, 0x63

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 12277
    .local v2, "autoValue":I
    const-string v10, "content://settings/powersaving_appsetting/"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12278
    .local v1, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 12279
    const-string/jumbo v10, "packagename"

    invoke-virtual {v9, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12280
    const-string/jumbo v10, "mode"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12281
    const-string v10, "autovalue"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12282
    const-string/jumbo v10, "manualvalue"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12283
    invoke-virtual {p0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12284
    const/4 v8, 0x1

    .line 12301
    .end local v1    # "CONTENT_URI2":Landroid/net/Uri;
    .end local v2    # "autoValue":I
    :cond_2
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 12285
    :cond_3
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ne v11, v4, :cond_2

    .line 12286
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12287
    const/4 v7, 0x0

    .line 12288
    .local v7, "mode":I
    const-string v11, "autovalue"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 12289
    .local v3, "autovalue":I
    const-string/jumbo v11, "manualvalue"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 12290
    .local v6, "existmanualvalue":I
    if-eq p2, v6, :cond_5

    .line 12291
    .local v4, "changed":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 12292
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 12293
    const-string/jumbo v10, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12294
    const-string v10, "autovalue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12295
    const-string/jumbo v10, "manualvalue"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12296
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v0, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12298
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .end local v4    # "changed":Z
    :cond_5
    move v4, v10

    .line 12290
    goto :goto_2

    .line 12301
    .end local v3    # "autovalue":I
    .end local v6    # "existmanualvalue":I
    .end local v7    # "mode":I
    :catchall_0
    move-exception v10

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v10
.end method

.method public static setMode(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "aMode"    # I

    .prologue
    const/4 v9, 0x1

    .line 12315
    if-nez p1, :cond_1

    .line 12316
    const/4 v7, -0x1

    .line 12354
    :cond_0
    :goto_0
    return v7

    .line 12318
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 12319
    .local v8, "values":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 12320
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 12321
    .local v7, "ret":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://settings/powersaving_appsetting/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 12323
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 12325
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_3

    .line 12326
    const-string/jumbo v9, "ro.gpupowerstretch.sweetspot"

    const/16 v10, 0x63

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 12327
    const-string v9, "content://settings/powersaving_appsetting/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12328
    .local v1, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 12329
    const-string/jumbo v9, "packagename"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12330
    const-string/jumbo v9, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12331
    const-string v9, "autovalue"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12332
    const-string/jumbo v9, "manualvalue"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12333
    invoke-virtual {p0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12351
    .end local v1    # "CONTENT_URI2":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 12335
    :cond_3
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 12336
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12337
    const-string/jumbo v10, "mode"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 12338
    .local v6, "mode":I
    const-string v10, "autovalue"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 12339
    .local v2, "autovalue":I
    const-string/jumbo v10, "manualvalue"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 12340
    .local v5, "existmanualvalue":I
    if-eq v6, p2, :cond_5

    move v3, v9

    .line 12341
    .local v3, "changed":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 12342
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 12343
    const-string/jumbo v10, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12344
    const-string v10, "autovalue"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12345
    const-string/jumbo v10, "manualvalue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12346
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v0, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12348
    :cond_4
    if-ne p2, v9, :cond_6

    move v7, v2

    :goto_3
    goto :goto_1

    .line 12340
    .end local v3    # "changed":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .restart local v3    # "changed":Z
    :cond_6
    move v7, v5

    .line 12348
    goto :goto_3

    .line 12351
    .end local v2    # "autovalue":I
    .end local v3    # "changed":Z
    .end local v5    # "existmanualvalue":I
    .end local v6    # "mode":I
    :catchall_0
    move-exception v9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v9
.end method
