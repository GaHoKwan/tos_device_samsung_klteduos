.class public final Landroid/sec/provider/SecPowerSavingSettings;
.super Ljava/lang/Object;
.source "SecPowerSavingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/provider/SecPowerSavingSettings$SecPowerSavingParams;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "powersavingsettings"

.field public static final AUTO:I = 0x1

.field private static final AUTO_VALUE:Ljava/lang/String; = "autovalue"

.field public static final MANUAL:I = 0x0

.field private static final MANUAL_VALUE:Ljava/lang/String; = "manualvalue"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final PKGNAME:Ljava/lang/String; = "packagename"

.field private static final TAG:Ljava/lang/String; = "SecPowerSavingSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValues(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/sec/provider/SecPowerSavingSettings$SecPowerSavingParams;)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "aParams"    # Landroid/sec/provider/SecPowerSavingSettings$SecPowerSavingParams;

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 121
    const/4 v7, 0x0

    .line 140
    :cond_0
    :goto_0
    return v7

    .line 123
    :cond_1
    const/4 v6, 0x0

    .line 124
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 125
    .local v7, "ret":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://powersavingsettings/powersavingsettings/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "CONTENT_URI":Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 126
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    if-eqz v6, :cond_0

    .line 129
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const-string/jumbo v0, "mode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Landroid/sec/provider/SecPowerSavingSettings$SecPowerSavingParams;->mMode:I

    .line 132
    const-string v0, "autovalue"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Landroid/sec/provider/SecPowerSavingSettings$SecPowerSavingParams;->mAutoValue:I

    .line 133
    const-string/jumbo v0, "manualvalue"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Landroid/sec/provider/SecPowerSavingSettings$SecPowerSavingParams;->mManualValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const/4 v7, 0x1

    .line 137
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static putValues(Landroid/content/ContentResolver;Ljava/lang/String;III)Z
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "autovalue"    # I
    .param p4, "manualvalue"    # I

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    const/4 v9, 0x0

    .line 291
    :cond_0
    :goto_0
    return v9

    .line 257
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v10, "values":Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 259
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 260
    .local v9, "ret":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://powersavingsettings/powersavingsettings/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 262
    if-eqz v8, :cond_0

    .line 264
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 265
    const-string v0, "content://powersavingsettings/powersavingsettings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 266
    .local v6, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 267
    const-string/jumbo v0, "packagename"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v0, "autovalue"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string/jumbo v0, "manualvalue"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    invoke-virtual {p0, v6, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    const/4 v9, 0x1

    .line 288
    .end local v6    # "CONTENT_URI2":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 273
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 274
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 275
    const-string/jumbo v0, "mode"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne p2, v0, :cond_4

    const-string v0, "autovalue"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne p3, v0, :cond_4

    const-string/jumbo v0, "manualvalue"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq p4, v0, :cond_6

    :cond_4
    const/4 v7, 0x1

    .line 278
    .local v7, "changed":Z
    :goto_2
    if-eqz v7, :cond_5

    .line 279
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 280
    const-string/jumbo v0, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v0, "autovalue"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string/jumbo v0, "manualvalue"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v10, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 275
    .end local v7    # "changed":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 288
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setManualModeValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "manualvalue"    # I

    .prologue
    .line 151
    if-nez p1, :cond_1

    .line 152
    const/4 v14, 0x0

    .line 190
    :cond_0
    :goto_0
    return v14

    .line 154
    :cond_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v15, "values":Landroid/content/ContentValues;
    const/4 v11, 0x0

    .line 156
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 157
    .local v14, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://powersavingsettings/powersavingsettings/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 158
    .local v2, "CONTENT_URI":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 159
    if-eqz v11, :cond_0

    .line 161
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 162
    const-string/jumbo v1, "ro.gpupowerstretch.sweetspot"

    const/16 v3, 0x63

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 163
    .local v8, "autoValue":I
    const-string v1, "content://powersavingsettings/powersavingsettings/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 164
    .local v7, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 165
    const-string/jumbo v1, "packagename"

    move-object/from16 v0, p1

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "mode"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v1, "autovalue"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string/jumbo v1, "manualvalue"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v14, 0x1

    .line 187
    .end local v7    # "CONTENT_URI2":Landroid/net/Uri;
    .end local v8    # "autoValue":I
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 171
    :cond_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 172
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    const/4 v13, 0x0

    .line 174
    .local v13, "mode":I
    const-string v1, "autovalue"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 175
    .local v9, "autovalue":I
    const-string/jumbo v1, "manualvalue"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 176
    .local v12, "existmanualvalue":I
    move/from16 v0, p2

    if-eq v0, v12, :cond_5

    const/4 v10, 0x1

    .line 177
    .local v10, "changed":Z
    :goto_2
    if-eqz v10, :cond_4

    .line 178
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 179
    const-string/jumbo v1, "mode"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v1, "autovalue"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string/jumbo v1, "manualvalue"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :cond_4
    const/4 v14, 0x1

    goto :goto_1

    .line 176
    .end local v10    # "changed":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 187
    .end local v9    # "autovalue":I
    .end local v12    # "existmanualvalue":I
    .end local v13    # "mode":I
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static setMode(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "aMode"    # I

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 202
    const/4 v13, -0x1

    .line 240
    :cond_0
    :goto_0
    return v13

    .line 204
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v14, "values":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 206
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, -0x1

    .line 207
    .local v13, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://powersavingsettings/powersavingsettings/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 208
    .local v2, "CONTENT_URI":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 209
    if-eqz v10, :cond_0

    .line 211
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 212
    const-string/jumbo v1, "ro.gpupowerstretch.sweetspot"

    const/16 v3, 0x63

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 213
    const-string v1, "content://powersavingsettings/powersavingsettings/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 214
    .local v7, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 215
    const-string/jumbo v1, "packagename"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v1, "mode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v1, "autovalue"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string/jumbo v1, "manualvalue"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    invoke-virtual {p0, v7, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v7    # "CONTENT_URI2":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 221
    :cond_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 222
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    const-string/jumbo v1, "mode"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 224
    .local v12, "mode":I
    const-string v1, "autovalue"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 225
    .local v8, "autovalue":I
    const-string/jumbo v1, "manualvalue"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 226
    .local v11, "existmanualvalue":I
    move/from16 v0, p2

    if-eq v12, v0, :cond_5

    const/4 v9, 0x1

    .line 227
    .local v9, "changed":Z
    :goto_2
    if-eqz v9, :cond_4

    .line 228
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 229
    const-string/jumbo v1, "mode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v1, "autovalue"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string/jumbo v1, "manualvalue"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v14, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_4
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    move v13, v8

    :goto_3
    goto :goto_1

    .line 226
    .end local v9    # "changed":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .restart local v9    # "changed":Z
    :cond_6
    move v13, v11

    .line 234
    goto :goto_3

    .line 237
    .end local v8    # "autovalue":I
    .end local v9    # "changed":Z
    .end local v11    # "existmanualvalue":I
    .end local v12    # "mode":I
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method
