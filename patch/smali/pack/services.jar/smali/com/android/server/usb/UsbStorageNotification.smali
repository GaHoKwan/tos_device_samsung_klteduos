.class public Lcom/android/server/usb/UsbStorageNotification;
.super Ljava/lang/Object;
.source "UsbStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbStorageNotification"


# instance fields
.field private final UPDATE_DELAY:I

.field private final USBHOST_UPDATE_STATE:I

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private mNeedIntent:Z

.field private mNotificationEventHandler:Landroid/os/Handler;

.field private mReady:Z

.field private mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private final myFilesName:[Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbNotificationHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/android/server/usb/UsbNotificationHandler;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v5, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    .line 57
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.myfiles"

    const-string v4, "com.sec.android.app.myfiles.Myfiles"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.myfiles"

    const-string v4, "com.sec.android.app.myfiles.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->myFilesName:[Landroid/content/ComponentName;

    .line 116
    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbStorageNotification$1;-><init>(Lcom/android/server/usb/UsbStorageNotification;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 129
    iput-boolean v5, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    .line 130
    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbStorageNotification$2;-><init>(Lcom/android/server/usb/UsbStorageNotification;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    iput v6, p0, Lcom/android/server/usb/UsbStorageNotification;->USBHOST_UPDATE_STATE:I

    .line 285
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/server/usb/UsbStorageNotification;->UPDATE_DELAY:I

    .line 64
    iput-object p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    .line 66
    const-string/jumbo v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 67
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 71
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 75
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbStorageNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "thr2":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;-><init>(Lcom/android/server/usb/UsbStorageNotification;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    .line 78
    return-void

    .line 73
    .end local v0    # "thr2":Landroid/os/HandlerThread;
    :cond_0
    const-string v1, "UsbStorageNotification"

    const-string v2, "not yet inialized the mountservice ?"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->onUsbHostStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->onWaterProofing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbStorageNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbStorageNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbStorageNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbStorageNotification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildMyFilesIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/server/usb/UsbStorageNotification;->getMyfiles()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    const-string v1, "com.sec.android.app.myfiles.SD_CARD_INSERTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 268
    return-object v0
.end method

.method private getMyfiles()Landroid/content/ComponentName;
    .locals 8

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->myFilesName:[Landroid/content/ComponentName;

    .local v1, "arr$":[Landroid/content/ComponentName;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 252
    .local v2, "cn":Landroid/content/ComponentName;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 260
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :goto_1
    return-object v2

    .line 256
    .restart local v2    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 93
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v2, 0x1

    .line 99
    :goto_1
    return v2

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "mDeviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 107
    :goto_0
    return v1

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUsbHostDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 82
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 88
    :goto_1
    return v2

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onUsbHostStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbStorageNotification;->isUsbHostDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v2, "UsbStorageNotification"

    const-string v3, "onUsbHostStateChanged :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    :cond_2
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/usb/UsbStorageNotification;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v4, "intent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.ExternalStorageUnmountActivity"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v2, "storage_volume"

    move-object/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 182
    .local v10, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v6, 0x104074e

    const v7, 0x1040750

    const v8, 0x108089a

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v12, "UsbDevices"

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZLandroid/app/PendingIntent;ZLjava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    :cond_3
    const-string v2, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/usb/UsbStorageNotification;->isTablet(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 191
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v26, "intent1":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.ExternalStorageUnmountActivity"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v2, "storage_volume"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 196
    .local v16, "pi2":Landroid/app/PendingIntent;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v27, "intent2":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.myfiles"

    const-string v5, "com.sec.android.app.myfiles.MainActivity"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    const-string v2, "com.sec.android.app.myfiles.MOVE_TO_USB"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 201
    .local v17, "pi3":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v12, 0x1040722

    const v13, 0x104074e

    const v14, 0x108089a

    const/4 v15, 0x0

    const v18, 0x104075c

    const v19, 0x104075d

    const v20, 0x10808d5

    const v21, 0x10808a9

    const/16 v22, 0x1

    const-string v23, "UsbDevices"

    invoke-virtual/range {v11 .. v23}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v16    # "pi2":Landroid/app/PendingIntent;
    .end local v17    # "pi3":Landroid/app/PendingIntent;
    .end local v26    # "intent1":Landroid/content/Intent;
    .end local v27    # "intent2":Landroid/content/Intent;
    :cond_4
    const-string v2, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const-string v3, "UsbDevices"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    const-string v2, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    const-string/jumbo v2, "sys.fakeShutdown.state"

    const-string v3, "power_on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 220
    .local v25, "fakeState":Ljava/lang/String;
    const-string v2, "UsbStorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fake state : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v2, "power_on"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    move-object/from16 v18, v0

    const v19, 0x1040751

    const v20, 0x1040752

    const v21, 0x108008a

    const/16 v22, 0x1

    const/16 v23, 0x1

    const-string v24, "UsbDevices"

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v25    # "fakeState":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 230
    .local v28, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_7

    .line 231
    const-string v2, "UsbStorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUsbHostStateChanged :: failed to send message"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const-string v3, "UsbDevices"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    .end local v28    # "msg":Landroid/os/Message;
    :cond_8
    const-string v2, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    move-object/from16 v18, v0

    const v19, 0x1040789

    const v20, 0x104078b

    const v21, 0x108007b

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v24, "UsbDevices"

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :cond_9
    const-string/jumbo v2, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    move-object/from16 v18, v0

    const v19, 0x104078d

    const v20, 0x104078f

    const v21, 0x108007b

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v24, "UsbDevices"

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onWaterProofing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbStorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v0, "UsbStorageNotification"

    const-string v1, "onWaterProofing :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "removed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bad_removal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/android/server/usb/UsbStorageNotification;->sendWaterProfingIntent()V

    goto :goto_0

    .line 157
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    goto :goto_0
.end method


# virtual methods
.method popupUsbHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.ExternalStorageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v2, "storage_volume"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    :try_start_0
    const-string v2, "UsbStorageNotification"

    const-string v3, "StartActivity : ExternalStorageActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "UsbStorageNotification"

    const-string/jumbo v3, "unable to start ExternalStorageActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendWaterProfingIntent()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.popupuireceiver.action.BATTERY_COVER_WATERPROOF_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intentToPopup":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 113
    const-string v1, "UsbStorageNotification"

    const-string v2, "onWaterProofing : Sent the intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
