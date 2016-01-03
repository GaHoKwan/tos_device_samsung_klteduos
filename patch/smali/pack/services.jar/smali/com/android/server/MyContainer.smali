.class public Lcom/android/server/MyContainer;
.super Lcom/android/server/SEAMSContainer;
.source "MyContainer.java"


# static fields
.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field private static MYCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/mycontainer"

.field private static MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String; = null

.field private static final MYCONTAINER_TYPE:I = 0x4

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field private static final REMOVE_MYCONTAINER_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MyContainer"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "/data/security/mycontainer/mac_permissions.xml"

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    .line 65
    const-string v0, "/data/security/mycontainer/seapp_contexts"

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 80
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string v2, "enter MyContainer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 83
    return-void
.end method

.method private getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 325
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "entered getGenericMDMID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 328
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 329
    .local v2, "pid":I
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 330
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iget-object v5, p0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 331
    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 333
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "GenericMDMID package name is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 350
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :goto_0
    return-object v0

    .line 337
    .restart local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 338
    .local v1, "mdmCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 340
    :cond_1
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "GenericMDMID certs are null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 342
    goto :goto_0

    .line 344
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 346
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGenericMDMID:  package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGenericMDMID:  certs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Returning GenericMDMID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 372
    const/4 v10, 0x0

    .line 374
    .local v10, "appNotInstalled":Z
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "enter addAppToContainer"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v5, 0x3

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    .line 377
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "Apptype not 3 or 4"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v5, -0x3

    .line 531
    :goto_0
    return v5

    .line 382
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 383
    if-nez p1, :cond_1

    .line 384
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " addAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v5, -0x1

    goto :goto_0

    .line 387
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 388
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/16 v5, -0xc

    goto :goto_0

    .line 391
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v14

    .line 392
    .local v14, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v14, :cond_3

    .line 393
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "genericMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v5, -0x2

    goto :goto_0

    .line 397
    :cond_3
    iget-object v5, v14, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v7, v14, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 398
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v5, -0x2

    goto :goto_0

    .line 402
    :cond_4
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addAppToContainer, instance of MyContainer "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v11, 0x0

    .line 405
    .local v11, "certMatch":Z
    const/4 v4, 0x0

    .line 406
    .local v4, "signature":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v15, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 408
    if-nez p2, :cond_5

    .line 410
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/16 v5, -0xe

    goto/16 :goto_0

    .line 413
    :cond_5
    if-nez v15, :cond_7

    .line 414
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 416
    const/4 v10, 0x1

    .line 438
    :cond_6
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " addAppToContainer 103"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v3, "macPermFile":Ljava/io/File;
    if-nez v3, :cond_9

    .line 443
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addAppToContainer, "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, " is null"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 418
    .end local v3    # "macPermFile":Ljava/io/File;
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 421
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 423
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, cert matches"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v11, 0x1

    .line 427
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addAppToContainer, certMatch: "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_8
    if-nez v11, :cond_6

    .line 432
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/16 v5, -0xd

    goto/16 :goto_0

    .line 448
    .restart local v3    # "macPermFile":Ljava/io/File;
    :cond_9
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer 104"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    .line 452
    .local v17, "userId":I
    const/4 v12, 0x0

    .line 455
    .local v12, "containerAllowCat":Ljava/lang/String;
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " addAppToContainer packageName = "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 459
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Got Application Info"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    if-eqz v9, :cond_a

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/16 v7, 0x66

    const/16 v8, 0xc8

    invoke-static {v5, v7, v8}, Lcom/android/server/MyContainer;->checkCategoryRange(Ljava/lang/String;II)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    .line 464
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/16 v5, -0x9

    goto/16 :goto_0

    .line 468
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 470
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v5, -0x8

    goto/16 :goto_0

    .line 474
    :cond_b
    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 475
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Got Application Info, Seinfo is not null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget v5, v9, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v5, :cond_c

    iget v5, v9, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v7, 0x1f5

    if-ge v5, v7, :cond_c

    .line 477
    const/16 v5, -0x9

    goto/16 :goto_0

    .line 478
    :cond_c
    iget v5, v9, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v5, :cond_d

    .line 479
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 481
    :cond_d
    const-string v5, "default"

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 482
    const-string/jumbo v5, "untrusted"

    iput-object v5, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 485
    :cond_e
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer 105"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 488
    .local v16, "uid":I
    const/4 v6, 0x0

    .line 489
    .local v6, "newSeinfo":Ljava/lang/String;
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_f

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-s0:c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 494
    :goto_1
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_10

    .line 495
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 492
    :cond_f
    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_1

    .line 498
    :cond_10
    if-nez v10, :cond_12

    .line 500
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "App is installed - Perform Load Container Setting"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_11

    .line 503
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 504
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 507
    :cond_11
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "load container setting is done"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_12

    .line 511
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "relabelAppDir "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_12
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "leave addAppToContainer + containerID ="

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 518
    .end local v6    # "newSeinfo":Ljava/lang/String;
    .end local v16    # "uid":I
    :cond_13
    :try_start_1
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addAppToContainer, "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v18, " seinfo is null"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 522
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "containerAllowCat":Ljava/lang/String;
    .end local v17    # "userId":I
    :catch_0
    move-exception v13

    .line 524
    .local v13, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "leave addAppToContainer + Exception e + Returning Policy Failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v5, -0x1

    goto/16 :goto_0
.end method

.method protected checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 160
    :try_start_0
    const-string v3, "MyContainer"

    const-string v4, "Entered checkIfSingleContainerOwnerIsBeingAdded"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v1

    .line 163
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v1, :cond_1

    .line 176
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    :goto_0
    return v2

    .line 166
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_1
    iget-object v3, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const-string v3, "MyContainer"

    const-string v4, "checkIfAgentIsBeingAdded returning true"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 173
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createSEContainer(II)I
    .locals 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 94
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "enter createContainer"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :try_start_0
    new-instance v11, Ljava/io/File;

    const-string v1, "/data/security/mycontainer"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v11, "myContainerDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasGenericContainers()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v8, -0x1

    .line 149
    .end local v11    # "myContainerDir":Ljava/io/File;
    :cond_0
    :goto_0
    return v8

    .line 103
    .restart local v11    # "myContainerDir":Ljava/io/File;
    :cond_1
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist. Creating dir"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 105
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 106
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "macPermFile":Ljava/io/File;
    if-nez v0, :cond_3

    .line 117
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToContainer, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v8, -0x1

    goto :goto_0

    .line 109
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v11    # "myContainerDir":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 110
    .local v9, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/4 v8, -0x1

    goto :goto_0

    .line 120
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v11    # "myContainerDir":Ljava/io/File;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v10

    .line 121
    .local v10, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v10, :cond_4

    .line 122
    const/4 v8, -0x1

    goto :goto_0

    .line 125
    :cond_4
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "addEntryToMac ok!"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    aput-object v2, v7, v1

    .line 128
    .local v7, "certificates":[Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 130
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "createSEContainer, Got Application Info"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v2, 0x1f5

    if-ge v1, v2, :cond_5

    .line 133
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "createSEContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v8, -0x9

    goto/16 :goto_0

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 137
    .local v8, "containerID":I
    const/4 v1, -0x7

    if-ne v8, v1, :cond_6

    .line 138
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Generic Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v8, -0x7

    goto/16 :goto_0

    .line 141
    :cond_6
    invoke-static {v8}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    const-string v3, "generic_mdm"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/pm/PackageManagerService;->removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 146
    const/4 v8, -0x1

    goto/16 :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 6
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 253
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Entered Get Package Names from Container"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Given Container ID is my Container ID"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v0

    .line 260
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v0, :cond_0

    .line 261
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "genericMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :goto_0
    return-object v1

    .line 264
    .restart local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_2
    if-ne p2, v5, :cond_3

    .line 272
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Calling getContainerAllowPackageNamesFromSEContainer"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 277
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_3
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "enter getContainerIDs"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v0

    .line 314
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v0, :cond_0

    .line 316
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "genericMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x0

    .line 320
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x4

    .line 289
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string v2, "enter getSEContainerIDsfromPackageName"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v6

    .line 293
    .local v6, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v6, :cond_1

    .line 295
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string v2, "genericMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-object v7

    .line 299
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 301
    .local v8, "retContainerID":I
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    .line 302
    .local v7, "retContainerArray":[I
    goto :goto_0

    .line 303
    .end local v7    # "retContainerArray":[I
    .end local v8    # "retContainerID":I
    :cond_2
    if-ne p2, v4, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v7

    goto :goto_0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 535
    const/4 v10, 0x0

    .line 537
    .local v10, "appNotInstalled":Z
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "enter removeAppFromContainer"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 540
    if-nez p1, :cond_0

    .line 541
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v5, -0x1

    .line 663
    :goto_0
    return v5

    .line 544
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v13

    .line 545
    .local v13, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v13, :cond_1

    .line 546
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "genericMDMID is null, Returning null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v5, -0x2

    goto :goto_0

    .line 549
    :cond_1
    iget-object v5, v13, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 550
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v5, -0x2

    goto :goto_0

    .line 554
    :cond_2
    const/4 v11, 0x0

    .line 555
    .local v11, "certMatch":Z
    const/4 v4, 0x0

    .line 556
    .local v4, "signature":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v15, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 558
    if-nez p2, :cond_3

    .line 560
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " Input Certificate is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/16 v5, -0xe

    goto :goto_0

    .line 563
    :cond_3
    if-nez v15, :cond_5

    .line 564
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 566
    const/4 v10, 0x1

    .line 588
    :cond_4
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer 103"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v3, "macPermFile":Ljava/io/File;
    if-nez v3, :cond_7

    .line 592
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeAppFromContainer, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 568
    .end local v3    # "macPermFile":Ljava/io/File;
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 571
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 573
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, cert matches"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 v11, 0x1

    .line 577
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAppToContainer, certMatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_6
    if-nez v11, :cond_4

    .line 582
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/16 v5, -0xd

    goto/16 :goto_0

    .line 596
    .restart local v3    # "macPermFile":Ljava/io/File;
    :cond_7
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer 104"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 600
    .local v16, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 601
    .local v14, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    .line 603
    .local v17, "userId":I
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " removeAppFromContainer tempPackage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 607
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v5, -0x8

    goto/16 :goto_0

    .line 611
    :cond_8
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 613
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "removeAppFromContainer ok!11"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 616
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 618
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove ContainerID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v9, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 621
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 624
    :cond_9
    if-nez v10, :cond_b

    .line 626
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "App is installed - Perform Load Container Setting"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    .line 629
    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 630
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 632
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 634
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "relabelAppDir1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_b
    const/4 v5, 0x4

    move/from16 v0, p4

    if-ne v0, v5, :cond_e

    .line 639
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 640
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 643
    :cond_c
    if-nez v10, :cond_e

    .line 645
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "App is installed - Perform Load Container Setting"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    .line 648
    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 649
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 654
    :cond_d
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeAppFromContainer, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seinfo is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 657
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "pid":I
    .end local v16    # "uid":I
    .end local v17    # "userId":I
    :catch_0
    move-exception v12

    .line 658
    .local v12, "e":Ljava/lang/Exception;
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 661
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "pid":I
    .restart local v16    # "uid":I
    .restart local v17    # "userId":I
    :cond_e
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "leave removeAppFromContainer"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public removeSEContainer(III)I
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 189
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "enter destroyContainer"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "macPermFile":Ljava/io/File;
    if-nez v1, :cond_0

    .line 193
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAppToContainer, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return v3

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v0

    .line 197
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v0, :cond_1

    .line 198
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "genericMDMID is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "genericMDMID is not null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destroyContainer:  package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destroyContainer:  certs = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destroyContainer:  containerID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 210
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "Given containerID is myContainer ID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v5, 0x3

    invoke-virtual {p0, p3, v5}, Lcom/android/server/MyContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v5, v2

    if-nez v5, :cond_5

    .line 215
    :cond_2
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "container is empty"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v5, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/pm/PackageManagerService;->removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    .line 219
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "remove MyContainer ID Successful"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v5, v6, v7, v4}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 222
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_3
    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeEntryFromMac Successful"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 228
    goto/16 :goto_0

    .line 231
    :cond_4
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "remove MyContainer ID Failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string v5, "CONTAINER not empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/16 v3, -0xb

    goto/16 :goto_0

    .line 239
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Not my containerID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
