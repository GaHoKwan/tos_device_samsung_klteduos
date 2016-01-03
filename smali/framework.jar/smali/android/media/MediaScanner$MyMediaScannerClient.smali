.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mBitDepth:I

.field private mCityID:J

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mFormat:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIs360video:I

.field private mIsDrm:Z

.field private mIsDrmConverted:Z

.field private mIsDrmFlag:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mRecordingType:I

.field private mSamplingRate:I

.field private mSecretBox:I

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoLatitude:F

.field private mVideoLongitude:F

.field private mVoiceLatitude:F

.field private mVoiceLongitude:F

.field private mWeatherID:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 4

    .prologue
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    .line 597
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrmConverted:Z

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 618
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrmFlag:Z

    .line 620
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    .line 627
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    .line 628
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    .line 629
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    .line 630
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 631
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 632
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 633
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    .line 634
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    .line 635
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    .line 636
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    .line 637
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSecretBox:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaScanner;
    .param p2, "x1"    # Landroid/media/MediaScanner$1;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1140
    if-nez p1, :cond_1

    const-string v1, ""

    .line 1141
    .local v1, "s":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1142
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 1143
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1145
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    return-void

    .line 1140
    .end local v0    # "idx":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    const/4 v1, 0x1

    .line 956
    :goto_0
    return v1

    .line 955
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1484
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1485
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1486
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;
    .locals 60
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "dcfRingtones"    # Z
    .param p4, "notifications"    # Z
    .param p5, "alarms"    # Z
    .param p6, "music"    # Z
    .param p7, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1155
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1158
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 1159
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1160
    .local v57, "title":Ljava/lang/String;
    if-eqz v57, :cond_2

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1161
    :cond_2
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1162
    const-string v4, "title"

    move-object/from16 v0, v57

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_3
    const-string v4, "album"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1165
    .local v20, "album":Ljava/lang/String;
    const-string v4, "<unknown>"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1166
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1168
    const/16 v4, 0x2f

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v40

    .line 1169
    .local v40, "lastSlash":I
    if-ltz v40, :cond_5

    .line 1170
    const/16 v46, 0x0

    .line 1172
    .local v46, "previousSlash":I
    :goto_0
    const/16 v4, 0x2f

    add-int/lit8 v5, v46, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v37

    .line 1173
    .local v37, "idx":I
    if-ltz v37, :cond_4

    move/from16 v0, v37

    move/from16 v1, v40

    if-lt v0, v1, :cond_17

    .line 1178
    :cond_4
    if-eqz v46, :cond_5

    .line 1179
    add-int/lit8 v4, v46, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1180
    const-string v4, "album"

    move-object/from16 v0, v20

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .end local v37    # "idx":I
    .end local v40    # "lastSlash":I
    .end local v46    # "previousSlash":I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v50, v0

    .line 1185
    .local v50, "rowId":J
    const-wide/16 v21, 0x0

    .line 1186
    .local v21, "beforeExifExtractingTime":J
    const-wide/16 v29, 0x0

    .line 1188
    .local v29, "exifExtractingTime":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-wide/16 v4, 0x0

    cmp-long v4, v50, v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_1a

    .line 1193
    :cond_6
    const-string v5, "is_ringtone"

    if-nez p2, :cond_7

    if-eqz p3, :cond_18

    :cond_7
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1194
    const-string v4, "is_notification"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1195
    const-string v4, "is_alarm"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1197
    const-string v4, "recordingtype"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 1198
    .local v47, "recordingtype":Ljava/lang/Integer;
    if-eqz v47, :cond_19

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_19

    .line 1199
    const-string v4, "is_music"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    :goto_2
    const-string v4, "is_podcast"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1285
    .end local v47    # "recordingtype":Ljava/lang/Integer;
    :cond_8
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 1286
    .local v52, "start":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    .line 1287
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/secvision/sef/SEF;->isSEFFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1288
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v17

    .line 1289
    .local v17, "SEFDataTypes":[I
    move-object/from16 v0, v17

    array-length v4, v0

    add-int/lit8 v36, v4, -0x1

    .local v36, "i":I
    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v36

    if-le v0, v4, :cond_a

    .line 1290
    aget v4, v17, v36

    const/16 v5, 0x7ff

    if-le v4, v5, :cond_23

    aget v4, v17, v36

    rem-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_23

    .line 1291
    const-string v4, "sef_file_type"

    aget v5, v17, v36

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sef_file_type set to "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v10, v17, v36

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    .end local v17    # "SEFDataTypes":[I
    .end local v36    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v52

    # += operator for: Landroid/media/MediaScanner;->mTotalSefExtractingTime:J
    invoke-static {v4, v10, v11}, Landroid/media/MediaScanner;->access$2514(Landroid/media/MediaScanner;J)J

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v54

    .line 1301
    .local v54, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v38

    .line 1302
    .local v38, "inserter":Landroid/media/MediaInserter;
    const-wide/16 v23, 0x0

    .line 1304
    .local v23, "bulkInserterTime":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_b

    .line 1305
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1306
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v54

    .line 1313
    :cond_b
    :goto_5
    const/4 v6, 0x0

    .line 1314
    .local v6, "result":Landroid/net/Uri;
    const/16 v43, 0x0

    .line 1315
    .local v43, "needToSetSettings":Z
    const-wide/16 v4, 0x0

    cmp-long v4, v50, v4

    if-nez v4, :cond_2c

    .line 1316
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_c

    .line 1317
    const-string v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v54

    if-ne v0, v4, :cond_e

    .line 1320
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    move/from16 v33, v0

    .line 1321
    .local v33, "format":I
    if-nez v33, :cond_d

    .line 1322
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v33

    .line 1324
    :cond_d
    const-string v4, "format"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    .end local v33    # "format":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1330
    if-eqz p4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1331
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1333
    :cond_f
    const/16 v43, 0x1

    .line 1354
    :cond_10
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 1355
    if-eqz v38, :cond_11

    if-eqz v43, :cond_2a

    .line 1356
    :cond_11
    if-eqz v38, :cond_12

    .line 1357
    invoke-virtual/range {v38 .. v38}, Landroid/media/MediaInserter;->flushAll()V

    .line 1359
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1365
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mTotalInserted:J
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3908(Landroid/media/MediaScanner;)J

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v23

    # += operator for: Landroid/media/MediaScanner;->mTotalBulkInserterTime:J
    invoke-static {v4, v10, v11}, Landroid/media/MediaScanner;->access$4014(Landroid/media/MediaScanner;J)J

    .line 1367
    if-eqz v6, :cond_13

    .line 1368
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v50

    .line 1369
    move-wide/from16 v0, v50

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1408
    :cond_13
    :goto_8
    if-eqz v43, :cond_36

    .line 1409
    if-eqz p4, :cond_37

    .line 1410
    const-string v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-wide/from16 v2, v50

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1412
    const-string v4, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1414
    :cond_14
    const-string v14, "com.android.settings"

    .line 1415
    .local v14, "AUTHORITY":Ljava/lang/String;
    const-string v16, "profile"

    .line 1416
    .local v16, "PROFILE_TABLE":Ljava/lang/String;
    const-string v4, "content://com.android.settings/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1418
    .local v9, "PROFILE_CONTENT_URI":Landroid/net/Uri;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_9
    const/4 v4, 0x5

    move/from16 v0, v36

    if-ge v0, v4, :cond_35

    .line 1419
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1420
    .local v8, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "profile_notification_tone"

    aput-object v5, v10, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v36, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1421
    .local v25, "cursor":Landroid/database/Cursor;
    if-eqz v25, :cond_15

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1422
    const-string v4, "profile_notification_tone"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1424
    .local v15, "NotiRingtone":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1425
    new-instance v49, Landroid/content/ContentValues;

    invoke-direct/range {v49 .. v49}, Landroid/content/ContentValues;-><init>()V

    .line 1426
    .local v49, "ringtoneValues":Landroid/content/ContentValues;
    const-string v4, "profile_notification_tone"

    move-object/from16 v0, v54

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    add-int/lit8 v4, v36, 0x1

    int-to-long v4, v4

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1428
    .local v19, "_uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v4, v0, v1, v5, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1431
    .end local v15    # "NotiRingtone":Ljava/lang/String;
    .end local v19    # "_uri":Landroid/net/Uri;
    .end local v49    # "ringtoneValues":Landroid/content/ContentValues;
    :cond_15
    if-eqz v25, :cond_16

    .line 1432
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1418
    :cond_16
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_9

    .line 1176
    .end local v6    # "result":Landroid/net/Uri;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "PROFILE_CONTENT_URI":Landroid/net/Uri;
    .end local v14    # "AUTHORITY":Ljava/lang/String;
    .end local v16    # "PROFILE_TABLE":Ljava/lang/String;
    .end local v21    # "beforeExifExtractingTime":J
    .end local v23    # "bulkInserterTime":J
    .end local v25    # "cursor":Landroid/database/Cursor;
    .end local v29    # "exifExtractingTime":J
    .end local v36    # "i":I
    .end local v38    # "inserter":Landroid/media/MediaInserter;
    .end local v43    # "needToSetSettings":Z
    .end local v50    # "rowId":J
    .end local v52    # "start":J
    .end local v54    # "tableUri":Landroid/net/Uri;
    .restart local v37    # "idx":I
    .restart local v40    # "lastSlash":I
    .restart local v46    # "previousSlash":I
    :cond_17
    move/from16 v46, v37

    .line 1177
    goto/16 :goto_0

    .line 1193
    .end local v37    # "idx":I
    .end local v40    # "lastSlash":I
    .end local v46    # "previousSlash":I
    .restart local v21    # "beforeExifExtractingTime":J
    .restart local v29    # "exifExtractingTime":J
    .restart local v50    # "rowId":J
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1201
    .restart local v47    # "recordingtype":Ljava/lang/Integer;
    :cond_19
    const-string v4, "is_music"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 1203
    .end local v47    # "recordingtype":Ljava/lang/Integer;
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_8

    .line 1204
    const/16 v59, -0x1

    .line 1205
    .local v59, "width":I
    const/16 v35, -0x1

    .line 1206
    .local v35, "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1207
    const/16 v27, 0x0

    .line 1209
    .local v27, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v28, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v27    # "exif":Landroid/media/ExifInterface;
    .local v28, "exif":Landroid/media/ExifInterface;
    move-object/from16 v27, v28

    .line 1213
    .end local v28    # "exif":Landroid/media/ExifInterface;
    .restart local v27    # "exif":Landroid/media/ExifInterface;
    :goto_a
    if-eqz v27, :cond_1d

    .line 1214
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v41, v0

    .line 1215
    .local v41, "latlng":[F
    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1216
    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v41, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1217
    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v41, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1220
    :cond_1b
    invoke-virtual/range {v27 .. v27}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v55

    .line 1221
    .local v55, "time":J
    const-wide/16 v4, -0x1

    cmp-long v4, v55, v4

    if-eqz v4, :cond_20

    .line 1222
    const-string v4, "datetaken"

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1233
    :cond_1c
    :goto_b
    const-string v4, "ImageWidth"

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v59

    .line 1234
    const-string v4, "ImageLength"

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v35

    .line 1236
    const-string v4, "Orientation"

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v44

    .line 1238
    .local v44, "orientation":I
    const/4 v4, -0x1

    move/from16 v0, v44

    if-eq v0, v4, :cond_1d

    .line 1241
    packed-switch v44, :pswitch_data_0

    .line 1252
    :pswitch_0
    const/16 v26, 0x0

    .line 1255
    .local v26, "degree":I
    :goto_c
    const-string v4, "orientation"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    .end local v26    # "degree":I
    .end local v41    # "latlng":[F
    .end local v44    # "orientation":I
    .end local v55    # "time":J
    :cond_1d
    const/4 v4, -0x1

    move/from16 v0, v59

    if-eq v0, v4, :cond_1e

    const/4 v4, -0x1

    move/from16 v0, v35

    if-ne v0, v4, :cond_21

    .line 1259
    :cond_1e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 1265
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v4, :cond_1f

    .line 1266
    const-string/jumbo v4, "width"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    const-string v4, "height"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1269
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v29, v4, v21

    .line 1270
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v29

    # += operator for: Landroid/media/MediaScanner;->mTotalExifExtractingTime:J
    invoke-static {v4, v0, v1}, Landroid/media/MediaScanner;->access$2414(Landroid/media/MediaScanner;J)J

    .line 1272
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 1273
    .local v39, "lastDot":I
    if-lez v39, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-eqz v4, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v4, v29, v4

    if-eqz v4, :cond_8

    .line 1274
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    add-int/lit8 v5, v39, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    .line 1275
    .local v31, "extention":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/media/MediaScanner$FileParsingTime;

    .line 1276
    .local v45, "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v45, :cond_22

    .line 1277
    move-object/from16 v0, v45

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1228
    .end local v31    # "extention":Ljava/lang/String;
    .end local v39    # "lastDot":I
    .end local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .restart local v41    # "latlng":[F
    .restart local v55    # "time":J
    :cond_20
    invoke-virtual/range {v27 .. v27}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v55

    .line 1229
    const-wide/16 v4, -0x1

    cmp-long v4, v55, v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    sub-long v4, v4, v55

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v10, 0x5265c00

    cmp-long v4, v4, v10

    if-ltz v4, :cond_1c

    .line 1230
    const-string v4, "datetaken"

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_b

    .line 1243
    .restart local v44    # "orientation":I
    :pswitch_1
    const/16 v26, 0x5a

    .line 1244
    .restart local v26    # "degree":I
    goto/16 :goto_c

    .line 1246
    .end local v26    # "degree":I
    :pswitch_2
    const/16 v26, 0xb4

    .line 1247
    .restart local v26    # "degree":I
    goto/16 :goto_c

    .line 1249
    .end local v26    # "degree":I
    :pswitch_3
    const/16 v26, 0x10e

    .line 1250
    .restart local v26    # "degree":I
    goto/16 :goto_c

    .line 1261
    .end local v26    # "degree":I
    .end local v41    # "latlng":[F
    .end local v44    # "orientation":I
    .end local v55    # "time":J
    :cond_21
    move/from16 v0, v59

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1262
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_d

    .line 1280
    .restart local v31    # "extention":Ljava/lang/String;
    .restart local v39    # "lastDot":I
    .restart local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v31

    move-wide/from16 v1, v29

    invoke-direct {v5, v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1289
    .end local v27    # "exif":Landroid/media/ExifInterface;
    .end local v31    # "extention":Ljava/lang/String;
    .end local v35    # "height":I
    .end local v39    # "lastDot":I
    .end local v45    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    .end local v59    # "width":I
    .restart local v17    # "SEFDataTypes":[I
    .restart local v36    # "i":I
    .restart local v52    # "start":J
    :cond_23
    add-int/lit8 v36, v36, -0x1

    goto/16 :goto_4

    .line 1307
    .end local v17    # "SEFDataTypes":[I
    .end local v36    # "i":I
    .restart local v23    # "bulkInserterTime":J
    .restart local v38    # "inserter":Landroid/media/MediaInserter;
    .restart local v54    # "tableUri":Landroid/net/Uri;
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v54

    goto/16 :goto_5

    .line 1309
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1310
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v54

    goto/16 :goto_5

    .line 1335
    .restart local v6    # "result":Landroid/net/Uri;
    .restart local v43    # "needToSetSettings":Z
    :cond_26
    if-eqz p2, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1338
    :cond_27
    const/16 v43, 0x1

    goto/16 :goto_6

    .line 1340
    :cond_28
    if-eqz p5, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3500(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1341
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1343
    :cond_29
    const/16 v43, 0x1

    goto/16 :goto_6

    .line 1360
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_2b

    .line 1361
    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_7

    .line 1363
    :cond_2b
    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_7

    .line 1373
    :cond_2c
    move-object/from16 v0, v54

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1376
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1377
    :cond_2d
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1378
    .local v18, "_datafield":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1382
    .end local v18    # "_datafield":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1383
    const-string v4, "mini_thumb_magic"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    :cond_2f
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1390
    const/16 v42, 0x0

    .line 1391
    .local v42, "mediaType":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1392
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v32

    .line 1393
    .local v32, "fileType":I
    invoke-static/range {v32 .. v32}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1394
    const/16 v42, 0x2

    .line 1402
    :cond_30
    :goto_e
    const-string v4, "media_type"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1404
    .end local v32    # "fileType":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mTotalUpdated:J
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4108(Landroid/media/MediaScanner;)J

    .line 1405
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1395
    .restart local v32    # "fileType":I
    :cond_32
    invoke-static/range {v32 .. v32}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1396
    const/16 v42, 0x3

    goto :goto_e

    .line 1397
    :cond_33
    invoke-static/range {v32 .. v32}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1398
    const/16 v42, 0x1

    goto :goto_e

    .line 1399
    :cond_34
    invoke-static/range {v32 .. v32}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1400
    const/16 v42, 0x4

    goto :goto_e

    .line 1436
    .end local v32    # "fileType":I
    .end local v42    # "mediaType":I
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$3102(Landroid/media/MediaScanner;Z)Z

    .line 1480
    :cond_36
    :goto_f
    return-object v6

    .line 1437
    :cond_37
    if-eqz p2, :cond_3f

    .line 1438
    const-string v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-wide/from16 v2, v50

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1440
    const-string v4, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1442
    :cond_38
    const-string v14, "com.android.settings"

    .line 1443
    .restart local v14    # "AUTHORITY":Ljava/lang/String;
    const-string v16, "profile"

    .line 1444
    .restart local v16    # "PROFILE_TABLE":Ljava/lang/String;
    const-string v4, "content://com.android.settings/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1446
    .restart local v9    # "PROFILE_CONTENT_URI":Landroid/net/Uri;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_10
    const/4 v4, 0x5

    move/from16 v0, v36

    if-ge v0, v4, :cond_3e

    .line 1447
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1448
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v36, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1449
    .restart local v25    # "cursor":Landroid/database/Cursor;
    if-eqz v25, :cond_3c

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1450
    const-string v4, "profile_ringtone"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 1451
    .local v48, "ringtone":Ljava/lang/String;
    const-string v4, "profile_gsm_ringtone"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1452
    .local v34, "gsmRingtone":Ljava/lang/String;
    const-string v4, "profile_video_ringtone"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1453
    .local v58, "videoRingtone":Ljava/lang/String;
    new-instance v49, Landroid/content/ContentValues;

    invoke-direct/range {v49 .. v49}, Landroid/content/ContentValues;-><init>()V

    .line 1454
    .restart local v49    # "ringtoneValues":Landroid/content/ContentValues;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1455
    const-string v4, "profile_ringtone"

    move-object/from16 v0, v54

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :cond_39
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1458
    const-string v4, "profile_gsm_ringtone"

    move-object/from16 v0, v54

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :cond_3a
    invoke-static/range {v58 .. v58}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1461
    const-string v4, "profile_video_ringtone"

    move-object/from16 v0, v54

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    :cond_3b
    invoke-virtual/range {v49 .. v49}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 1464
    add-int/lit8 v4, v36, 0x1

    int-to-long v4, v4

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1465
    .restart local v19    # "_uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v4, v0, v1, v5, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1468
    .end local v19    # "_uri":Landroid/net/Uri;
    .end local v34    # "gsmRingtone":Ljava/lang/String;
    .end local v48    # "ringtone":Ljava/lang/String;
    .end local v49    # "ringtoneValues":Landroid/content/ContentValues;
    .end local v58    # "videoRingtone":Ljava/lang/String;
    :cond_3c
    if-eqz v25, :cond_3d

    .line 1469
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1446
    :cond_3d
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_10

    .line 1473
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "PROFILE_CONTENT_URI":Landroid/net/Uri;
    .end local v14    # "AUTHORITY":Ljava/lang/String;
    .end local v16    # "PROFILE_TABLE":Ljava/lang/String;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .end local v36    # "i":I
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$3302(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1474
    :cond_3f
    if-eqz p5, :cond_36

    .line 1475
    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-wide/from16 v2, v50

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$3502(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_f

    .line 1210
    .end local v6    # "result":Landroid/net/Uri;
    .end local v23    # "bulkInserterTime":J
    .end local v38    # "inserter":Landroid/media/MediaInserter;
    .end local v43    # "needToSetSettings":Z
    .end local v52    # "start":J
    .end local v54    # "tableUri":Landroid/net/Uri;
    .restart local v27    # "exif":Landroid/media/ExifInterface;
    .restart local v35    # "height":I
    .restart local v59    # "width":I
    :catch_0
    move-exception v4

    goto/16 :goto_a

    .line 1241
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1503
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v10}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1504
    const/4 v7, 0x0

    .line 1614
    :cond_0
    :goto_0
    return v7

    .line 1507
    :cond_1
    const/4 v7, 0x0

    .line 1519
    .local v7, "resultFileType":I
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v10}, Landroid/media/MediaScanner;->access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1520
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v11, Landroid/drm/DrmManagerClient;

    iget-object v12, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/media/MediaScanner;->access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v10, v11}, Landroid/media/MediaScanner;->access$4302(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1521
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v10}, Landroid/media/MediaScanner;->access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1522
    const-string v10, "MediaScanner"

    const-string v11, "getFileTypeFromDrm DrmManagerClient is NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v7, -0x1

    goto :goto_0

    .line 1527
    :cond_2
    const-string v10, ".dm"

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1529
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v0, "downloadedDrmFileSize":Ljava/io/File;
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getFileTypeFromDrm : drm file size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v10, 0x7

    const-string v11, "application/vnd.oma.drm.content"

    invoke-direct {v2, v10, v11}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1535
    .local v2, "drmInfoRequest_convert":Landroid/drm/DrmInfoRequest;
    const-string v10, "drm_path"

    invoke-virtual {v2, v10, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1536
    const-string v10, "status"

    const-string v11, "fail"

    invoke-virtual {v2, v10, v11}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1539
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v10}, Landroid/media/MediaScanner;->access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 1540
    .local v1, "drmInfo":Landroid/drm/DrmInfo;
    if-eqz v1, :cond_3

    const-string v10, "status"

    invoke-virtual {v1, v10}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    .line 1541
    :cond_3
    const-string v10, "MediaScanner"

    const-string v11, "Mediascanner::getFileTypeFromDrm : DrmInfoRequest.STATUS have NoV"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1544
    :cond_4
    const-string v10, "status"

    invoke-virtual {v1, v10}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1548
    .local v8, "status_req1":Ljava/lang/String;
    const-string v10, "success"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1557
    const-string v10, "drm_path"

    invoke-virtual {v1, v10}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1558
    .local v6, "pathname_dest":Ljava/lang/Object;
    if-eqz v6, :cond_7

    .line 1561
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v5, "file2":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1563
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1564
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrmConverted:Z

    .line 1565
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1566
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrmFlag:Z

    .line 1575
    .end local v0    # "downloadedDrmFileSize":Ljava/io/File;
    .end local v1    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v2    # "drmInfoRequest_convert":Landroid/drm/DrmInfoRequest;
    .end local v5    # "file2":Ljava/io/File;
    .end local v6    # "pathname_dest":Ljava/lang/Object;
    .end local v8    # "status_req1":Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v10, 0x8

    const-string v11, "application/vnd.oma.drm.content"

    invoke-direct {v3, v10, v11}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1576
    .local v3, "drmInfoRequest_register":Landroid/drm/DrmInfoRequest;
    const-string v10, "drm_path"

    invoke-virtual {v3, v10, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1577
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v10}, Landroid/media/MediaScanner;->access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 1578
    .restart local v1    # "drmInfo":Landroid/drm/DrmInfo;
    const-string v10, "status"

    invoke-virtual {v1, v10}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1580
    .local v9, "status_req2":Ljava/lang/String;
    const-string v10, "success"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1590
    :goto_2
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v10}, Landroid/media/MediaScanner;->access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1591
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 1592
    iget-object v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v10}, Landroid/media/MediaScanner;->access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1593
    .local v4, "drmMimetype":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1594
    iput-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1595
    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 1553
    .end local v3    # "drmInfoRequest_register":Landroid/drm/DrmInfoRequest;
    .end local v4    # "drmMimetype":Ljava/lang/String;
    .end local v9    # "status_req2":Ljava/lang/String;
    .restart local v0    # "downloadedDrmFileSize":Ljava/io/File;
    .restart local v2    # "drmInfoRequest_convert":Landroid/drm/DrmInfoRequest;
    .restart local v8    # "status_req1":Ljava/lang/String;
    :cond_6
    const-string v10, "MediaScanner"

    const-string v11, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo Fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1571
    .restart local v6    # "pathname_dest":Ljava/lang/Object;
    :cond_7
    const-string v10, "MediaScanner"

    const-string v11, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo_convert no file path"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1585
    .end local v0    # "downloadedDrmFileSize":Ljava/io/File;
    .end local v2    # "drmInfoRequest_convert":Landroid/drm/DrmInfoRequest;
    .end local v6    # "pathname_dest":Ljava/lang/Object;
    .end local v8    # "status_req1":Ljava/lang/String;
    .restart local v3    # "drmInfoRequest_register":Landroid/drm/DrmInfoRequest;
    .restart local v9    # "status_req2":Ljava/lang/String;
    :cond_8
    const-string v10, "MediaScanner"

    const-string v11, "Mediascanner::getFileTypeFromDrm ::acquireDrmInfo_register Fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 864
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 865
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    .line 878
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 867
    .restart local p3    # "defaultValue":I
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 869
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    goto :goto_0

    .line 871
    .end local p2    # "start":I
    .restart local v3    # "start":I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 872
    .local v2, "result":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 873
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 874
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 875
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    move p3, v2

    .line 878
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1032
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1033
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1035
    const-string v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 1044
    :goto_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1045
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1046
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 1050
    :goto_1
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 1492
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$4200(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1500
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 961
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 962
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 963
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 964
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 965
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 966
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 967
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 968
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 969
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 970
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 971
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 972
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 973
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 974
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    .line 1071
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1073
    .local v0, "map":Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v2, "title"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v2, "date_modified"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1076
    const-string v2, "_size"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1077
    const-string v2, "mime_type"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1080
    const/4 v1, 0x0

    .line 1081
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 1082
    const-string/jumbo v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_3

    .line 1088
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1089
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    if-eqz v1, :cond_1

    .line 1095
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_1
    const-string/jumbo v2, "weather_ID"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    const-string v2, "city_ID"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1100
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    .line 1101
    const-string v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1102
    const-string v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1105
    :cond_2
    const-string v2, "is_360_video"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1132
    :cond_3
    :goto_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mSecretBoxIsMounted:Z
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mSecretBoxPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1133
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSecretBox:I

    .line 1135
    :cond_4
    const-string v2, "is_secretbox"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSecretBox:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    return-object v0

    .line 1089
    :cond_5
    const-string v2, "<unknown>"

    goto/16 :goto_0

    .line 1091
    :cond_6
    const-string v2, "<unknown>"

    goto/16 :goto_1

    .line 1106
    :cond_7
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1108
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1109
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_8

    .line 1118
    const-string/jumbo v2, "year"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    :cond_8
    const-string v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1121
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1122
    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
    const-string v2, "recordingtype"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    const-string v2, "bit_depth"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    const-string v2, "sampling_rate"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    .line 1127
    const-string v2, "latitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1128
    const-string v2, "longitude"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_2

    .line 1109
    :cond_9
    const-string v2, "<unknown>"

    goto/16 :goto_3

    .line 1111
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1113
    :cond_b
    const-string v2, "<unknown>"

    goto/16 :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    .line 641
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 642
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 643
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 644
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 646
    if-nez p7, :cond_4

    .line 647
    if-nez p8, :cond_0

    # invokes: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    const/16 p8, 0x1

    .line 650
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 653
    if-eqz p2, :cond_1

    .line 654
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 658
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 659
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 660
    .local v13, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    .line 661
    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 662
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 663
    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 668
    .end local v13    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 669
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 672
    :cond_3
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrmConverted:Z

    if-eqz v3, :cond_4

    .line 675
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 676
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 684
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 685
    .local v8, "beforeMakeEntryTime":J
    const/4 v2, 0x0

    .line 686
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->useHashMap:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v4, "audio/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v4, "audio/amr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 687
    move-object/from16 v12, p1

    .line 688
    .local v12, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 689
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 691
    :cond_5
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    .line 695
    .end local v12    # "key":Ljava/lang/String;
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_0
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    # += operator for: Landroid/media/MediaScanner;->mTotalMakeEntryTime:J
    invoke-static {v3, v4, v5}, Landroid/media/MediaScanner;->access$614(Landroid/media/MediaScanner;J)J

    .line 698
    if-eqz v2, :cond_a

    iget-wide v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v3

    .line 699
    .local v10, "delta":J
    :goto_1
    const-wide/16 v3, 0x1

    cmp-long v3, v10, v3

    if-gtz v3, :cond_6

    const-wide/16 v3, -0x1

    cmp-long v3, v10, v3

    if-gez v3, :cond_b

    :cond_6
    const/4 v14, 0x1

    .line 700
    .local v14, "wasModified":Z
    :goto_2
    if-eqz v2, :cond_7

    if-eqz v14, :cond_8

    .line 701
    :cond_7
    if-eqz v14, :cond_c

    .line 702
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 709
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 712
    :cond_8
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 713
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    const/4 v2, 0x0

    .line 746
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_4
    return-object v2

    .line 693
    .end local v10    # "delta":J
    .end local v14    # "wasModified":Z
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_9
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    goto :goto_0

    .line 698
    :cond_a
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 699
    .restart local v10    # "delta":J
    :cond_b
    const/4 v14, 0x0

    goto :goto_2

    .line 704
    .restart local v14    # "wasModified":Z
    :cond_c
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    .line 706
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz p7, :cond_d

    const/16 v3, 0x3001

    :goto_5
    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 719
    :cond_e
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 720
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 721
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 722
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 723
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 724
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 725
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 726
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 727
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 728
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 729
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 730
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 731
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 732
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 733
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 734
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 735
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 736
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 737
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    .line 738
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    .line 739
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    .line 740
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    .line 741
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    .line 742
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    .line 743
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    .line 744
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSecretBox:I

    goto :goto_4
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaInserter;->clear()V

    .line 765
    :cond_0
    return-void
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 29
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    .line 770
    const/16 v26, 0x0

    .local v26, "result":Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 773
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v4

    .line 779
    .local v4, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    iput-wide v0, v4, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 783
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrmConverted:Z

    if-eqz v3, :cond_1

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 787
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrmConverted:Z

    .line 788
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 792
    :cond_1
    if-eqz v4, :cond_3

    iget-boolean v3, v4, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_2

    if-eqz p8, :cond_3

    .line 793
    :cond_2
    if-eqz p9, :cond_4

    .line 794
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v26

    .line 860
    .end local v4    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_3
    :goto_0
    return-object v26

    .line 796
    .restart local v4    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_4
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 797
    .local v22, "lowpath":Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    const/4 v5, 0x1

    .line 798
    .local v5, "ringtones":Z
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v11, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "/download/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, ".dcf"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v6, 0x1

    .line 800
    .local v6, "dcfRingtones":Z
    :goto_2
    const-string v3, "/notifications/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_e

    const/4 v7, 0x1

    .line 801
    .local v7, "notifications":Z
    :goto_3
    const-string v3, "/alarms/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_f

    const/4 v8, 0x1

    .line 802
    .local v8, "alarms":Z
    :goto_4
    const-string v3, "/podcasts/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_10

    const/4 v10, 0x1

    .line 803
    .local v10, "podcasts":Z
    :goto_5
    const-string v3, "/music/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_5

    if-nez v5, :cond_11

    if-nez v7, :cond_11

    if-nez v8, :cond_11

    if-nez v10, :cond_11

    :cond_5
    const/4 v9, 0x1

    .line 806
    .local v9, "music":Z
    :goto_6
    const-wide/16 v12, 0x0

    .local v12, "beforeMetaParsingTime":J
    const-wide/16 v23, 0x0

    .line 807
    .local v23, "metaParsingTime":J
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v18

    .line 808
    .local v18, "isaudio":Z
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v20

    .line 809
    .local v20, "isvideo":Z
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v19

    .line 811
    .local v19, "isimage":Z
    if-nez v18, :cond_6

    if-nez v20, :cond_6

    if-eqz v19, :cond_7

    .line 812
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 816
    .local v14, "directPath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    .local v17, "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 818
    move-object/from16 p1, v14

    .line 824
    .end local v14    # "directPath":Ljava/lang/String;
    .end local v17    # "f":Ljava/io/File;
    :cond_7
    if-nez v18, :cond_8

    if-eqz v20, :cond_9

    .line 825
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    # invokes: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v23, v27, v12

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v23

    # += operator for: Landroid/media/MediaScanner;->mTotalParsingTime:J
    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1614(Landroid/media/MediaScanner;J)J

    .line 831
    :cond_9
    if-eqz v19, :cond_a

    .line 832
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x1f

    if-eq v3, v11, :cond_a

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 834
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v23, v27, v12

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v23

    # += operator for: Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J
    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1714(Landroid/media/MediaScanner;J)J

    .line 840
    :cond_a
    const-string v3, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    .line 841
    .local v21, "lastDot":I
    if-lez v21, :cond_b

    const-wide/16 v27, 0x0

    cmp-long v3, v12, v27

    if-eqz v3, :cond_b

    const-wide/16 v27, 0x0

    cmp-long v3, v23, v27

    if-eqz v3, :cond_b

    .line 842
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 843
    .local v16, "extention":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/MediaScanner$FileParsingTime;

    .line 844
    .local v25, "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v25, :cond_12

    .line 845
    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 846
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v16    # "extention":Ljava/lang/String;
    .end local v25    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :cond_b
    :goto_7
    move-object/from16 v3, p0

    .line 852
    invoke-direct/range {v3 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v26

    goto/16 :goto_0

    .line 797
    .end local v5    # "ringtones":Z
    .end local v6    # "dcfRingtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v12    # "beforeMetaParsingTime":J
    .end local v18    # "isaudio":Z
    .end local v19    # "isimage":Z
    .end local v20    # "isvideo":Z
    .end local v21    # "lastDot":I
    .end local v23    # "metaParsingTime":J
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 798
    .restart local v5    # "ringtones":Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 800
    .restart local v6    # "dcfRingtones":Z
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 801
    .restart local v7    # "notifications":Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 802
    .restart local v8    # "alarms":Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 803
    .restart local v10    # "podcasts":Z
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 848
    .restart local v9    # "music":Z
    .restart local v12    # "beforeMetaParsingTime":J
    .restart local v16    # "extention":Ljava/lang/String;
    .restart local v18    # "isaudio":Z
    .restart local v19    # "isimage":Z
    .restart local v20    # "isvideo":Z
    .restart local v21    # "lastDot":I
    .restart local v23    # "metaParsingTime":J
    .restart local v25    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v11, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-direct {v11, v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 855
    .end local v4    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v5    # "ringtones":Z
    .end local v6    # "dcfRingtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v12    # "beforeMetaParsingTime":J
    .end local v16    # "extention":Ljava/lang/String;
    .end local v18    # "isaudio":Z
    .end local v19    # "isimage":Z
    .end local v20    # "isvideo":Z
    .end local v21    # "lastDot":I
    .end local v22    # "lowpath":Ljava/lang/String;
    .end local v23    # "metaParsingTime":J
    .end local v25    # "parsingTime":Landroid/media/MediaScanner$FileParsingTime;
    :catch_0
    move-exception v15

    .line 856
    .local v15, "e":Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v11, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 978
    if-nez p1, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-object v7

    .line 981
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 983
    .local v4, "length":I
    if-lez v4, :cond_9

    .line 984
    const/4 v6, 0x0

    .line 985
    .local v6, "parenthesized":Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 986
    .local v5, "number":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 987
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 988
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 989
    .local v0, "c":C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 990
    const/4 v6, 0x1

    .line 987
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 991
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 992
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 997
    .end local v0    # "c":C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 998
    .local v1, "charAfterNumber":C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1001
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 1002
    .local v2, "genreIndex":S
    if-ltz v2, :cond_9

    .line 1003
    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$2000()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$2000()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_7

    .line 1004
    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$2000()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 997
    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 1005
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 1007
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 1010
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 1011
    add-int/lit8 v3, v3, 0x1

    .line 1013
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1014
    .local v7, "ret":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    .end local v3    # "i":I
    .end local v5    # "number":Ljava/lang/StringBuffer;
    .end local v6    # "parenthesized":Z
    .end local v7    # "ret":Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 1027
    goto :goto_0

    .line 1019
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    .restart local v3    # "i":I
    .restart local v5    # "number":Ljava/lang/StringBuffer;
    .restart local v6    # "parenthesized":Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 1022
    .end local v2    # "genreIndex":S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 882
    const-string v4, "title"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "title;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 886
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 948
    :cond_1
    :goto_0
    return-void

    .line 887
    :cond_2
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "artist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 888
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 889
    :cond_4
    const-string v4, "albumartist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "albumartist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "band"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "band;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 891
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 892
    :cond_6
    const-string v4, "album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "album;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 893
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 894
    :cond_8
    const-string v4, "composer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "composer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 895
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 896
    :cond_a
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "genre"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "genre;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 898
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 899
    :cond_c
    const-string/jumbo v4, "year"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "year;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 900
    :cond_d
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 901
    :cond_e
    const-string v4, "tracknumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "tracknumber;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 904
    :cond_f
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 905
    .local v1, "num":I
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 906
    .end local v1    # "num":I
    :cond_10
    const-string v4, "discnumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "set"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "set;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 910
    :cond_11
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 911
    .restart local v1    # "num":I
    mul-int/lit16 v2, v1, 0x3e8

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 912
    .end local v1    # "num":I
    :cond_12
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 913
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 914
    :cond_13
    const-string/jumbo v4, "writer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "writer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 915
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 916
    :cond_15
    const-string v4, "compilation"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 917
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 918
    :cond_16
    const-string v4, "isdrm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 919
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_17

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v2, v3

    goto :goto_1

    .line 920
    :cond_18
    const-string/jumbo v4, "width"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 921
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 922
    :cond_19
    const-string v4, "height"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 923
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    .line 924
    :cond_1a
    const-string v4, "recordingtype"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 925
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_0

    .line 926
    :cond_1b
    const-string/jumbo v4, "weather"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 927
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    goto/16 :goto_0

    .line 928
    :cond_1c
    const-string v4, "cityid"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 929
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    goto/16 :goto_0

    .line 930
    :cond_1d
    const-string v4, "location"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 931
    const/16 v2, 0x2d

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 932
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    .line 933
    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 935
    :cond_1e
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 936
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    .line 937
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    .line 938
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    goto/16 :goto_0

    .line 939
    .end local v0    # "index":I
    :cond_1f
    const-string v3, "samplingrate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 940
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    goto/16 :goto_0

    .line 941
    :cond_20
    const-string v3, "bitspersample"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 942
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    goto/16 :goto_0

    .line 943
    :cond_21
    const-string v3, "is360video"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 944
    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 754
    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mTotalCheckedDirectories:J
    invoke-static {v0}, Landroid/media/MediaScanner;->access$908(Landroid/media/MediaScanner;)J

    .line 757
    :goto_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 758
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mTotalCheckedFiles:J
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1008(Landroid/media/MediaScanner;)J

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1053
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 1060
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1061
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
