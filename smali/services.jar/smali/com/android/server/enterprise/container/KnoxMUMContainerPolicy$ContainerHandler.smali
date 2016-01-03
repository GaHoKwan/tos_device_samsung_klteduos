.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
.super Landroid/os/Handler;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerHandler"
.end annotation


# static fields
.field public static final MSG_KLMS_LICENSE_UPDATE:I = 0x2

.field public static final MSG_REMOVE_ORPHANED_CONTAINERS:I = 0x4

.field public static final MSG_START_MIGRATION_WIZARD:I = 0x5

.field public static final MSG_START_SETUP_WIZARD:I = 0x1

.field public static final MSG_UPDATE_CONTAINER_CREATION_STATUS:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 536
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 537
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 540
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    packed-switch v34, :pswitch_data_0

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_0
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    const-string v35, "ContainerHandler.MSG_START_SETUP_WIZARD is called ..."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/sec/knox/container/ContainerCreationParams;

    .line 548
    .local v21, "params":Lcom/sec/knox/container/ContainerCreationParams;
    new-instance v16, Landroid/content/Intent;

    const-string v34, "com.sec.knox.start.SETUP_WIZARD"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v16, "intent":Landroid/content/Intent;
    const-string v34, "com.sec.knox.knoxsetupwizardclient"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v34, "creation_params"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 551
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v34

    new-instance v35, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 552
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "createContainer: intent from User:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " with requestid: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v21 .. v21}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v21    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :catch_0
    move-exception v12

    .line 554
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v12    # "e":Ljava/lang/Exception;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, [Ljava/lang/Integer;

    move-object/from16 v21, v34

    check-cast v21, [Ljava/lang/Integer;

    .line 561
    .local v21, "params":[Ljava/lang/Integer;
    const/16 v34, 0x0

    aget-object v34, v21, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 562
    .local v29, "requestId":I
    const/16 v34, 0x1

    aget-object v34, v21, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 563
    .local v8, "containerId":I
    const/16 v34, 0x2

    aget-object v34, v21, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 564
    .local v5, "adminUid":I
    const/16 v34, 0x3

    aget-object v34, v21, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 566
    .local v9, "creatorUid":I
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "creation status: reqId - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", containerId -"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", adminUid-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", creatorUid-"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v27

    .line 569
    .local v27, "pkgNames":[Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 570
    move-object/from16 v6, v27

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    aget-object v26, v6, v13

    .line 571
    .local v26, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Sending creation update to package "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    move/from16 v2, v29

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;III)V
    invoke-static {v0, v1, v8, v2, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V

    .line 574
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v34

    if-eqz v34, :cond_1

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    move/from16 v2, v29

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;III)V
    invoke-static {v0, v1, v8, v2, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V

    .line 570
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 580
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    .end local v26    # "pkgName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v29

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;III)V
    invoke-static {v0, v1, v8, v2, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V

    .line 582
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v34

    if-eqz v34, :cond_3

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v29

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;III)V
    invoke-static {v0, v1, v8, v2, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V

    .line 588
    :cond_3
    if-lez v8, :cond_5

    if-ne v5, v9, :cond_5

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v20

    .line 590
    .local v20, "ownerUid":I
    if-lez v20, :cond_5

    move/from16 v0, v20

    if-eq v0, v9, :cond_5

    .line 591
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v28

    .line 592
    .local v28, "pkgs":[Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 593
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Sending creation update to app uid: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v6, v28

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    aget-object v26, v6, v13

    .line 595
    .restart local v26    # "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Sending creation update to package "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v20

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;III)V
    invoke-static {v0, v1, v8, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V

    .line 594
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 599
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    .end local v26    # "pkgName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v29

    move/from16 v3, v20

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;III)V
    invoke-static {v0, v1, v8, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;III)V

    .line 605
    .end local v20    # "ownerUid":I
    .end local v28    # "pkgs":[Ljava/lang/String;
    :cond_5
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v34

    if-eqz v34, :cond_0

    .line 606
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    const-string v35, "create callback found, updating callback.."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v30, 0x3ea

    .line 608
    .local v30, "retCode":I
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 609
    .local v11, "data":Landroid/os/Bundle;
    if-lez v8, :cond_6

    .line 610
    const/16 v30, 0x3e9

    .line 611
    const-string v34, "containerid"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    :goto_3
    :try_start_1
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-interface {v0, v1, v11}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    :goto_4
    const/16 v34, 0x0

    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1102(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    goto/16 :goto_0

    .line 612
    :cond_6
    const/16 v34, -0x3f9

    move/from16 v0, v34

    if-ne v8, v0, :cond_7

    .line 613
    const/16 v30, 0x3f8

    .line 614
    const-string v34, "containerid"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    const-string v34, "requestid"

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 617
    :cond_7
    const-string v34, "containerid"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 621
    :catch_1
    move-exception v12

    .line 622
    .local v12, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Exception:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 631
    .end local v5    # "adminUid":I
    .end local v8    # "containerId":I
    .end local v9    # "creatorUid":I
    .end local v11    # "data":Landroid/os/Bundle;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v21    # "params":[Ljava/lang/Integer;
    .end local v27    # "pkgNames":[Ljava/lang/String;
    .end local v29    # "requestId":I
    .end local v30    # "retCode":I
    :pswitch_2
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    const-string v35, "MSG_REMOVE_ORPHANED_CONTAINERS received"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v24

    .line 633
    .local v24, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v24, :cond_0

    .line 634
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PersonaInfo;

    .line 635
    .local v15, "info":Landroid/content/pm/PersonaInfo;
    iget v14, v15, Landroid/content/pm/PersonaInfo;->id:I

    .line 636
    .local v14, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v33

    .line 637
    .local v33, "state":I
    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_9

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_9

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    :cond_9
    const/16 v22, 0x1

    .line 640
    .local v22, "partial":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v34

    iget v0, v15, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v20

    .line 641
    .restart local v20    # "ownerUid":I
    if-lez v20, :cond_a

    if-eqz v22, :cond_8

    .line 642
    :cond_a
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Orphan container removing: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v15, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    iget v0, v15, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v35, v0

    const/16 v36, 0x1

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    invoke-static/range {v34 .. v36}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    goto :goto_5

    .line 637
    .end local v20    # "ownerUid":I
    .end local v22    # "partial":Z
    :cond_b
    const/16 v22, 0x0

    goto :goto_6

    .line 651
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":I
    .end local v15    # "info":Landroid/content/pm/PersonaInfo;
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v33    # "state":I
    :pswitch_3
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    const-string v35, "ContainerHandler.MSG_START_MIGRATION_WIZARD is called ..."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/sec/knox/container/ContainerCreationParams;

    .line 656
    .local v21, "params":Lcom/sec/knox/container/ContainerCreationParams;
    new-instance v16, Landroid/content/Intent;

    const-string v34, "com.sec.knox.start.MIGRATION_WIZARD"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v34, "com.sec.knox.containeragent"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v34, "creation_params"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 659
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v34

    new-instance v35, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 660
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "createContainer: intent from User:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " with requestid: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v21 .. v21}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 661
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v21    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :catch_2
    move-exception v12

    .line 662
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 668
    .end local v12    # "e":Ljava/lang/Exception;
    :pswitch_4
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    const-string v35, "MSG_KLMS_LICENSE_UPDATE received"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 670
    .local v7, "code":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v25

    .line 671
    .local v25, "personasList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v25, :cond_f

    .line 672
    const/16 v31, 0x0

    .line 673
    .local v31, "retVal":Z
    const-string v34, "persona"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v32

    check-cast v32, Lcom/android/server/pm/PersonaManagerService;

    .line 675
    .local v32, "service":Lcom/android/server/pm/PersonaManagerService;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 676
    .local v23, "personaIds":[I
    const/16 v18, 0x0

    .line 677
    .local v18, "length":I
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PersonaInfo;

    .line 678
    .restart local v15    # "info":Landroid/content/pm/PersonaInfo;
    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v34, v0

    if-nez v34, :cond_c

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v34

    iget v0, v15, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v10

    .line 680
    .local v10, "currentState":I
    const/16 v34, 0x5a

    move/from16 v0, v34

    if-ne v7, v0, :cond_d

    .line 681
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "currentState for persona- "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v15, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " oldState= "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v15, Landroid/content/pm/PersonaInfo;->oldState:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v34, 0x9

    move/from16 v0, v34

    if-ne v10, v0, :cond_c

    .line 684
    if-eqz v32, :cond_c

    .line 685
    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PersonaManagerService;->handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z

    move-result v31

    .line 686
    if-eqz v31, :cond_c

    .line 687
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "length":I
    .local v19, "length":I
    iget v0, v15, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v34, v0

    aput v34, v23, v18

    move/from16 v18, v19

    .end local v19    # "length":I
    .restart local v18    # "length":I
    goto :goto_7

    .line 692
    :cond_d
    const/16 v34, 0x9

    move/from16 v0, v34

    if-eq v10, v0, :cond_c

    .line 693
    const/16 v34, 0x7

    move/from16 v0, v34

    if-eq v10, v0, :cond_c

    .line 694
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "setting persona state to KLMS_LOCKED"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v34

    iget v0, v15, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v35, v0

    const/16 v36, 0x9

    invoke-virtual/range {v34 .. v36}, Landroid/os/PersonaManager;->setPersonaState(II)V

    goto/16 :goto_7

    .line 701
    .end local v10    # "currentState":I
    .end local v15    # "info":Landroid/content/pm/PersonaInfo;
    :cond_e
    if-lez v18, :cond_0

    .line 702
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v34

    const-string v35, "activity"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 704
    .local v4, "activityManager":Landroid/app/ActivityManager;
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    goto/16 :goto_0

    .line 707
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "length":I
    .end local v23    # "personaIds":[I
    .end local v31    # "retVal":Z
    .end local v32    # "service":Lcom/android/server/pm/PersonaManagerService;
    :cond_f
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v34

    const-string v35, "persona list is null"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
