.class public Landroid/mtp/MTPJNIInterface;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MTPJNIInterface$MusicPlaylist;
    }
.end annotation


# static fields
.field static final CONNECTED:I = 0x3

.field static final DOWNLOADING:I = 0x4

.field private static final GETTHUMBNAILTIME:I = 0xe4e1c0

.field private static final MICRO_HEIGH:I = 0x100

.field private static final MICRO_WIDTH:I = 0x100

.field private static final MTP_DEBUG_LEVEL:Ljava/lang/String; = "0x4948"

.field private static final MTP_MSGID_DEVICE_LOG:I = 0x5

.field private static final MTP_MSGID_SIDESYNC_START:I = 0x7

.field static RegisterBroadcast:Z = false

.field static RegisterBroadcast1:Z = false

.field static final SENDING:I = 0x5

.field static final STORAGE_INFO_EVENT:I = 0x1a

.field static final SYNCHRONIZING:I = 0xa

.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"

.field static final USB_REMOVED:I = 0x13

.field static final USB_TETHERING_ENABLED:I = 0xe

.field static cr:Landroid/content/ContentResolver;

.field public static gadgetResetStatus:I

.field private static isMtpLogOn:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mcontext:Landroid/content/Context;

.field private static mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

.field public static objectEventReceived:Z

.field private static scannerStatus:I


# instance fields
.field private DeviceName:Ljava/lang/String;

.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private composer:Ljava/lang/String;

.field private creationDate:Ljava/lang/String;

.field private dateTaken:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private displayname:Ljava/lang/String;

.field private duration:J

.field private filename:Ljava/lang/String;

.field private genreName:Ljava/lang/String;

.field private height:J

.field private id:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private final mMtpReceiver:Landroid/content/BroadcastReceiver;

.field private final mMtpReceiver1:Landroid/content/BroadcastReceiver;

.field private mimeType:Ljava/lang/String;

.field private modificationDate:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private width:J

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    sput v4, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    .line 105
    sput-boolean v4, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    .line 106
    sput-boolean v4, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    .line 108
    sput v4, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    .line 114
    sput-boolean v4, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    .line 115
    sput-boolean v4, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    .line 156
    new-instance v2, Landroid/mtp/MTPJNIInterface;

    invoke-direct {v2}, Landroid/mtp/MTPJNIInterface;-><init>()V

    sput-object v2, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

    .line 183
    const-string v2, "ro.debug_level"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "debugLevel":Ljava/lang/String;
    const-string v2, "0x4948"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const/4 v2, 0x1

    sput-boolean v2, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    .line 192
    :goto_0
    :try_start_0
    const-string v2, "mtp_samsung_jni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    return-void

    .line 188
    :cond_0
    sput-boolean v4, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "MTPJNIInterface"

    const-string v3, "WARNING: Could not load libmtp__samsung_jni.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    .line 76
    iput-wide v1, p0, Landroid/mtp/MTPJNIInterface;->duration:J

    .line 77
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MTPJNIInterface;->year:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    .line 89
    iput-wide v1, p0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 90
    iput-wide v1, p0, Landroid/mtp/MTPJNIInterface;->height:J

    .line 91
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    .line 233
    new-instance v0, Landroid/mtp/MTPJNIInterface$1;

    invoke-direct {v0, p0}, Landroid/mtp/MTPJNIInterface$1;-><init>(Landroid/mtp/MTPJNIInterface;)V

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    new-instance v0, Landroid/mtp/MTPJNIInterface$2;

    invoke-direct {v0, p0}, Landroid/mtp/MTPJNIInterface$2;-><init>(Landroid/mtp/MTPJNIInterface;)V

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    .line 159
    return-void
.end method

.method private DoShellCmd(Ljava/lang/String;)I
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 1573
    const-string v6, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DoShellCmd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v2, 0x0

    .line 1575
    .local v2, "p":Ljava/lang/Process;
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/sh"

    aput-object v7, v3, v6

    const-string v6, "-c"

    aput-object v6, v3, v4

    const/4 v6, 0x2

    aput-object p1, v3, v6

    .line 1579
    .local v3, "shell_command":[Ljava/lang/String;
    :try_start_0
    const-string v6, "MTPJNIInterface"

    const-string v7, "exec command"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1581
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1582
    const-string v6, "MTPJNIInterface"

    const-string v7, "exec done"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1593
    const-string v5, "MTPJNIInterface"

    const-string v6, "DoShellCmd done"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :goto_0
    return v4

    .line 1583
    :catch_0
    move-exception v1

    .line 1584
    .local v1, "exception":Ljava/io/IOException;
    const-string v4, "MTPJNIInterface"

    const-string v6, "DoShellCmd - IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1585
    goto :goto_0

    .line 1586
    .end local v1    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1587
    .local v1, "exception":Ljava/lang/SecurityException;
    const-string v4, "MTPJNIInterface"

    const-string v6, "DoShellCmd - SecurityException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1588
    goto :goto_0

    .line 1589
    .end local v1    # "exception":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v4, v5

    .line 1591
    goto :goto_0
.end method

.method public static MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1643
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    if-eqz v0, :cond_0

    .line 1644
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/mtp/MTPJNIInterface;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MTPJNIInterface;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->getTimeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MTPJNIInterface;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->DoShellCmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native alertNotiHandler(I)V
.end method

.method private computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "target"    # I

    .prologue
    const/4 v5, 0x1

    .line 940
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 941
    .local v4, "w":I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 943
    .local v3, "h":I
    div-int v2, v4, p2

    .line 944
    .local v2, "candidateW":I
    div-int v1, v3, p2

    .line 946
    .local v1, "candidateH":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 948
    .local v0, "candidate":I
    if-nez v0, :cond_0

    .line 960
    :goto_0
    return v5

    .line 951
    :cond_0
    if-le v0, v5, :cond_1

    .line 952
    if-le v4, p2, :cond_1

    div-int v6, v4, v0

    if-ge v6, p2, :cond_1

    .line 953
    add-int/lit8 v0, v0, -0x1

    .line 956
    :cond_1
    if-le v0, v5, :cond_2

    .line 957
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 958
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 960
    goto :goto_0
.end method

.method private native enumerateMtp(II)V
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "degree":I
    const/4 v1, 0x0

    .line 912
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 916
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 917
    const-string v4, "Orientation"

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 918
    .local v3, "orientation":I
    if-eq v3, v5, :cond_0

    .line 920
    packed-switch v3, :pswitch_data_0

    .line 935
    .end local v3    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 922
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 923
    goto :goto_1

    .line 925
    :pswitch_2
    const/16 v0, 0xb4

    .line 926
    goto :goto_1

    .line 928
    :pswitch_3
    const/16 v0, 0x10e

    .line 929
    goto :goto_1

    .line 913
    .end local v3    # "orientation":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 920
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

.method private getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 995
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 996
    .local v1, "m":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 997
    .local v2, "tempB":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1000
    .local v6, "b":Landroid/graphics/Bitmap;
    const/16 v0, 0x400

    :try_start_0
    invoke-direct {p0, v0, p1}, Landroid/mtp/MTPJNIInterface;->getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1001
    const/16 v3, 0x100

    const/16 v4, 0x100

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1002
    if-eqz v2, :cond_0

    .line 1003
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :cond_0
    :goto_0
    return-object v6

    .line 1004
    :catch_0
    move-exception v7

    .line 1005
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 1006
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1007
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Landroid/mtp/MTPJNIInterface;
    .locals 2

    .prologue
    .line 162
    const-class v0, Landroid/mtp/MTPJNIInterface;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "targetWidthHeight"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 887
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 890
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 891
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 893
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 895
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 896
    invoke-direct {p0, v2, p1}, Landroid/mtp/MTPJNIInterface;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 898
    :cond_0
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, "degree":I
    invoke-direct {p0, p2}, Landroid/mtp/MTPJNIInterface;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 903
    if-eqz v1, :cond_1

    .line 904
    invoke-direct {p0, v0, v1}, Landroid/mtp/MTPJNIInterface;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 906
    :cond_1
    return-object v0
.end method

.method private getTimeToString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1561
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1562
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "0000"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 1563
    .local v6, "year":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 1564
    .local v4, "month":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1565
    .local v1, "day":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 1566
    .local v2, "hour":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 1567
    .local v3, "min":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1569
    .local v5, "timeFormat":Ljava/lang/String;
    return-object v5
.end method

.method private getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x43800000    # 256.0f

    .line 1014
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1015
    .local v7, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .line 1019
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v7, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1022
    const/16 v0, 0x100

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v7, v0, v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 1023
    const-wide/32 v3, 0xe4e1c0

    invoke-virtual {v7, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1025
    const/4 v8, 0x0

    .line 1026
    .local v8, "scale":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1027
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v9, v0

    .line 1032
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1033
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1034
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1035
    const/16 v3, 0x100

    const/16 v4, 0x100

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1042
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "scale":F
    :goto_1
    return-object v0

    .line 1029
    .restart local v8    # "scale":F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    div-float v8, v9, v0

    goto :goto_0

    .line 1036
    .end local v8    # "scale":F
    :catch_0
    move-exception v6

    .line 1037
    .local v6, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1040
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    move-object v0, v2

    .line 1042
    goto :goto_1
.end method

.method private native objectAdded(Ljava/lang/String;)V
.end method

.method private native objectPlaAdded(Ljava/lang/String;)V
.end method

.method private native objectPlaRemoved(Ljava/lang/String;)V
.end method

.method private native objectPropChanged(Ljava/lang/String;)V
.end method

.method private native objectRemoved(Ljava/lang/String;)V
.end method

.method private registerBroadCastRec()V
    .locals 3

    .prologue
    .line 214
    const-string v1, "MTPJNIInterface"

    const-string v2, "< MTP > Registering BroadCast receiver :::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, "lIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.MTP.OBJECT_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "com.android.MTP.OBJECT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    const/4 v1, 0x1

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    .line 223
    return-void
.end method

.method private registerBroadCastRec1()V
    .locals 3

    .prologue
    .line 225
    const-string v1, "MTPJNIInterface"

    const-string v2, "< MTP > Registering BroadCast receiver :::::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "lIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 229
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const/4 v1, 0x1

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    .line 231
    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 870
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 871
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 872
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 874
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 875
    .local v7, "b2":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    move-object p1, v7

    .line 884
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 879
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 881
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private native setCryptionKey(Ljava/lang/String;)V
.end method

.method private native testMtpCommands(II)V
.end method

.method private transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "scaler"    # Landroid/graphics/Matrix;
    .param p2, "source"    # Landroid/graphics/Bitmap;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .param p5, "scaleUp"    # Z

    .prologue
    .line 965
    if-nez p2, :cond_1

    .line 966
    const/4 v10, 0x0

    .line 992
    :cond_0
    :goto_0
    return-object v10

    .line 969
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 970
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 976
    .local v13, "scale":F
    :goto_1
    if-eqz p1, :cond_3

    .line 977
    invoke-virtual {p1, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 979
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 984
    .local v9, "b1":Landroid/graphics/Bitmap;
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 985
    .local v11, "dx1":I
    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 987
    .local v12, "dy1":I
    div-int/lit8 v2, v11, 0x2

    div-int/lit8 v3, v12, 0x2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v9, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 989
    .local v10, "b2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 972
    .end local v9    # "b1":Landroid/graphics/Bitmap;
    .end local v10    # "b2":Landroid/graphics/Bitmap;
    .end local v11    # "dx1":I
    .end local v12    # "dy1":I
    .end local v13    # "scale":F
    :cond_2
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .restart local v13    # "scale":F
    goto :goto_1

    .line 981
    :cond_3
    move-object/from16 v9, p2

    .restart local v9    # "b1":Landroid/graphics/Bitmap;
    goto :goto_2
.end method


# virtual methods
.method public GetBatteryLevel()I
    .locals 2

    .prologue
    .line 417
    const-string v0, "MTPJNIInterface"

    const-string v1, "Getting battery Level from JAVA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v0, 0xa

    return v0
.end method

.method public GetMediaObject(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1390
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1391
    .local v8, "audioURI":Landroid/net/Uri;
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1392
    .local v13, "videoURI":Landroid/net/Uri;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1393
    .local v1, "imageURI":Landroid/net/Uri;
    move-object v12, p1

    .line 1396
    .local v12, "path":Ljava/lang/String;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data =\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1397
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1398
    const-string v0, "MTPJNIInterface"

    const-string v2, "cursor is null for image"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v10, 0x0

    .line 1429
    :goto_0
    return-object v10

    .line 1401
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1402
    .local v11, "objectCount":I
    if-nez v11, :cond_3

    .line 1403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1404
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data =\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1405
    if-nez v9, :cond_1

    .line 1406
    const-string v0, "MTPJNIInterface"

    const-string v2, "cursor is null for audio "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const/4 v10, 0x0

    goto :goto_0

    .line 1409
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1410
    if-nez v11, :cond_3

    .line 1411
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1412
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data =\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v13

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1413
    if-nez v9, :cond_2

    .line 1414
    const-string v0, "MTPJNIInterface"

    const-string v2, "cursor is null for video "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v10, 0x0

    goto :goto_0

    .line 1417
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1418
    if-nez v11, :cond_3

    .line 1419
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1420
    const-string v0, "MTPJNIInterface"

    const-string v2, "objectCount is zero "

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1426
    :cond_3
    new-array v10, v11, [Landroid/mtp/MediaObject;

    .line 1427
    .local v10, "objectArray":[Landroid/mtp/MediaObject;
    invoke-virtual {p0, v9, v10}, Landroid/mtp/MTPJNIInterface;->getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V

    .line 1428
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public SetCryptionKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string v0, "MTPJNIInterface"

    const-string v1, "Getting CryptionKey from JAVA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->setCryptionKey(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public UpdateMediaDB(Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filename got from JNI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object v0, p1

    .line 427
    .local v0, "contentName":Ljava/lang/String;
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "file":Ljava/io/File;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method public addPlaylist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 20
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "playlistPath"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string v11, "4"

    .line 474
    .local v11, "MEDIA_TYPE_PLAYLIST":Ljava/lang/String;
    const-string v10, "47621"

    .line 475
    .local v10, "FORMAT_ABSTRACT_AUDIO_PLAYLIST":Ljava/lang/String;
    const/4 v15, 0x0

    .line 476
    .local v15, "noOfRowsUpdated":I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playlistname :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playlist path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v3, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 483
    .local v3, "playlistUri":Landroid/net/Uri;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 485
    .local v16, "playlistFileUri":Landroid/net/Uri;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 486
    .local v18, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v2, "_data"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 490
    .local v19, "valuesFile":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v2, "media_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v2, "format"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 497
    .local v13, "cur":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 498
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v17, -0x1

    .line 534
    :goto_0
    return v17

    .line 501
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 502
    .local v12, "count":I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/16 v17, 0x0

    .line 505
    .local v17, "rowID":I
    const/4 v14, 0x0

    .line 506
    .local v14, "newUri":Landroid/net/Uri;
    if-nez v12, :cond_4

    .line 507
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 508
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 509
    if-nez v14, :cond_1

    .line 510
    const-string v2, "MTPJNIInterface"

    const-string v4, "Insertion failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_1
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The New URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v14}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 514
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v16

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 515
    if-nez v13, :cond_2

    .line 516
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 518
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 519
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-lez v12, :cond_3

    .line 521
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 522
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "noOfRowsUpdated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 529
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 530
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 531
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public addtoPlaylist(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 26
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "order"    # I

    .prologue
    .line 636
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlistname :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filename: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object v3, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 645
    .local v3, "playlistUri":Landroid/net/Uri;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 646
    .local v25, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 648
    .local v19, "cur":Landroid/database/Cursor;
    if-nez v19, :cond_0

    .line 649
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v2, -0x1

    .line 803
    :goto_0
    return v2

    .line 652
    :cond_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 653
    .local v17, "count":I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v24, 0x0

    .line 656
    .local v24, "rowID":I
    const/16 v22, 0x0

    .line 657
    .local v22, "newUri":Landroid/net/Uri;
    if-nez v17, :cond_1

    .line 658
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 659
    const/4 v2, -0x1

    goto :goto_0

    .line 661
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 662
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 663
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 675
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist rowID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .local v14, "audioMAPValues":Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 678
    .local v5, "audioUri":Landroid/net/Uri;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI for the audio DB is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 680
    .local v16, "c1":Landroid/database/Cursor;
    if-nez v16, :cond_2

    .line 681
    const-string v2, "MTPJNIInterface"

    const-string v4, "c1 Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 683
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 685
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 686
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data from the audio count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    if-nez v17, :cond_4

    .line 692
    new-instance v25, Landroid/content/ContentValues;

    .end local v25    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 693
    .restart local v25    # "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v2, "is_music"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string v2, "is_ringtone"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    const-string v2, "is_alarm"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v2, "is_notification"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 699
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The audio URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 701
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 702
    const-string v2, "date_modified"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    if-nez v22, :cond_3

    .line 704
    const-string v2, "MTPJNIInterface"

    const-string v4, "Insertion failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 706
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 707
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 709
    :cond_3
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The New URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    :cond_4
    if-nez v17, :cond_6

    .line 718
    new-instance v14, Landroid/content/ContentValues;

    .end local v14    # "audioMAPValues":Landroid/content/ContentValues;
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 719
    .restart local v14    # "audioMAPValues":Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 720
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI for the audio DB is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 722
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 723
    if-nez v16, :cond_5

    .line 724
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 726
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 728
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 729
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data from the audio count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_6
    const/4 v13, 0x0

    .line 732
    .local v13, "audioID":I
    const/4 v12, 0x1

    .line 733
    .local v12, "add_in_playlist":Z
    if-lez v17, :cond_9

    .line 734
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 735
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 736
    const-string v2, "external"

    move/from16 v0, v24

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    .line 740
    .local v7, "playlistMemberUri":Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 742
    .local v20, "cur2":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 743
    .local v18, "count2":I
    if-nez v20, :cond_7

    .line 744
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cursor cur2 is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 746
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 748
    :cond_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 750
    if-eqz v18, :cond_8

    .line 751
    const/4 v12, 0x0

    .line 752
    :cond_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 756
    .end local v7    # "playlistMemberUri":Landroid/net/Uri;
    .end local v18    # "count2":I
    .end local v20    # "cur2":Landroid/database/Cursor;
    :cond_9
    const/4 v15, 0x0

    .line 759
    .local v15, "audio_HashCode":I
    if-lez v17, :cond_b

    .line 760
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 761
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 763
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Row ID for audio file"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 767
    const-string v2, "audio_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    const-string v2, "play_order"

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist ID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v2, "playlist_id"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    if-eqz v12, :cond_a

    .line 785
    :try_start_0
    const-string v2, "external"

    move/from16 v0, v24

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v23

    .line 788
    .local v23, "playlist_map":Landroid/net/Uri;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio map URI"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 790
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The New URI for the audio map"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v23    # "playlist_map":Landroid/net/Uri;
    :cond_a
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 791
    :catch_0
    move-exception v21

    .line 792
    .local v21, "e":Ljava/lang/Exception;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 800
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 801
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public deleteAllItemofPlaylist(Ljava/lang/String;)V
    .locals 11
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1331
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlistName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1334
    .local v1, "playlistUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1336
    .local v8, "noOfSongs":I
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1337
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1338
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1342
    .local v6, "count":I
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v10, 0x0

    .line 1345
    .local v10, "rowID":I
    if-nez v6, :cond_1

    .line 1346
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1347
    const-string v0, "MTPJNIInterface"

    const-string v2, "playlist is not present"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1351
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1352
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1353
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1355
    const-string v0, "external"

    int-to-long v3, v10

    invoke-static {v0, v3, v4}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 1356
    .local v9, "playlist_map":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1357
    const-string v0, "MTPJNIInterface"

    const-string v2, "No of songs of playlistName deleted"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No of songs of playlistName deleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deletePlaylist(Ljava/lang/String;)I
    .locals 5
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string v2, "MTPJNIInterface"

    const-string v3, "Playlist to be deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlist to be deleted  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v0, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 458
    .local v0, "playlistUri":Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 459
    .local v1, "ret":I
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-nez v1, :cond_0

    .line 461
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deletion unsuccessful"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 463
    :cond_0
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deletion successful"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deletefromMediaPlayer(Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 839
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 840
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 841
    .local v0, "ret":I
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted for Audio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 851
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 852
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 855
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 856
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 860
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 861
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 864
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 865
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method public getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V
    .locals 54
    .param p1, "cur"    # Landroid/database/Cursor;
    .param p2, "objectArray"    # [Landroid/mtp/MediaObject;

    .prologue
    .line 1439
    const/16 v44, 0x0

    .line 1440
    .local v44, "index":I
    const/4 v15, 0x3

    .line 1441
    .local v15, "mimeTypeEnum":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1443
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 1444
    .local v52, "titleColumn":I
    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 1445
    .local v32, "dataColumn":I
    const-string v2, "_display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 1446
    .local v42, "filenameColumn":I
    const-string v2, "_size"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 1447
    .local v51, "sizeColumn":I
    const-string v2, "mime_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 1448
    .local v48, "mimeColumn":I
    const-string v2, "date_added"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 1449
    .local v33, "dateCreatedColumn":I
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1450
    .local v34, "dateModifiedColumn":I
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .line 1451
    .local v43, "idColumn":I
    const-string v2, "_display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 1452
    .local v38, "displayColumn":I
    const-string v2, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 1453
    .local v39, "durationColumn_audio":I
    const-string v2, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 1455
    .local v27, "albumColumn_audio":I
    const-string v2, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1456
    .local v29, "artistColumn_audio":I
    const-string v2, "composer"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1457
    .local v31, "composerColumn_audio":I
    const-string/jumbo v2, "year"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v53

    .line 1459
    .local v53, "yearColumn_audio":I
    const-string v2, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 1460
    .local v40, "durationColumn_video":I
    const-string v2, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1461
    .local v28, "albumColumn_video":I
    const-string v2, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 1462
    .local v37, "descriptionColumn_video":I
    const-string v2, "latitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 1463
    .local v46, "latitudeColumn_video":I
    const-string v2, "longitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .line 1464
    .local v47, "longitudeCoulmn_video":I
    const-string v2, "language"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 1465
    .local v45, "languageColumn_video":I
    const-string v2, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1466
    .local v30, "artistColumn_video":I
    const-string v2, "datetaken"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 1467
    .local v36, "dateTakenColumn_video":I
    const-string v2, "datetaken"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 1468
    .local v35, "dateTakenColumn_image":I
    const-string v2, "resolution"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 1473
    .local v49, "resolustion_video":I
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    .line 1475
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    .line 1477
    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    .line 1479
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    .line 1481
    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    .line 1483
    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    .line 1485
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    .line 1487
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1491
    const/4 v15, 0x2

    .line 1492
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    .line 1494
    const-string/jumbo v2, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 1496
    const-string v2, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J

    .line 1549
    :cond_0
    :goto_0
    new-instance v2, Landroid/mtp/MediaObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/mtp/MTPJNIInterface;->duration:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/mtp/MTPJNIInterface;->year:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/mtp/MTPJNIInterface;->width:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/mtp/MTPJNIInterface;->height:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v2 .. v26}, Landroid/mtp/MediaObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    aput-object v2, p2, v44

    .line 1550
    add-int/lit8 v44, v44, 0x1

    .line 1558
    .end local v27    # "albumColumn_audio":I
    .end local v28    # "albumColumn_video":I
    .end local v29    # "artistColumn_audio":I
    .end local v30    # "artistColumn_video":I
    .end local v31    # "composerColumn_audio":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateCreatedColumn":I
    .end local v34    # "dateModifiedColumn":I
    .end local v35    # "dateTakenColumn_image":I
    .end local v36    # "dateTakenColumn_video":I
    .end local v37    # "descriptionColumn_video":I
    .end local v38    # "displayColumn":I
    .end local v39    # "durationColumn_audio":I
    .end local v40    # "durationColumn_video":I
    .end local v42    # "filenameColumn":I
    .end local v43    # "idColumn":I
    .end local v45    # "languageColumn_video":I
    .end local v46    # "latitudeColumn_video":I
    .end local v47    # "longitudeCoulmn_video":I
    .end local v48    # "mimeColumn":I
    .end local v49    # "resolustion_video":I
    .end local v51    # "sizeColumn":I
    .end local v52    # "titleColumn":I
    .end local v53    # "yearColumn_audio":I
    :cond_1
    :goto_1
    return-void

    .line 1498
    .restart local v27    # "albumColumn_audio":I
    .restart local v28    # "albumColumn_video":I
    .restart local v29    # "artistColumn_audio":I
    .restart local v30    # "artistColumn_video":I
    .restart local v31    # "composerColumn_audio":I
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateCreatedColumn":I
    .restart local v34    # "dateModifiedColumn":I
    .restart local v35    # "dateTakenColumn_image":I
    .restart local v36    # "dateTakenColumn_video":I
    .restart local v37    # "descriptionColumn_video":I
    .restart local v38    # "displayColumn":I
    .restart local v39    # "durationColumn_audio":I
    .restart local v40    # "durationColumn_video":I
    .restart local v42    # "filenameColumn":I
    .restart local v43    # "idColumn":I
    .restart local v45    # "languageColumn_video":I
    .restart local v46    # "latitudeColumn_video":I
    .restart local v47    # "longitudeCoulmn_video":I
    .restart local v48    # "mimeColumn":I
    .restart local v49    # "resolustion_video":I
    .restart local v51    # "sizeColumn":I
    .restart local v52    # "titleColumn":I
    .restart local v53    # "yearColumn_audio":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1499
    const/4 v15, 0x0

    .line 1500
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    .line 1504
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 1506
    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->duration:J

    .line 1508
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 1510
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    .line 1512
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/mtp/MTPJNIInterface;->year:I

    .line 1514
    const-string v2, "genre_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1551
    :catch_0
    move-exception v41

    .line 1552
    .local v41, "e":Ljava/lang/Exception;
    const-string v2, "MTPJNIInterface"

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1517
    .end local v41    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    const/4 v15, 0x1

    .line 1519
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    .line 1521
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 1523
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->duration:J

    .line 1525
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 1527
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    .line 1529
    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    .line 1531
    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    .line 1533
    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    .line 1535
    const-string/jumbo v2, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 1537
    const-string v2, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J

    .line 1539
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1543
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v50

    .line 1544
    .local v50, "sRes":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v50, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 1545
    const/4 v2, 0x1

    aget-object v2, v50, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getExternalStorageStatus(Ljava/lang/String;)I
    .locals 7
    .param p1, "mountPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, "status":Ljava/lang/String;
    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 586
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz p1, :cond_0

    .line 588
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 595
    :cond_0
    if-eqz v1, :cond_1

    .line 596
    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status for mount/Unmount :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v4, "mounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 598
    const-string v4, "MTPJNIInterface"

    const-string v5, "SDcard is not available"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    :goto_0
    return v3

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 591
    const-string v4, "MTPJNIInterface"

    const-string v5, "Exception is coming while getting the Mount status"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "MTPJNIInterface"

    const-string v4, "SDcard is  available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getGadgetResetStatus(I)I
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 382
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting gadget reset status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget v0, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    return v0
.end method

.method public getMediaScannerStatus(I)I
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 377
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget v0, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    return v0
.end method

.method public getMtpEnumerate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 387
    const-string v0, "MTPJNIInterface"

    const-string v1, "MTP in GetEnumerateMtp"

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, v2, v2}, Landroid/mtp/MTPJNIInterface;->enumerateMtp(II)V

    .line 389
    return-void
.end method

.method public getObjectHandle(Ljava/lang/String;I)I
    .locals 15
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1149
    const-string v7, "media"

    .line 1150
    .local v7, "AUTHORITY":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1151
    .local v8, "CONTENT_AUTHORITY_SLASH":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "external"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1152
    .local v2, "FileUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 1153
    .local v10, "cur":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 1154
    .local v13, "objectHandle":I
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 1158
    :try_start_0
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1162
    :goto_0
    if-nez v10, :cond_0

    .line 1163
    const-string v1, "MTPJNIInterface"

    const-string v3, "Cur is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v1, -0x1

    .line 1196
    :goto_1
    return v1

    .line 1159
    :catch_0
    move-exception v11

    .line 1160
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "MTPJNIInterface"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1166
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1168
    .local v9, "count":I
    if-nez v9, :cond_1

    .line 1169
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objectHandle Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1171
    const/4 v1, -0x1

    goto :goto_1

    .line 1173
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1174
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1177
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objectHandle is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .end local v9    # "count":I
    :cond_2
    :goto_2
    move v1, v13

    .line 1196
    goto :goto_1

    .line 1178
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 1179
    const/4 v12, 0x0

    .line 1180
    .local v12, "newUri":Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1181
    .local v14, "valuesFile":Landroid/content/ContentValues;
    const-string v1, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :try_start_1
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 1187
    :goto_3
    if-nez v12, :cond_4

    .line 1188
    const-string v1, "MTPJNIInterface"

    const-string v3, "Insertion failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 v1, -0x1

    goto :goto_1

    .line 1184
    :catch_1
    move-exception v11

    .line 1185
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "MTPJNIInterface"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1191
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The New URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    long-to-int v13, v3

    .line 1194
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objectHandle is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getPathFromObjecthandle(I)Ljava/lang/String;
    .locals 13
    .param p1, "objectHandle"    # I

    .prologue
    const/4 v12, 0x0

    .line 1363
    const-string v6, "media"

    .line 1364
    .local v6, "AUTHORITY":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1365
    .local v11, "filePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1366
    .local v9, "cur":Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1367
    .local v7, "CONTENT_AUTHORITY_SLASH":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "external"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1369
    .local v1, "FileUri":Landroid/net/Uri;
    :try_start_0
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1373
    :goto_0
    if-nez v9, :cond_0

    .line 1374
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 1387
    :goto_1
    return-object v0

    .line 1370
    :catch_0
    move-exception v10

    .line 1371
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "MTPJNIInterface"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1377
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1379
    .local v8, "count":I
    if-nez v8, :cond_1

    .line 1380
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "objectHandle Count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v11

    .line 1387
    goto :goto_1

    .line 1382
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1383
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1384
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " filePath is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getPlaylistId(Ljava/lang/String;)I
    .locals 9
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 813
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 816
    .local v1, "playlistUri":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 817
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 818
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v8, -0x1

    .line 833
    :goto_0
    return v8

    .line 821
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 822
    .local v6, "count":I
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v8, 0x0

    .line 825
    .local v8, "rowID":I
    if-nez v6, :cond_1

    .line 826
    const/4 v8, -0x1

    .line 831
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 832
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playlist ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 828
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 829
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_1
.end method

.method public getThumbnail(Ljava/lang/String;I)I
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1049
    const/4 v15, 0x0

    .line 1050
    .local v15, "thumbsize":I
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 1051
    :try_start_0
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inside getThumbnail for images for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1054
    .local v14, "thumb":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_2

    .line 1055
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1056
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x3c

    invoke-virtual {v14, v1, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1057
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1058
    .local v7, "bitmapdata":[B
    array-length v15, v7

    .line 1062
    new-instance v12, Ljava/io/FileOutputStream;

    const-string v1, "/data/data/com.samsung.android.MtpApplication/test_thumb_img.jpg"

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 1064
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v12, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 1065
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1069
    :goto_0
    :try_start_2
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 1110
    .end local v7    # "bitmapdata":[B
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image\'s thumb size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .end local v14    # "thumb":Landroid/graphics/Bitmap;
    .end local v15    # "thumbsize":I
    :cond_1
    :goto_2
    return v15

    .line 1066
    .restart local v7    # "bitmapdata":[B
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "thumb":Landroid/graphics/Bitmap;
    .restart local v15    # "thumbsize":I
    :catch_0
    move-exception v11

    .line 1067
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1140
    .end local v7    # "bitmapdata":[B
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "thumb":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v11

    .line 1141
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1142
    const/4 v15, 0x0

    goto :goto_2

    .line 1071
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v14    # "thumb":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_3
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image\'s bitmap is coming null try from MediaStore\'s API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1073
    .local v2, "imageURI":Landroid/net/Uri;
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data =\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1074
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_3

    .line 1075
    const-string v1, "MTPJNIInterface"

    const-string v3, "Cur is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1143
    .end local v2    # "imageURI":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "thumb":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v11

    .line 1144
    .local v11, "e":Ljava/lang/OutOfMemoryError;
    const/4 v15, 0x0

    goto :goto_2

    .line 1078
    .end local v11    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "imageURI":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1080
    .local v9, "count":I
    const/4 v13, 0x0

    .line 1081
    .local v13, "imageID":I
    if-nez v9, :cond_4

    .line 1082
    const-string v1, "MTPJNIInterface"

    const-string v3, "Count is zero"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1086
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1087
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1089
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1090
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    int-to-long v3, v13

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1091
    if-eqz v14, :cond_0

    .line 1092
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1093
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x3c

    invoke-virtual {v14, v1, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1094
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1095
    .restart local v7    # "bitmapdata":[B
    array-length v15, v7

    .line 1099
    new-instance v12, Ljava/io/FileOutputStream;

    const-string v1, "/data/data/com.samsung.android.MtpApplication/test_thumb_img.jpg"

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    .line 1101
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v12, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 1102
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    .line 1106
    :goto_3
    :try_start_5
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 1103
    :catch_3
    move-exception v11

    .line 1104
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 1112
    .end local v2    # "imageURI":Landroid/net/Uri;
    .end local v7    # "bitmapdata":[B
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "count":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "imageID":I
    .end local v14    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 1115
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1116
    .restart local v14    # "thumb":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_6

    .line 1117
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1118
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x3c

    invoke-virtual {v14, v1, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1119
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1122
    .restart local v7    # "bitmapdata":[B
    array-length v15, v7

    .line 1123
    const-string v1, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Videos\'s thumbnail size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance v12, Ljava/io/FileOutputStream;

    const-string v1, "/data/data/com.samsung.android.MtpApplication/test_thumb_img.jpg"

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    .line 1128
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v12, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 1129
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 1130
    :catch_4
    move-exception v11

    .line 1131
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_2

    .line 1135
    .end local v7    # "bitmapdata":[B
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    const-string v1, "MTPJNIInterface"

    const-string v3, "Video\'s bitmap is coming null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2
.end method

.method public getdeviceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 342
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "MTPJNIInterface"

    const-string v1, "DeviceName is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "Default"

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    .line 348
    :cond_0
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public mtpCommands(II)V
    .locals 3
    .param p1, "opCode"    # I
    .param p2, "transactionId"    # I

    .prologue
    .line 207
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTP in testMtpCommands of MTPJNIInterface: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "transactionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    .line 212
    return-void
.end method

.method public noOfSongsInPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1200
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1201
    .local v1, "playlistUri":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1202
    .local v11, "cur":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 1203
    const-string v0, "MTPJNIInterface"

    const-string v3, "Cur is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_0
    return-object v2

    .line 1206
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1207
    .local v9, "count":I
    const/4 v12, 0x0

    .line 1208
    .local v12, "noOfSongs":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1209
    .local v10, "count1":I
    const/4 v13, 0x0

    .line 1210
    .local v13, "rowID":I
    if-nez v9, :cond_1

    .line 1211
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1212
    const-string v0, "MTPJNIInterface"

    const-string v3, "MTPJNIInterface , Playlist is not present in media DB"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTPJNIInterface , Playlist"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not present in media DB"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1217
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1218
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1220
    const-string v0, "external"

    int-to-long v5, v13

    invoke-static {v0, v5, v6}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1221
    .local v4, "playlist_map":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1222
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1223
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1224
    if-eqz v10, :cond_2

    .line 1225
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTPJNIInterface , no of songs in playlist  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTPJNIInterface , no of songs in playlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :cond_2
    move-object v2, v12

    .line 1229
    goto/16 :goto_0
.end method

.method public notifyMTPStack(I)V
    .locals 5
    .param p1, "noti"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 323
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 325
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 326
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    if-ne v0, v4, :cond_0

    .line 327
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    sput-boolean v3, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    .line 330
    :cond_0
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    if-ne v0, v4, :cond_1

    .line 331
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    sput-boolean v3, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    .line 336
    :cond_1
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    .line 337
    return-void
.end method

.method public renamePlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "playlistOldName"    # Ljava/lang/String;
    .param p2, "playlistNewName"    # Ljava/lang/String;
    .param p3, "playlistNewPath"    # Ljava/lang/String;

    .prologue
    .line 1297
    const/4 v5, 0x0

    .line 1298
    .local v5, "noOfRowsUpdated":I
    const-wide/16 v0, 0x0

    .line 1299
    .local v0, "dateModified":J
    const/4 v3, 0x0

    .line 1301
    .local v3, "file":Ljava/io/File;
    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playlistOldName :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playlistNewName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playlistNewPath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 1311
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_0
    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In updatePlaylistPath dateModified is = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    sget-object v6, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1315
    .local v6, "playlistUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1316
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v8, "_data"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v8, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1319
    sget-object v8, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1320
    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "noOfRowsUpdated = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 1322
    const-string v8, "MTPJNIInterface"

    const-string v9, "Playlist Renamed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playlist "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is renamed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :goto_1
    return-void

    .line 1308
    .end local v6    # "playlistUri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 1309
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v8, "MTPJNIInterface"

    const-string v9, "exception in getting last modified "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1325
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "playlistUri":Landroid/net/Uri;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v8, "MTPJNIInterface"

    const-string v9, "Playlist Rename failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1308
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "playlistUri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v4    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method public sendObjectAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectAdded(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method

.method public sendObjectPropChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 365
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPropChanged(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public sendObjectRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectRemoved(Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method public sendPlaAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "playlist_path"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string v0, "MTPJNIInterface"

    const-string v1, "In sendPlaAdded playlist file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In sendPlaAdded playlist file path is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaAdded(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public sendPlaRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "playlist_path"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string v1, ".pla"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    const-string v1, ".pla"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 400
    const-string v1, "MTPJNIInterface"

    const-string v2, "sendPlaRemoved is added .pla "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPlaRemoved is added .pla "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    const-string v1, "MTPJNIInterface"

    const-string v2, "calling objectPlaRemoved from sendPlaRemoved "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaRemoved(Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_1
    const-string v1, "MTPJNIInterface"

    const-string v2, "playlist file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendkiesmessage(IILjava/lang/String;)I
    .locals 7
    .param p1, "MsgId"    # I
    .param p2, "MsgVal"    # I
    .param p3, "MsgStr"    # Ljava/lang/String;

    .prologue
    .line 1599
    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendkiesmessage: MsgId=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MsgVal=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MsgStr=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    packed-switch p1, :pswitch_data_0

    .line 1630
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.intent.action.KIES_MTP_MESSAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1631
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "MsgId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1632
    const-string v4, "MsgVal"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1633
    const-string v4, "MsgStr"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1637
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1603
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/storage/emulated/0/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1604
    .local v2, "logPath":Ljava/lang/String;
    move v1, p2

    .line 1605
    .local v1, "logLevel":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/mtp/MTPJNIInterface$3;

    invoke-direct {v4, p0, v2, v1}, Landroid/mtp/MTPJNIInterface$3;-><init>(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1623
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1626
    .end local v1    # "logLevel":I
    .end local v2    # "logPath":Ljava/lang/String;
    .end local v3    # "thread":Ljava/lang/Thread;
    :pswitch_2
    const-string v4, "MTPJNIInterface"

    const-string v5, "send Broadcast MTP_MSGID_SIDESYNC_START"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.intent.action.MTP_SIDESYNC_START"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1601
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    sput-object p1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    .line 167
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->cr:Landroid/content/ContentResolver;

    .line 168
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->registerBroadCastRec()V

    .line 172
    :cond_0
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->registerBroadCastRec1()V

    .line 176
    :cond_1
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 179
    sput-object p1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    .line 180
    return-void
.end method

.method public setMediaScannerStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 353
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sput p1, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    .line 355
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method public songPresentCheck(Ljava/lang/String;)I
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1234
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1235
    .local v1, "audioUri":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1236
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1237
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/4 v0, -0x1

    .line 1245
    :goto_0
    return v0

    .line 1240
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1241
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1242
    if-lez v6, :cond_1

    .line 1243
    const/4 v0, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public songsPathOfPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "playlistname"    # Ljava/lang/String;

    .prologue
    .line 1250
    invoke-virtual/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getPlaylistId(Ljava/lang/String;)I

    move-result v13

    .line 1252
    .local v13, "rowID":I
    const-string v0, "external"

    int-to-long v4, v13

    invoke-static {v0, v4, v5}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1253
    .local v1, "playlist_map":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "audio_id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1254
    .local v10, "cur":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1255
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v14, 0x0

    .line 1293
    :goto_0
    return-object v14

    .line 1258
    :cond_0
    const/4 v12, 0x0

    .line 1259
    .local v12, "i":I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1260
    .local v9, "count":I
    new-array v8, v9, [I

    .line 1261
    .local v8, "audioId":[I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1262
    :goto_1
    if-ge v12, v9, :cond_1

    .line 1264
    :try_start_0
    const-string v0, "audio_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v8, v12

    .line 1265
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1268
    :catch_0
    move-exception v11

    .line 1269
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1270
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1271
    const/4 v14, 0x0

    goto :goto_0

    .line 1274
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1275
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1276
    .local v3, "audioUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1277
    const-string v14, ""

    .line 1278
    .local v14, "songsPath":Ljava/lang/String;
    :goto_2
    if-ge v12, v9, :cond_3

    .line 1279
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v5, v8, v12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1280
    if-nez v10, :cond_2

    .line 1281
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null but continue since checking for audio index"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    add-int/lit8 v12, v12, 0x1

    .line 1283
    goto :goto_2

    .line 1285
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1286
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1287
    const-string/jumbo v0, "|"

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1288
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1289
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1291
    :cond_3
    const-string v0, "MTPJNIInterface"

    const-string v2, "MTPJNIInterface,pipe seperated Path of playlist song "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTPJNIInterface,pipe seperated Path of playlist song is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateUiState(I)V
    .locals 2
    .param p1, "notificationType"    # I

    .prologue
    .line 441
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 442
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 444
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
