.class public Lcom/android/server/GoodContainer;
.super Lcom/android/server/SEAMSContainer;
.source "GoodContainer.java"


# static fields
.field private static final ALLOWED_SEINFO:[Ljava/lang/String;

.field private static final GOOD_AGENT_PRIOR_SEINFO:Ljava/lang/String; = "good_trustonicpartner"

.field private static final GOOD_MAC_PERM:Ljava/lang/String; = "/data/security/good/mac_permissions.xml"

.field private static final GOOD_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/good"

.field private static final GOOD_SEAPP_CONTEXTS:Ljava/lang/String; = "/data/security/good/seapp_contexts"

.field private static final GSD_CATEGORY:I = 0x66

.field private static final GSD_DATATYPE:Ljava/lang/String; = "good_app_data_file"

.field private static final GSD_DOMAIN:Ljava/lang/String; = "good_app"

.field private static final GSD_SEINFO:Ljava/lang/String; = "gsd"

.field private static final GTD_DATATYPE:Ljava/lang/String; = "gad_untrusted_app_data_file"

.field private static final GTD_DOMAIN:Ljava/lang/String; = "gad_untrusted_app"

.field private static final GTD_SEINFO:Ljava/lang/String; = "gtd"

.field private static final MDM_SEAPP_CONTEXTS:Ljava/lang/String; = "/data/security/seapp_contexts"

.field private static final S_MAC_POLICY_FILE:[Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "GoodContainer"

.field private static final UNTRUSTED_CATEGORY_BEGIN:I = 0x1f5

.field private static final USER_ISOLATED_APP:Ljava/lang/String; = "_isolated"

.field private static final USER_NORMAL_APP:Ljava/lang/String; = "_app"

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private final mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "keyboard"

    aput-object v1, v0, v3

    const-string/jumbo v1, "untrusted"

    aput-object v1, v0, v4

    const-string v1, "default"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/GoodContainer;->ALLOWED_SEINFO:[Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/spota/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    const-string v2, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x0

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/GoodContainer;->S_MAC_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    .line 109
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 110
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    .line 111
    return-void
.end method


# virtual methods
.method public activateDomain(I)I
    .locals 23
    .param p1, "uid"    # I

    .prologue
    .line 117
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "activateDomains_begin"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 124
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "Activation Status is true"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v2, -0x1

    .line 334
    :goto_0
    return v2

    .line 129
    :cond_0
    :try_start_0
    new-instance v15, Ljava/io/File;

    const-string v2, "/data/security/good"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v15, "goodDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist. Creating dir"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 133
    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-virtual {v15, v2, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 134
    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-virtual {v15, v2, v4}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    const/16 v17, 0x0

    .line 143
    .local v17, "macPermFile":Ljava/io/File;
    const/16 v20, 0x0

    .line 144
    .local v20, "seappConfig":Ljava/io/File;
    const/16 v19, 0x0

    .line 145
    .local v19, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .line 148
    .local v3, "packageName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/good/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .end local v17    # "macPermFile":Ljava/io/File;
    .local v1, "macPermFile":Ljava/io/File;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "packagesList":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    if-nez v2, :cond_2

    .line 151
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no packages associated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 152
    const/4 v2, -0x1

    goto :goto_0

    .line 136
    .end local v1    # "macPermFile":Ljava/io/File;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v15    # "goodDir":Ljava/io/File;
    .end local v18    # "packagesList":[Ljava/lang/String;
    .end local v19    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "seappConfig":Ljava/io/File;
    :catch_0
    move-exception v14

    .line 137
    .local v14, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "Issue with good directory"

    invoke-virtual {v2, v4, v5, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 154
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v1    # "macPermFile":Ljava/io/File;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v15    # "goodDir":Ljava/io/File;
    .restart local v18    # "packagesList":[Ljava/lang/String;
    .restart local v19    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v20    # "seappConfig":Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    aget-object v3, v18, v2

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x40

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 157
    if-nez v19, :cond_3

    .line 158
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "couldn\'t get packageInfo. pkgInfo is null"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 161
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v22, v0

    .line 162
    .local v22, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v22

    array-length v2, v0

    new-array v13, v2, [Ljava/lang/String;

    .line 163
    .local v13, "certSignatures":[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 164
    aget-object v2, v22, v16

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v16

    .line 163
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 167
    :cond_4
    invoke-static {v3, v13}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 169
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "activateDomain, Got Application info"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz v12, :cond_5

    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string v4, "good_trustonicpartner"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v12, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v2, :cond_5

    iget v2, v12, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v4, 0x1f5

    if-ge v2, v4, :cond_5

    .line 172
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activateDomain, part of other container, cat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 176
    :cond_5
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "activateDomain - addEntryToMac - fail to add entry to mac_permissions.xml"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 183
    :cond_6
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with addEntryToMac"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 186
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "fail to load the container setting"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 190
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 192
    :cond_7
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with reload container setting"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v21, Ljava/io/File;

    const-string v2, "/data/security/good/seapp_contexts"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    .end local v20    # "seappConfig":Ljava/io/File;
    .local v21, "seappConfig":Ljava/io/File;
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 199
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 202
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 203
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully add gsd entry to seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 208
    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 210
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 214
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 216
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully add gtd entry to seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 220
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    .line 222
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 226
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 228
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 230
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully add isolated gsd entry to seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 234
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    .line 236
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 240
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 242
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 244
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 246
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully add isolated gtd entry to seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 250
    :cond_b
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with addSEAppContext"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with reload policy"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    .line 257
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to relabelAppDir for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 262
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 264
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 266
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 268
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 270
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 274
    :cond_c
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with relabelAppDir"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "persist.security.good.enable"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 280
    const-wide/16 v4, 0x3e8

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 284
    :goto_2
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    if-nez v2, :cond_d

    .line 285
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "activateDomain - fail to set system property"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 290
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 291
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 293
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 295
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 297
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 299
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 301
    const-string v2, "persist.security.good.enable"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 304
    :cond_d
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with set system property"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 334
    const/16 v2, 0x66

    goto/16 :goto_0

    .line 305
    .end local v1    # "macPermFile":Ljava/io/File;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "certSignatures":[Ljava/lang/String;
    .end local v16    # "i":I
    .end local v18    # "packagesList":[Ljava/lang/String;
    .end local v21    # "seappConfig":Ljava/io/File;
    .end local v22    # "signatures":[Landroid/content/pm/Signature;
    .restart local v17    # "macPermFile":Ljava/io/File;
    .restart local v20    # "seappConfig":Ljava/io/File;
    :catch_1
    move-exception v14

    move-object/from16 v1, v17

    .line 306
    .end local v17    # "macPermFile":Ljava/io/File;
    .restart local v1    # "macPermFile":Ljava/io/File;
    .restart local v14    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "exceptions in activateDomain"

    invoke-virtual {v2, v4, v5, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    if-eqz v19, :cond_e

    .line 309
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 313
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 314
    if-eqz v20, :cond_f

    .line 315
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 317
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 319
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 321
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 324
    :cond_f
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 328
    const-string v2, "persist.security.good.enable"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_10
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 281
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v20    # "seappConfig":Ljava/io/File;
    .restart local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "certSignatures":[Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v18    # "packagesList":[Ljava/lang/String;
    .restart local v21    # "seappConfig":Ljava/io/File;
    .restart local v22    # "signatures":[Landroid/content/pm/Signature;
    :catch_2
    move-exception v2

    goto/16 :goto_2

    .line 305
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "certSignatures":[Ljava/lang/String;
    .end local v16    # "i":I
    .end local v18    # "packagesList":[Ljava/lang/String;
    .end local v21    # "seappConfig":Ljava/io/File;
    .end local v22    # "signatures":[Landroid/content/pm/Signature;
    .restart local v20    # "seappConfig":Ljava/io/File;
    :catch_3
    move-exception v14

    goto/16 :goto_3

    .end local v20    # "seappConfig":Ljava/io/File;
    .restart local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "certSignatures":[Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v18    # "packagesList":[Ljava/lang/String;
    .restart local v21    # "seappConfig":Ljava/io/File;
    .restart local v22    # "signatures":[Landroid/content/pm/Signature;
    :catch_4
    move-exception v14

    move-object/from16 v20, v21

    .end local v21    # "seappConfig":Ljava/io/File;
    .restart local v20    # "seappConfig":Ljava/io/File;
    goto/16 :goto_3
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 339
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addAppToContainer, instance of GoodContainer"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v11, 0x0

    .line 342
    .local v11, "certMatch":Z
    const/4 v10, 0x0

    .line 343
    .local v10, "appNotInstalled":Z
    const/4 v7, -0x1

    .line 345
    .local v7, "addSuccess":I
    invoke-virtual {p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v3

    if-nez v3, :cond_0

    .line 346
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "Activation Status is false, activateDomain and try again"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v3, -0x1

    .line 460
    :goto_0
    return v3

    .line 350
    :cond_0
    const/16 v3, 0x66

    move/from16 v0, p3

    if-eq v0, v3, :cond_1

    .line 351
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerId mismatch, expected id:102, and got:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/16 v3, -0xc

    goto :goto_0

    .line 355
    :cond_1
    const/4 v2, 0x0

    .line 356
    .local v2, "signature":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v13, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/GoodContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 358
    if-nez p2, :cond_2

    .line 359
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, " addAppToContainer failed, no certificate found"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/16 v3, -0xe

    goto :goto_0

    .line 361
    :cond_2
    if-nez v13, :cond_4

    .line 362
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v3, 0x0

    aget-object v2, p2, v3

    .line 364
    const/4 v10, 0x1

    .line 385
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/security/good/mac_permissions.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "macPermFile":Ljava/io/File;
    if-nez v1, :cond_6

    .line 387
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addAppToContainer: error in new file /data/security/good/mac_permissions.xml"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v3, -0x1

    goto :goto_0

    .line 367
    .end local v1    # "macPermFile":Ljava/io/File;
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "signature":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 371
    .restart local v2    # "signature":Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 372
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addAppToContainer, cert matches"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v11, 0x1

    .line 374
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToContainer, certMatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_5
    if-nez v11, :cond_3

    .line 379
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/16 v3, -0xd

    goto/16 :goto_0

    .line 394
    .restart local v1    # "macPermFile":Ljava/io/File;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/GoodContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 395
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v3, -0x8

    goto/16 :goto_0

    .line 398
    :cond_7
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 400
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addAppToContainer, Got Application info"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-eqz v9, :cond_b

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 403
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v3, :cond_8

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v4, 0x1f5

    if-ge v3, v4, :cond_8

    .line 404
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToContainer, part of other container, cat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v9, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/16 v3, -0x9

    goto/16 :goto_0

    .line 407
    :cond_8
    const/4 v8, 0x0

    .line 408
    .local v8, "allowed":Z
    const/4 v12, 0x0

    .local v12, "cnt":I
    :goto_1
    sget-object v3, Lcom/android/server/GoodContainer;->ALLOWED_SEINFO:[Ljava/lang/String;

    array-length v3, v3

    if-ge v12, v3, :cond_9

    .line 409
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v4, Lcom/android/server/GoodContainer;->ALLOWED_SEINFO:[Ljava/lang/String;

    aget-object v4, v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 410
    const/4 v8, 0x1

    .line 415
    :cond_9
    if-nez v8, :cond_b

    .line 416
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToContainer, not an allowed seinfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v3, -0x3

    goto/16 :goto_0

    .line 408
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 421
    .end local v8    # "allowed":Z
    .end local v12    # "cnt":I
    :cond_b
    if-eqz v9, :cond_c

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/16 v4, 0x66

    const/16 v5, 0x1f4

    invoke-static {v3, v4, v5}, Lcom/android/server/GoodContainer;->checkCategoryRange(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 423
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, " Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/16 v3, -0x9

    goto/16 :goto_0

    .line 428
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_d

    .line 429
    const-string v4, "gsd"

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 437
    :goto_2
    if-eqz v7, :cond_f

    .line 438
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "addEntryToMac failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    .line 439
    goto/16 :goto_0

    .line 430
    :cond_d
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_e

    .line 431
    const-string v4, "gtd"

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    goto :goto_2

    .line 433
    :cond_e
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a supported appType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v3, -0x3

    goto/16 :goto_0

    .line 441
    :cond_f
    if-nez v10, :cond_12

    .line 443
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "App is installed - Perform Load Container Setting"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    .line 447
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "fail to load the container setting"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 451
    :cond_10
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with reload container setting"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    .line 454
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to relabelAppDir for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 458
    :cond_11
    sget-object v3, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with relabelAppDir"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public deActivateDomain(I)I
    .locals 18
    .param p1, "uid"    # I

    .prologue
    .line 464
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "deActivateDomains_begin"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 471
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "Activation Status is False"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v2, -0x1

    .line 660
    :goto_0
    return v2

    .line 475
    :cond_0
    const/4 v13, 0x0

    .line 476
    .local v13, "macPermFile":Ljava/io/File;
    const/16 v16, 0x0

    .line 477
    .local v16, "seappConfig":Ljava/io/File;
    const/4 v3, 0x0

    .line 478
    .local v3, "packageName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 481
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/security/good/mac_permissions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v13    # "macPermFile":Ljava/io/File;
    .local v1, "macPermFile":Ljava/io/File;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 483
    .local v14, "packagesList":[Ljava/lang/String;
    array-length v2, v14

    if-nez v2, :cond_1

    .line 484
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no packages associated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v2, -0x1

    goto :goto_0

    .line 487
    :cond_1
    const/4 v2, 0x0

    aget-object v3, v14, v2

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mPM:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x40

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 490
    if-nez v15, :cond_2

    .line 491
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "couldn\'t get packageInfo. pkgInfo is null"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v2, -0x1

    goto :goto_0

    .line 494
    :cond_2
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/android/server/GoodContainer;->isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    .line 495
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "Good Container not empty. Please remove all apps from container before deactivating"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/16 v2, -0xb

    goto :goto_0

    .line 499
    :cond_3
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 502
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "removeEntryFromMac - fail to remove entry from mac_permissions.xml"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 505
    :cond_4
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with removeEntryFromMac"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 508
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "fail to load the container setting"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 513
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 515
    :cond_5
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with reload container setting"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v17, Ljava/io/File;

    const-string v2, "/data/security/good/seapp_contexts"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 519
    .end local v16    # "seappConfig":Ljava/io/File;
    .local v17, "seappConfig":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    .line 521
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully remove gsd entry from seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 527
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 528
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 531
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 533
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully remove gtd entry from seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 540
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 542
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 545
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 547
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully remove isolated gsd entry from seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 553
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 554
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 556
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 558
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 561
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 563
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "cound not successfully remove isolated gtd entry from seapp_contexts"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 569
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 570
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 572
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 574
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 576
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 578
    :cond_9
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with removeSEAppContext"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with reload policy"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a

    .line 584
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to relabelAppDir for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 590
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 592
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 594
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 596
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 598
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 602
    :cond_a
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with relabelAppDir"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v2, "persist.security.good.enable"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 608
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 611
    :goto_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    .line 612
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "SetActivationStatus - fail to set system property to 0"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 618
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 619
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 621
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 623
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 625
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 627
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 629
    const-string v2, "persist.security.good.enable"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 632
    :cond_b
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "done with  set system property"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 660
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 633
    .end local v1    # "macPermFile":Ljava/io/File;
    .end local v14    # "packagesList":[Ljava/lang/String;
    .end local v17    # "seappConfig":Ljava/io/File;
    .restart local v13    # "macPermFile":Ljava/io/File;
    .restart local v16    # "seappConfig":Ljava/io/File;
    :catch_0
    move-exception v12

    move-object v1, v13

    .line 634
    .end local v13    # "macPermFile":Ljava/io/File;
    .restart local v1    # "macPermFile":Ljava/io/File;
    .local v12, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "GoodContainer"

    const-string v5, "exceptions in deActivateDomain"

    invoke-virtual {v2, v4, v5, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 635
    if-eqz v15, :cond_c

    .line 636
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gsd"

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/GoodContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 641
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    .line 642
    if-eqz v16, :cond_d

    .line 643
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 645
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 647
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gsd"

    const-string v9, "good_app"

    const-string v10, "good_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 649
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_isolated"

    const/4 v7, 0x0

    const-string v8, "gtd"

    const-string v9, "gad_untrusted_app"

    const-string v10, "gad_untrusted_app_data_file"

    const/16 v11, 0x66

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/GoodContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 653
    :cond_d
    const-string v2, "selinux.reload_policy"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v2

    if-nez v2, :cond_e

    .line 656
    const-string v2, "persist.security.good.enable"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_e
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 609
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "seappConfig":Ljava/io/File;
    .restart local v14    # "packagesList":[Ljava/lang/String;
    .restart local v17    # "seappConfig":Ljava/io/File;
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 633
    .end local v14    # "packagesList":[Ljava/lang/String;
    .end local v17    # "seappConfig":Ljava/io/File;
    .restart local v16    # "seappConfig":Ljava/io/File;
    :catch_2
    move-exception v12

    goto/16 :goto_2

    .end local v16    # "seappConfig":Ljava/io/File;
    .restart local v14    # "packagesList":[Ljava/lang/String;
    .restart local v17    # "seappConfig":Ljava/io/File;
    :catch_3
    move-exception v12

    move-object/from16 v16, v17

    .end local v17    # "seappConfig":Ljava/io/File;
    .restart local v16    # "seappConfig":Ljava/io/File;
    goto/16 :goto_2
.end method

.method public getActivationStatus()I
    .locals 5

    .prologue
    .line 668
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "GoodContainer"

    const-string v4, "getActivationStatus_begin"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "activation_status":Z
    const/4 v1, 0x0

    .line 671
    .local v1, "val":Ljava/lang/String;
    const-string v2, "persist.security.good.enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 672
    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    const/4 v0, 0x1

    .line 675
    :cond_0
    if-eqz v0, :cond_1

    .line 676
    sget-object v2, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "GoodContainer"

    const-string v4, "Activation Status is true"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v2, 0x1

    .line 679
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 4
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v3, 0x1

    .line 798
    sget-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "GoodContainer"

    const-string v2, "Entered Get Package Names from SE Container"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    if-ne p2, v3, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v0

    .line 811
    :goto_0
    return-object v0

    .line 802
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 804
    sget-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "GoodContainer"

    const-string v2, "Calling getContainerAllowPackageNamesFromSEContainer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 809
    :cond_1
    sget-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "GoodContainer"

    const-string v2, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "category"    # I

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 767
    const-string p1, "_app"

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v4, 0x1

    .line 774
    sget-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "GoodContainer"

    const-string v5, "enter getContainerIDfromPackageName"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v1, "dummy"

    .line 778
    .local v1, "param1":Ljava/lang/String;
    const-string v2, "dummy"

    .line 779
    .local v2, "param2":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/GoodContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 780
    if-ne p2, v4, :cond_0

    .line 782
    sget-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "GoodContainer"

    const-string v5, "apptype = GSD"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 785
    .local v7, "retContainerID":I
    new-array v6, v4, [I

    const/4 v0, 0x0

    aput v7, v6, v0

    .line 793
    .end local v7    # "retContainerID":I
    :goto_0
    return-object v6

    .line 787
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 789
    sget-object v0, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "GoodContainer"

    const-string v5, "apptype = GTD"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/android/server/GoodContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v6

    goto :goto_0

    .line 793
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 683
    sget-object v7, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "GoodContainer"

    const-string v9, "removeAppFromContainer, instance of GoodContainer"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, "appNotInstalled":Z
    const/4 v1, 0x0

    .line 688
    .local v1, "certMatch":Z
    invoke-virtual {p0}, Lcom/android/server/GoodContainer;->getActivationStatus()I

    move-result v7

    if-nez v7, :cond_0

    .line 689
    sget-object v6, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    const-string v8, "Activation Status is False"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :goto_0
    return v5

    .line 693
    :cond_0
    const/4 v3, 0x0

    .line 694
    .local v3, "signature":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v4, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/GoodContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 697
    if-nez p2, :cond_1

    .line 698
    sget-object v6, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    const-string v8, " removeAppFromContainer failed, no certificate found"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    if-nez v4, :cond_3

    .line 701
    sget-object v7, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "GoodContainer"

    const-string v9, "removeAppFromContainer, signature is null, package not installed yet"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    aget-object v3, p2, v6

    .line 704
    const/4 v0, 0x1

    .line 725
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/security/good/mac_permissions.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v2, "macPermFile":Ljava/io/File;
    if-nez v2, :cond_5

    .line 727
    sget-object v6, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeAppFromContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v2    # "macPermFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "signature":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 711
    .restart local v3    # "signature":Ljava/lang/String;
    aget-object v7, p2, v6

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 712
    sget-object v7, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "GoodContainer"

    const-string v9, "addAppToContainer, cert matches"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v1, 0x1

    .line 717
    :cond_4
    if-nez v1, :cond_2

    .line 718
    sget-object v6, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    const-string v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    .restart local v2    # "macPermFile":Ljava/io/File;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/GoodContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 732
    sget-object v5, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "GoodContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is running"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const/4 v5, -0x8

    goto/16 :goto_0

    .line 739
    :cond_6
    const/16 v7, 0x66

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, p1, v7, v5}, Lcom/android/server/GoodContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 741
    sget-object v6, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    const-string v8, "removeAppFromContainer: removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 744
    :cond_7
    if-nez v0, :cond_a

    .line 746
    sget-object v7, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "GoodContainer"

    const-string v9, "App is installed - Perform Load Container Setting"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0, p1, v6}, Lcom/android/server/GoodContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    .line 750
    sget-object v6, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    const-string v8, "fail to load the container setting"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    :cond_8
    sget-object v7, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "GoodContainer"

    const-string v9, "done with reload container setting"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v7, p0, Lcom/android/server/GoodContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    .line 756
    sget-object v6, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to relabelAppDir for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :cond_9
    sget-object v5, Lcom/android/server/GoodContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "GoodContainer"

    const-string v8, "done with relabelAppDir"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move v5, v6

    .line 762
    goto/16 :goto_0
.end method
