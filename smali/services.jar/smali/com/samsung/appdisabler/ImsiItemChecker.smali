.class public Lcom/samsung/appdisabler/ImsiItemChecker;
.super Ljava/lang/Thread;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;,
        Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;,
        Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    }
.end annotation


# static fields
.field private static final APK_VERSION_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.appdisabler.app"

.field protected static final CUSTOM_XML_FILE:Ljava/lang/String; = "/system/csc/appDisablerList.xml"

.field protected static final ERROR_HEADER:Ljava/lang/String; = "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

.field private static final MSG_CHECK_FINISH_LOOPER:I = 0x70

.field private static final MSG_CHECK_TIMEOUT:I = 0x6f

.field private static final MSG_SHOW_DIALOG:I = 0xc9


# instance fields
.field private CHECK_DELAY_IN_MS:I

.field private mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

.field private mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

.field private mContext:Landroid/content/Context;

.field private mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

.field private mCurrentImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNetworkNumeric:Ljava/lang/String;

.field private mIsImsiNumericBase:Z

.field private mIsNetworkNumeric:Z

.field private mIsSimNumeric:Z

.field private mIsSimSpn:Z

.field private mShowPackage:Z

.field private mSimImsiNumericBase:Ljava/lang/String;

.field private mSimNumeric:Ljava/lang/String;

.field private mSimSpn:Ljava/lang/String;

.field private mStartTimeInMiliseconds:J

.field private mTimeoutOffset:J

.field private packageManager:Landroid/content/pm/PackageManager;

.field private phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingObject"    # Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 89
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->CHECK_DELAY_IN_MS:I

    .line 113
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 115
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    .line 116
    iput-object p2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    .line 117
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/appdisabler/ImsiItemChecker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/appdisabler/ImsiItemChecker;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->receiveNetworkNumericFromDevice()V

    return-void
.end method

.method private changeAppVisibility(Ljava/util/Set;Z)V
    .locals 10
    .param p2, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 498
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 499
    .local v3, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeAppVisibility, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " show: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 500
    new-instance v4, Lcom/samsung/appdisabler/ShortcutHandler;

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/appdisabler/ShortcutHandler;-><init>(Landroid/content/Context;)V

    .line 502
    .local v4, "shortcutHandler":Lcom/samsung/appdisabler/ShortcutHandler;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, "currentState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state of application: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 505
    if-eqz p2, :cond_1

    .line 506
    if-ne v0, v9, :cond_0

    .line 507
    const-string v5, "Enabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 508
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 510
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 512
    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->addShortcut(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    .end local v0    # "currentState":I
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "currentState":I
    :cond_1
    if-eq v0, v8, :cond_2

    if-nez v0, :cond_0

    .line 517
    :cond_2
    :try_start_1
    const-string v5, "Disabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 518
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 520
    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->uninstallShort(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 529
    .end local v0    # "currentState":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "shortcutHandler":Lcom/samsung/appdisabler/ShortcutHandler;
    :cond_3
    const-string v5, "-------------- End checking imsi item --------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method private checkSimState()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 451
    .local v0, "simState":I
    packed-switch v0, :pswitch_data_0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported SIM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 454
    :pswitch_0
    const-string v1, "SIM_STATE_READY"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    .line 456
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->receiveInfoFromSim()V

    goto :goto_0

    .line 463
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    .line 470
    :pswitch_2
    const-string v1, "SIM_STATE_PIN_REQUIRED || SIM_STATE_PUK_REQUIRED"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :pswitch_3
    const-string v1, "SIM_STATE_ABSENT"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 476
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private displayImsiItems()V
    .locals 7

    .prologue
    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout_in_seconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/appdisabler/ImsiItem;

    .line 597
    .local v1, "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    invoke-virtual {v1}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    :cond_0
    const-string v2, "imsiList = null"

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 602
    :cond_1
    return-void
.end method

.method private hideAppAfterTimeout()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->isHideAfterTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    const-string v0, "-------------- End checking imsi item --------------"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDualSim()Z
    .locals 4

    .prologue
    .line 662
    const-string v0, "none"

    .line 664
    .local v0, "defValue":Ljava/lang/String;
    const-string v2, "gsm.sim.state_1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "simState":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    const/4 v2, 0x0

    .line 670
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNetworkDataValidate()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 301
    iget-boolean v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    if-eqz v4, :cond_1

    .line 303
    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v4}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v2

    .line 304
    .local v2, "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    .local v1, "networkNumericFromXml":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network numeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " equal XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". PASS!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 313
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "networkNumericFromXml":Ljava/lang/String;
    .end local v2    # "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return v3

    .line 310
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network numeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " different than XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". FAIL!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 311
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSimDataValidate()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 253
    const/4 v6, 0x1

    .line 255
    .local v6, "validationResult":Z
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    if-eqz v8, :cond_2

    .line 256
    const/4 v6, 0x0

    .line 257
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v3

    .line 258
    .local v3, "simNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, "simNumericFromXml":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM numeric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " equal XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". PASS!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 261
    const/4 v6, 0x1

    .line 265
    .end local v2    # "simNumericFromXml":Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM numeric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 292
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "simNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v7

    .line 270
    :cond_2
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    if-eqz v8, :cond_3

    .line 271
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v1

    .line 272
    .local v1, "mImsiNumericBaseFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/appdisabler/ImsiNumeric;>;"
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/samsung/appdisabler/ImsiItem;->looseCompare(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Imsi numeric base: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v1    # "mImsiNumericBaseFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/appdisabler/ImsiNumeric;>;"
    :cond_3
    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    if-eqz v8, :cond_6

    .line 278
    const/4 v6, 0x0

    .line 279
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v8}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v5

    .line 280
    .local v5, "simSpnListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 281
    .local v4, "simSpnFromXml":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sim spn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " equal XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". PASS!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 283
    const/4 v6, 0x1

    .line 287
    .end local v4    # "simSpnFromXml":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sim spn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " different than XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". FAIL!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "simSpnListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private isTimeout()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-wide v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 428
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 429
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWiFiOnly()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 681
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 683
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 684
    .local v1, "mobileNetworkSupported":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileNetworkSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 685
    if-eqz v1, :cond_0

    .line 689
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseXml()Z
    .locals 11

    .prologue
    .line 536
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 538
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    new-instance v7, Lcom/samsung/appdisabler/XmlItemHandler;

    invoke-direct {v7}, Lcom/samsung/appdisabler/XmlItemHandler;-><init>()V

    .line 540
    .local v7, "xmlHandler":Lcom/samsung/appdisabler/XmlItemHandler;
    new-instance v9, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v9}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 541
    const/4 v2, 0x0

    .line 543
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    const-string v9, "parseXml"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 544
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    const-string v10, "/system/csc/appDisablerList.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 546
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 547
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 548
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 549
    .local v1, "inStream":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 550
    invoke-interface {v8, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 553
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getTimeoutInSeconds()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    .line 554
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getImsiList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    if-eqz v3, :cond_0

    .line 570
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_0
    :goto_0
    move-object v2, v3

    .line 578
    .end local v1    # "inStream":Lorg/xml/sax/InputSource;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getValidationErrors()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "parsingError":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 580
    const-string v9, "Parsing XML ended successfully!"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 581
    const/4 v9, 0x1

    .line 587
    :goto_2
    return v9

    .line 555
    .end local v4    # "parsingError":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_3
    const-string v9, "ParserConfigurationException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    if-eqz v2, :cond_1

    .line 570
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 571
    :catch_1
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    :goto_4
    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 558
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 559
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_5
    :try_start_5
    const-string v9, "SAXException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 568
    if-eqz v2, :cond_1

    .line 570
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 571
    :catch_3
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    goto :goto_4

    .line 561
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 562
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_7
    const-string v9, "FileNotFoundException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 568
    if-eqz v2, :cond_1

    .line 570
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 571
    :catch_5
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    goto :goto_4

    .line 564
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 565
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_9
    const-string v9, "IOException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 568
    if-eqz v2, :cond_1

    .line 570
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    .line 571
    :catch_7
    move-exception v0

    .line 572
    const-string v9, "close inputStream"

    goto :goto_4

    .line 568
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v2, :cond_2

    .line 570
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 568
    :cond_2
    :goto_9
    throw v9

    .line 585
    .restart local v4    # "parsingError":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/appdisabler/ImsiItemChecker;->sendErrorMsg(Ljava/lang/String;)V

    .line 587
    const/4 v9, 0x0

    goto :goto_2

    .line 571
    .end local v4    # "parsingError":Ljava/lang/String;
    :catch_8
    move-exception v0

    .line 572
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "close inputStream"

    invoke-static {v10, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Lorg/xml/sax/InputSource;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_9
    move-exception v0

    .line 572
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 568
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inStream":Lorg/xml/sax/InputSource;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_8

    .line 564
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_7

    .line 561
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .line 558
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 555
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_d
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method private receiveInfoFromSim()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 374
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data from SIM do not loaded yet: ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private receiveNetworkNumericFromDevice()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->simNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 398
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 402
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendErrorMsg(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsgText"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string v1, "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

    .line 613
    .local v1, "msgToShow":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 615
    .local v0, "errorMsg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    const/16 v2, 0xc9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 617
    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 619
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 632
    .local v1, "dialog":Landroid/app/AlertDialog;
    const-string/jumbo v3, "show error dialog"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 635
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 636
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 637
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 639
    const/4 v3, -0x1

    const-string v4, "OK"

    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/appdisabler/ImsiItemChecker$1;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 648
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 651
    iget-object v3, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 652
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 653
    return-void
.end method

.method private startTimeMeasuring()V
    .locals 4

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 411
    const-string v0, "Measuring time started"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    .line 414
    :cond_0
    return-void
.end method


# virtual methods
.method public isApkVersionInstalled()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 700
    iget-object v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 701
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 702
    .local v1, "listOfApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 703
    .local v3, "tempApp":Landroid/content/pm/ApplicationInfo;
    const-string v5, "com.samsung.appdisabler.app"

    iget-object v6, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 704
    const/4 v4, 0x1

    .line 708
    .end local v3    # "tempApp":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public run()V
    .locals 13

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 128
    new-instance v7, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    .line 130
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isDualSim()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isWiFiOnly()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 133
    .local v2, "errorMsg":Landroid/os/Message;
    const-string v1, "SamsungAppDisabler currently is not supporting dual SIM or WiFi only devices, delete /system/csc/appDisablerList.xml from CSC"

    .line 134
    .local v1, "error":Ljava/lang/String;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    const/16 v7, 0xc9

    iput v7, v2, Landroid/os/Message;->what:I

    .line 136
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 138
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    .line 245
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->parseXml()Z

    move-result v7

    if-nez v7, :cond_2

    .line 144
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    .line 243
    const-string v7, "Run exception"

    invoke-static {v7, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->displayImsiItems()V

    .line 149
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/appdisabler/ImsiItem;

    .line 150
    .local v4, "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 151
    iput-object v4, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    .line 152
    const-string v7, "------------- Start checking imsi item -------------"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 153
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->isForceApplicationTurnOff()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 157
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto :goto_1

    .line 161
    :cond_4
    const-string v7, "------------- Validating SIM data -------------"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 163
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    .line 164
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    .line 165
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    .line 176
    :goto_5
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimNumeric:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimNumeric:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsImsiNumericBase:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimImsiNumericBase:Ljava/lang/String;

    if-eqz v7, :cond_7

    :cond_6
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsSimSpn:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mSimSpn:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 178
    :cond_7
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isTimeout()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 179
    const-string v7, "Waiting time elapsed"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->hideAppAfterTimeout()V

    .line 193
    :cond_8
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isTimeout()Z

    move-result v7

    if-nez v7, :cond_3

    .line 197
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isSimDataValidate()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 200
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    if-nez v7, :cond_d

    .line 201
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto/16 :goto_1

    .line 163
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 164
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 165
    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    .line 183
    :cond_c
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->checkSimState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :try_start_2
    iget v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->CHECK_DELAY_IN_MS:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 188
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_5

    .line 205
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_d
    const-string v7, "----------- Validating Network data -----------"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 207
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    .line 208
    iget-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mIsNetworkNumeric:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-nez v7, :cond_e

    .line 209
    const-string v7, "Checking network numeric"

    invoke-static {v7}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 215
    iget-wide v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_10

    .line 216
    iget-wide v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mStartTimeInMiliseconds:J

    sub-long/2addr v9, v11

    sub-long v5, v7, v9

    .line 221
    .local v5, "waitingTime":J
    :goto_7
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v8, 0x6f

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    new-instance v7, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    .line 224
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 225
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 227
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 232
    .end local v5    # "waitingTime":J
    :cond_e
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isNetworkDataValidate()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    .line 235
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v7}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mShowPackage:Z

    invoke-direct {p0, v7, v8}, Lcom/samsung/appdisabler/ImsiItemChecker;->changeAppVisibility(Ljava/util/Set;Z)V

    goto/16 :goto_1

    .line 207
    :cond_f
    const/4 v7, 0x0

    goto :goto_6

    .line 218
    :cond_10
    invoke-direct {p0}, Lcom/samsung/appdisabler/ImsiItemChecker;->startTimeMeasuring()V

    .line 219
    iget-wide v5, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mTimeoutOffset:J

    .restart local v5    # "waitingTime":J
    goto :goto_7

    .line 238
    .end local v4    # "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    .end local v5    # "waitingTime":J
    :cond_11
    iget-object v7, p0, Lcom/samsung/appdisabler/ImsiItemChecker;->mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v7}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
