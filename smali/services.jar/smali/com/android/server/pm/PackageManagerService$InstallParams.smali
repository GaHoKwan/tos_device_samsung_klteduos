.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

.field flags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field private installerUid:I

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private final mPackageURI:Landroid/net/Uri;

.field private mRet:I

.field private mTempPackage:Ljava/io/File;

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/UserHandle;I)V
    .locals 1
    .param p2, "packageURI"    # Landroid/net/Uri;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p4, "flags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p7, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "installerUid"    # I

    .prologue
    .line 10185
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10186
    invoke-direct {p0, p1, p8}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 10179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerUid:I

    .line 10187
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    .line 10188
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 10189
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 10190
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 10192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 10194
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 10195
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    .line 10197
    iput p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerUid:I

    .line 10199
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/UserHandle;I)V
    .locals 1
    .param p2, "packageURI"    # Landroid/net/Uri;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p4, "flags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "installerSourcePackageName"    # Ljava/lang/String;
    .param p7, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p8, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "installerUid"    # I

    .prologue
    .line 10210
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10211
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 10179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerUid:I

    .line 10212
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    .line 10213
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 10214
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 10215
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 10216
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    .line 10217
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 10218
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    .line 10220
    iput p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerUid:I

    .line 10222
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .locals 9
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10241
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 10242
    .local v2, "packageName":Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 10243
    .local v0, "installLocation":I
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_0

    move v1, v4

    .line 10245
    .local v1, "onSd":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 10246
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 10247
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_6

    .line 10248
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_9

    .line 10250
    and-int/lit16 v7, p2, 0x80

    if-nez v7, :cond_1

    .line 10251
    iget v7, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    iget v8, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v7, v8, :cond_1

    .line 10252
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t install update of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " update version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is older than installed version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 10256
    const/4 v4, -0x7

    monitor-exit v6

    .line 10296
    :goto_1
    return v4

    .line 10243
    .end local v1    # "onSd":Z
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10260
    .restart local v1    # "onSd":Z
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    iget-object v7, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 10261
    if-eqz v1, :cond_2

    .line 10262
    const-string v4, "PackageManager"

    const-string v5, "Cannot install update to system app on sdcard"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10263
    const/4 v4, -0x3

    monitor-exit v6

    goto :goto_1

    .line 10290
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 10265
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :try_start_1
    monitor-exit v6

    goto :goto_1

    .line 10267
    :cond_3
    if-eqz v1, :cond_4

    .line 10269
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 10272
    :cond_4
    if-ne v0, v4, :cond_5

    .line 10274
    monitor-exit v6

    goto :goto_1

    .line 10275
    :cond_5
    if-ne v0, v5, :cond_7

    .line 10290
    :cond_6
    monitor-exit v6

    .line 10293
    if-eqz v1, :cond_a

    move v4, v5

    .line 10294
    goto :goto_1

    .line 10279
    :cond_7
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$700(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 10280
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .line 10282
    :cond_8
    monitor-exit v6

    goto :goto_1

    .line 10287
    :cond_9
    const/4 v4, -0x4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 10296
    :cond_a
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 1

    .prologue
    .line 10234
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_0

    .line 10235
    const/4 v0, 0x0

    .line 10237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 10706
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 10707
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 10709
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    goto :goto_0
.end method

.method handleReturnCode()V
    .locals 3

    .prologue
    .line 10683
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 10684
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 10686
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 10687
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10688
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t delete temporary file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10693
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 10697
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 10698
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 10699
    return-void
.end method

.method public handleStartCopy()V
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10306
    const/16 v32, 0x1

    .line 10307
    .local v32, "ret":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/16 v21, 0x1

    .line 10308
    .local v21, "onSd":Z
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    const/16 v20, 0x1

    .line 10309
    .local v20, "onInt":Z
    :goto_1
    const/16 v26, 0x0

    .line 10311
    .local v26, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    if-nez v4, :cond_2

    .line 10312
    const-string v4, "PackageManager"

    const-string v5, "NPE encountered in handle start copy:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10313
    const/16 v32, -0x3

    .line 10314
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 10676
    :goto_2
    return-void

    .line 10307
    .end local v20    # "onInt":Z
    .end local v21    # "onSd":Z
    .end local v26    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 10308
    .restart local v21    # "onSd":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 10318
    .restart local v20    # "onInt":Z
    .restart local v26    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_2
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10320
    .local v25, "packageFileTemp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    const-wide/16 v7, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;

    move-result-object v27

    .line 10327
    .local v27, "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isUpdateOnSystemApp(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$3000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, v25

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAppBlockedByDPM(Ljava/io/File;Ljava/lang/String;ZI)Z
    invoke-static {v5, v0, v6, v4, v7}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 10331
    const/16 v32, -0x71

    .line 10428
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_3

    .line 10429
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v16, v0

    .line 10430
    .local v16, "loc":I
    const/4 v4, -0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_14

    .line 10431
    const/16 v32, -0x13

    .line 10464
    .end local v16    # "loc":I
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v12

    .line 10465
    .local v12, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 10467
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_1f

    .line 10472
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v37

    .line 10473
    .local v37, "userIdentifier":I
    const/4 v4, -0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_4

    .line 10475
    const/16 v37, 0x0

    .line 10482
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v37

    # invokes: Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiersLPr(I)Ljava/util/ArrayList;
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v30

    .line 10483
    .local v30, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    const/16 v19, 0x1

    .line 10490
    .local v19, "needVerificationForPersona":Z
    const/16 v31, 0x1

    .line 10493
    .local v31, "requiresVerificationForPersona":Z
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->needVerificationForPackage(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 10494
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping verification for Persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10495
    const/16 v31, 0x0

    .line 10500
    :cond_5
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_23

    if-eqz v31, :cond_23

    .line 10501
    new-instance v38, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10503
    .local v38, "verification":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 10504
    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10508
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 10509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "application/vnd.android.package-archive"

    const/16 v6, 0x200

    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v4, v0, v5, v6, v1}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v29

    .line 10520
    .local v29, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_6
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " verifiers for intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " optional verifiers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3608(Lcom/android/server/pm/PackageManagerService;)I

    move-result v39

    .line 10527
    .local v39, "verificationId":I
    const-string v4, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10529
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10532
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10534
    const-string v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10537
    const-string v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    move-object/from16 v0, v26

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10541
    const-string v4, "KNOXVerificationInstallerUid"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerUid:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10542
    const-string v4, "KNOXVerificationPackagePath"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v4, :cond_a

    .line 10546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 10547
    const-string v4, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10550
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 10551
    const-string v4, "android.intent.extra.ORIGINATING_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10554
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 10555
    const-string v4, "android.intent.extra.REFERRER"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10558
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v4

    if-ltz v4, :cond_9

    .line 10559
    const-string v4, "android.intent.extra.ORIGINATING_UID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10562
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v4

    if-ltz v4, :cond_a

    .line 10563
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10568
    :cond_a
    new-instance v40, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/pm/PackageVerificationState;-><init>(Ljava/util/ArrayList;Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 10570
    .local v40, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 10571
    .local v10, "M":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    if-ge v15, v10, :cond_1d

    .line 10572
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    .line 10573
    .local v42, "vp":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v42

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->componentName:Landroid/content/ComponentName;

    .line 10574
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageVerificationState;->addRequiredVerifierUid(I)V

    .line 10571
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 10327
    .end local v10    # "M":I
    .end local v12    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v15    # "i":I
    .end local v19    # "needVerificationForPersona":Z
    .end local v29    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v30    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v31    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v42    # "vp":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 10338
    :cond_c
    if-eqz v20, :cond_d

    if-eqz v21, :cond_d

    .line 10341
    const-string v4, "PackageManager"

    const-string v5, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10342
    const/16 v32, -0x13

    goto/16 :goto_4

    .line 10346
    :cond_d
    const-string v4, "devicestoragemonitor"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/DeviceStorageMonitorService;

    .line 10348
    .local v13, "dsm":Lcom/android/server/DeviceStorageMonitorService;
    if-nez v13, :cond_11

    .line 10349
    const-string v4, "PackageManager"

    const-string v5, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10350
    const-wide/16 v17, 0x0

    .line 10356
    .local v17, "lowThreshold":J
    :goto_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.defcontainer"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 10360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    if-nez v4, :cond_e

    const-string v4, "file"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 10361
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    .line 10362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_12

    .line 10365
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    const/high16 v5, 0x30000000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    .line 10373
    .local v22, "out":Landroid/os/ParcelFileDescriptor;
    :goto_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->encryptionParams:Landroid/content/pm/ContainerEncryptionParams;

    move-object/from16 v0, v22

    invoke-interface {v4, v5, v6, v0}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I

    move-result v32

    .line 10375
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 10377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mTempPackage:Ljava/io/File;

    move-object/from16 v23, v0

    .line 10379
    .local v23, "packageFile":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a4

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 10390
    .end local v22    # "out":Landroid/os/ParcelFileDescriptor;
    :goto_a
    if-eqz v23, :cond_10

    .line 10392
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    .line 10393
    .local v24, "packageFilePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-interface {v4, v0, v5, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;

    move-result-object v26

    .line 10400
    move-object/from16 v0, v26

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    .line 10402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v4, v0, v5}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;Z)J

    move-result-wide v33

    .line 10404
    .local v33, "size":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v5, v33, v17

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v4

    if-ltz v4, :cond_f

    .line 10405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-interface {v4, v0, v5, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;

    move-result-object v26

    .line 10415
    :cond_f
    move-object/from16 v0, v26

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v5, -0x6

    if-ne v4, v5, :cond_10

    .line 10417
    const/4 v4, -0x1

    move-object/from16 v0, v26

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10423
    .end local v24    # "packageFilePath":Ljava/lang/String;
    .end local v33    # "size":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto/16 :goto_4

    .line 10352
    .end local v17    # "lowThreshold":J
    .end local v23    # "packageFile":Ljava/io/File;
    :cond_11
    invoke-virtual {v13}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v17

    .restart local v17    # "lowThreshold":J
    goto/16 :goto_8

    .line 10367
    :catch_0
    move-exception v14

    .line 10368
    .local v14, "e":Ljava/io/FileNotFoundException;
    const/16 v22, 0x0

    .line 10369
    .restart local v22    # "out":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create temporary file for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_9

    .line 10423
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    .end local v22    # "out":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v4

    .line 10384
    :cond_12
    const/16 v23, 0x0

    .restart local v23    # "packageFile":Ljava/io/File;
    goto/16 :goto_a

    .line 10387
    .end local v23    # "packageFile":Ljava/io/File;
    :cond_13
    :try_start_4
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v23    # "packageFile":Ljava/io/File;
    goto/16 :goto_a

    .line 10432
    .end local v13    # "dsm":Lcom/android/server/DeviceStorageMonitorService;
    .end local v17    # "lowThreshold":J
    .end local v23    # "packageFile":Ljava/io/File;
    .restart local v16    # "loc":I
    :cond_14
    const/4 v4, -0x4

    move/from16 v0, v16

    if-ne v0, v4, :cond_15

    .line 10433
    const/16 v32, -0x1

    goto/16 :goto_5

    .line 10434
    :cond_15
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_16

    .line 10435
    const/16 v32, -0x4

    goto/16 :goto_5

    .line 10436
    :cond_16
    const/4 v4, -0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_17

    .line 10437
    const/16 v32, -0x2

    goto/16 :goto_5

    .line 10438
    :cond_17
    const/4 v4, -0x6

    move/from16 v0, v16

    if-ne v0, v4, :cond_18

    .line 10439
    const/16 v32, -0x3

    goto/16 :goto_5

    .line 10440
    :cond_18
    const/4 v4, -0x5

    move/from16 v0, v16

    if-ne v0, v4, :cond_19

    .line 10441
    const/16 v32, -0x14

    goto/16 :goto_5

    .line 10444
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I

    move-result v16

    .line 10445
    const/4 v4, -0x7

    move/from16 v0, v16

    if-ne v0, v4, :cond_1a

    .line 10446
    const/16 v32, -0x19

    goto/16 :goto_5

    .line 10447
    :cond_1a
    if-nez v21, :cond_3

    if-nez v20, :cond_3

    .line 10449
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_1b

    .line 10451
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 10452
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_5

    .line 10456
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    .line 10457
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_5

    .line 10513
    .end local v16    # "loc":I
    .restart local v12    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v30    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v31    # "requiresVerificationForPersona":Z
    .restart local v37    # "userIdentifier":I
    .restart local v38    # "verification":Landroid/content/Intent;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "application/vnd.android.package-archive"

    const/16 v6, 0x200

    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v29

    .restart local v29    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_6

    .line 10577
    .restart local v10    # "M":I
    .restart local v15    # "i":I
    .restart local v39    # "verificationId":I
    .restart local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 10579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v40

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v36

    .line 10586
    .local v36, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v36, :cond_1e

    .line 10587
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v11

    .line 10588
    .local v11, "N":I
    if-nez v11, :cond_22

    .line 10589
    const-string v4, "PackageManager"

    const-string v5, "Additional verifiers required, but none installed."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10590
    const/16 v32, -0x16

    .line 10603
    .end local v11    # "N":I
    :cond_1e
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_1f

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1f

    .line 10605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v40

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToRequiredVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)Z

    .line 10610
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 10654
    .end local v10    # "M":I
    .end local v15    # "i":I
    .end local v19    # "needVerificationForPersona":Z
    .end local v29    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v30    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v31    # "requiresVerificationForPersona":Z
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v37    # "userIdentifier":I
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1f
    :goto_b
    const/4 v4, 0x1

    move/from16 v0, v32

    if-eq v0, v4, :cond_20

    .line 10655
    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "PackageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Install Application "

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v43, " failed"

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 10660
    :cond_20
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_21

    .line 10662
    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_21

    .line 10663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 10666
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2600()Landroid/content/IHarmonyEAS;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 10667
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2600()Landroid/content/IHarmonyEAS;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 10675
    :cond_21
    :goto_c
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    goto/16 :goto_2

    .line 10592
    .restart local v10    # "M":I
    .restart local v11    # "N":I
    .restart local v15    # "i":I
    .restart local v19    # "needVerificationForPersona":Z
    .restart local v29    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v30    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v31    # "requiresVerificationForPersona":Z
    .restart local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v37    # "userIdentifier":I
    .restart local v38    # "verification":Landroid/content/Intent;
    .restart local v39    # "verificationId":I
    .restart local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_22
    const/4 v15, 0x0

    :goto_d
    if-ge v15, v11, :cond_1e

    .line 10593
    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/ComponentName;

    .line 10595
    .local v41, "verifierComponent":Landroid/content/ComponentName;
    new-instance v35, Landroid/content/Intent;

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 10596
    .local v35, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 10598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10592
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 10648
    .end local v10    # "M":I
    .end local v11    # "N":I
    .end local v15    # "i":I
    .end local v29    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v35    # "sufficientIntent":Landroid/content/Intent;
    .end local v36    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v38    # "verification":Landroid/content/Intent;
    .end local v39    # "verificationId":I
    .end local v40    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v41    # "verifierComponent":Landroid/content/ComponentName;
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v32

    goto/16 :goto_b

    .line 10669
    .end local v19    # "needVerificationForPersona":Z
    .end local v30    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v31    # "requiresVerificationForPersona":Z
    .end local v37    # "userIdentifier":I
    :catch_1
    move-exception v28

    .line 10670
    .local v28, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 10702
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
