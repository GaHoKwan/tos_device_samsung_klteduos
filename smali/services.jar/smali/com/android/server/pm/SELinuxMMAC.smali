.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$1;,
        Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;,
        Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final FILECOPIER_METADATA_PREFIX:Ljava/lang/String; = "rcpFileCopier"

.field private static final GENERIC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_SEINFO:Ljava/lang/String; = "generic_mdm"

.field private static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field private static final MMAC_DENY:Ljava/lang/String; = "MMAC_DENIAL:"

.field private static final MMAC_ENFORCE_PROPERTY:Ljava/lang/String; = "persist.mmac.enforce"

.field public static final MYCONTAINER:I = 0x4

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field public static final PERSONA_CONTAINER:I = 0x3

.field private static final PKG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_METADATA_PREFIX:Ljava/lang/String; = "RCPProviderName_"

.field private static final PROXY_METADATA_PREFIX:Ljava/lang/String; = "proxyName"

.field private static final SECURED_APPTYPE:I = 0x1

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final STIG_CONTAINER:I = 0x2

.field private static final SYNCER_METADATA_PREFIX:Ljava/lang/String; = "RCPSyncerName_"

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field static final TAG1:Ljava/lang/String; = "MyContainer"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static containerIDTable:[I

.field private static final mContainerAllowPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

.field private static final mNoAuditPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 122
    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    .line 135
    sput-object v5, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/spota/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    return-void
.end method

.method private static arraylist_to_int_array(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "MyContainer"

    const-string v5, "Entered arraylist_to_int_array in SELinuxMMAC"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 478
    :cond_0
    const-string v4, "MyContainer"

    const-string v5, " arraylist_to_int_array returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    .line 488
    :cond_1
    return-object v0

    .line 482
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 483
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 484
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 485
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .locals 20
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v13, :cond_13

    aget-object v15, v2, v5

    .line 760
    .local v15, "s":Landroid/content/pm/Signature;
    if-nez v15, :cond_1

    .line 759
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 763
    :cond_1
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 764
    const-string v17, "SELinuxMMAC"

    const-string v18, "assignSeinfoValue, matching key found"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 766
    .local v16, "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 772
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "assignSeinfoValue , step 2, pkgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", seinfo:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 775
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 776
    .local v4, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 786
    .end local v4    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_2
    :goto_2
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 787
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 788
    .local v3, "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    .line 789
    .restart local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->certs:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 792
    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 796
    :cond_3
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "assignSeinfoValue, step 3, pkgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", seinfo:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    :cond_4
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 800
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 801
    .local v14, "noAuditKey":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isNoAudit:B

    .line 805
    .end local v14    # "noAuditKey":Ljava/lang/String;
    :cond_5
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "assignSeinfoValue, step 4, pkgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", seinfo:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v17, "platform"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "shared"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 810
    const/4 v7, 0x0

    .line 811
    .local v7, "isProvider":Z
    const/4 v9, 0x0

    .line 812
    .local v9, "isSyncer":Z
    const/4 v8, 0x0

    .line 813
    .local v8, "isProxy":Z
    const/4 v6, 0x0

    .line 815
    .local v6, "isFileCopier":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 816
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_11

    .line 817
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 818
    .local v10, "it":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 819
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 820
    .local v11, "key":Ljava/lang/String;
    const-string v17, "RCPProviderName_"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 821
    const/4 v7, 0x1

    goto :goto_3

    .line 779
    .end local v6    # "isFileCopier":Z
    .end local v7    # "isProvider":Z
    .end local v8    # "isProxy":Z
    .end local v9    # "isSyncer":Z
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const-string v18, "container"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto/16 :goto_2

    .line 822
    .restart local v6    # "isFileCopier":Z
    .restart local v7    # "isProvider":Z
    .restart local v8    # "isProxy":Z
    .restart local v9    # "isSyncer":Z
    .restart local v10    # "it":Ljava/util/Iterator;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v17, "RCPSyncerName_"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 823
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 824
    :cond_a
    const-string v17, "proxyName"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 825
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 826
    :cond_b
    const-string v17, "rcpFileCopier"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 827
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 832
    .end local v11    # "key":Ljava/lang/String;
    :cond_c
    if-nez v7, :cond_d

    if-nez v9, :cond_d

    if-nez v8, :cond_d

    if-eqz v6, :cond_11

    .line 833
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 835
    if-eqz v7, :cond_e

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 840
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as a Provider Agent App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_e
    if-eqz v9, :cond_f

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 848
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as a Syncer Agent App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_f
    if-eqz v8, :cond_10

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 858
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as a Proxy Agent App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_10
    if-eqz v6, :cond_11

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 868
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as an RCP File Copier App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .end local v6    # "isFileCopier":Z
    .end local v7    # "isProvider":Z
    .end local v8    # "isProxy":Z
    .end local v9    # "isSyncer":Z
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "s":Landroid/content/pm/Signature;
    .end local v16    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_11
    :goto_4
    return-void

    .line 875
    .restart local v15    # "s":Landroid/content/pm/Signature;
    .restart local v16    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_12
    const-string v17, "SELinuxMMAC"

    const-string v18, "Install policy instance is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 881
    .end local v15    # "s":Landroid/content/pm/Signature;
    .end local v16    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_13
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_4

    .line 888
    :cond_14
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 894
    const-string v17, "MyContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " assignseinfovalue, <package name > = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "<seinfo> = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "<category> = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "<allow category> = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 897
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x3ff

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 902
    const-string v17, "MyContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " assignseinfovalue, no default seinfo case, <package name > = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "<seinfo> = null, <category> = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "<allow category> = null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public static checkContainerAllowCategory(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1705
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    const-string v0, "SELinuxMMAC"

    const-string v1, " Given Package Name has a non-empty Container Allow Category"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v0, 0x1

    .line 1709
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 268
    const-string v3, "MyContainer"

    const-string v4, "Entered checkIfSingleContainerOwnerIsBeingAdded in SELinuxMMAC"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 271
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/4 v0, 0x0

    .line 272
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 273
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 274
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    const-string v3, "MyContainer"

    const-string v4, "checkIfSingleContainerOwnerIsBeingAdded - GENERIC_MDM_INFO containsKey genericMDMID"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 279
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 283
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v7, "MyContainer"

    const-string v8, "Entered create my container ID"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v8, "container"

    monitor-enter v8

    .line 220
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v7, 0x12c

    if-ge v3, v7, :cond_4

    .line 222
    :try_start_0
    const-string v7, "MyContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create my container ID - i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    .line 226
    const-string v7, "MyContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create my container ID - containerIDTable["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] == 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 229
    .local v2, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/4 v0, 0x0

    .line 230
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v2, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 231
    iput-object p0, v2, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 232
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    const-string v7, "MyContainer"

    const-string v9, "Create my container ID - GENERIC_MDM_INFO containsKey genericMDMID"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 252
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    .line 253
    add-int/lit16 v7, v3, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit16 v6, v3, 0xc9

    .line 257
    .local v6, "newContainerID":I
    const-string v7, "MyContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create my container ID - Returning new container = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    add-int/lit16 v7, v3, 0xc9

    monitor-exit v8

    .line 262
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v6    # "newContainerID":I
    :goto_2
    return v7

    .line 238
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 239
    .local v5, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    const-string v7, "MyContainer"

    const-string v9, "Package Name Match but Certificate does not match"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    .line 263
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 248
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_2
    :try_start_1
    const-string v7, "MyContainer"

    const-string v9, "Create my container ID - GENERIC_MDM_INFO does not contain Key genericMDMID. Creating new"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 220
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 262
    :cond_4
    const/4 v7, -0x7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .locals 44
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "notInsidePackageTag"    # Z
    .param p2, "certs"    # Ljava/lang/String;
    .param p3, "existingPolicy"    # Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1156
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1157
    .local v3, "denyPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1159
    .local v10, "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1162
    .local v4, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v36

    .line 1163
    .local v36, "outerDepth":I
    const/16 v20, 0x0

    .line 1164
    .local v20, "allowAll":Z
    const/16 v32, 0x0

    .line 1165
    .local v32, "hasContainerAllowCategory":Z
    const/4 v5, 0x0

    .line 1166
    .local v5, "seinfo":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1167
    .local v6, "seandroidCategory":I
    const/4 v7, 0x0

    .line 1168
    .local v7, "seandroidAllowCategory":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1169
    .local v21, "allowCategoryValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1171
    .local v8, "isContainerApp":Z
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v43

    .local v43, "type":I
    const/4 v9, 0x1

    move/from16 v0, v43

    if-eq v0, v9, :cond_1b

    const/4 v9, 0x3

    move/from16 v0, v43

    if-ne v0, v9, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move/from16 v0, v36

    if-le v9, v0, :cond_1b

    .line 1172
    :cond_1
    const/4 v9, 0x3

    move/from16 v0, v43

    if-eq v0, v9, :cond_0

    const/4 v9, 0x4

    move/from16 v0, v43

    if-eq v0, v9, :cond_0

    .line 1176
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v41

    .line 1177
    .local v41, "tagName":Ljava/lang/String;
    const-string v9, "seinfo"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1178
    const/4 v9, 0x0

    const-string/jumbo v11, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1179
    .local v40, "seinfoValue":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1180
    move-object/from16 v5, v40

    .line 1182
    const-string v9, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " determineInstallPolicyType <seinfo> = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :goto_1
    const/4 v9, 0x0

    const-string v11, "category"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1188
    .local v23, "categoryValue":Ljava/lang/String;
    if-eqz v23, :cond_4

    .line 1190
    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1198
    :goto_2
    const/4 v9, 0x0

    const-string v11, "allowcategory"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1199
    if-eqz v21, :cond_5

    .line 1200
    move-object/from16 v7, v21

    .line 1350
    .end local v23    # "categoryValue":Ljava/lang/String;
    .end local v40    # "seinfoValue":Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1185
    .restart local v40    # "seinfoValue":Ljava/lang/String;
    :cond_3
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<seinfo> without value at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1191
    .restart local v23    # "categoryValue":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 1192
    .local v29, "e":Ljava/lang/NumberFormatException;
    const-string v9, "SELinuxMMAC"

    const-string v11, " Category value is incorrect"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1195
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const/16 v6, 0x3ff

    .line 1196
    const-string v9, "SELinuxMMAC"

    const-string v11, "The default (for untrusted app) category value is 1023"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1202
    :cond_5
    const-string v7, "0,501-1023"

    .line 1203
    const-string v9, "SELinuxMMAC"

    const-string v11, "The default (for untrusted app) allowcategory value is 0,501-1023"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1206
    .end local v23    # "categoryValue":Ljava/lang/String;
    .end local v40    # "seinfoValue":Ljava/lang/String;
    :cond_6
    const-string v9, "container"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1207
    const/4 v9, 0x0

    const-string/jumbo v11, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1208
    .local v28, "containerflag":Ljava/lang/String;
    if-eqz v28, :cond_2

    const-string/jumbo v9, "true"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1209
    const/4 v8, 0x1

    goto :goto_3

    .line 1211
    .end local v28    # "containerflag":Ljava/lang/String;
    :cond_7
    const-string v9, "allow-permission"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1212
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1213
    .local v37, "permName":Ljava/lang/String;
    if-eqz v37, :cond_8

    .line 1214
    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1216
    :cond_8
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<allow-permission> without name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1218
    .end local v37    # "permName":Ljava/lang/String;
    :cond_9
    const-string v9, "deny-permission"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1219
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1220
    .restart local v37    # "permName":Ljava/lang/String;
    if-eqz v37, :cond_a

    .line 1221
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1223
    :cond_a
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<deny-permission> without name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1225
    .end local v37    # "permName":Ljava/lang/String;
    :cond_b
    const-string v9, "allow-all"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1226
    const-string v9, "MyContainer"

    const-string v11, " determineInstallPolicyType <allowall> = true"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v20, 0x1

    goto/16 :goto_3

    .line 1228
    :cond_c
    const-string v9, "service"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1229
    new-instance v27, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 1230
    .local v27, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v9, 0x0

    move-object/from16 v0, v27

    iput-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 1231
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1232
    .local v38, "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "category"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1233
    .local v22, "category":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "seinfo"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1234
    .local v34, "innerSeinfo":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "allowcategory"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1235
    .local v33, "innerAllowCategory":Ljava/lang/String;
    if-nez v33, :cond_d

    .line 1236
    const-string v33, "0,501-1023"

    .line 1238
    :cond_d
    if-eqz v38, :cond_2

    if-eqz v22, :cond_2

    .line 1240
    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v27

    iput v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1244
    :goto_4
    if-eqz v34, :cond_f

    .line 1245
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    .line 1246
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 1255
    :cond_e
    :goto_5
    move-object/from16 v0, v27

    iget-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1256
    const-string v9, "generic_mdm"

    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1258
    const-string v9, "MyContainer"

    const-string v11, "containerInfo.seInfo equals GENERIC_SEINFO"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    new-instance v31, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 1261
    .local v31, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/16 v24, 0x0

    .line 1262
    .local v24, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 1263
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 1265
    const-string v9, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "determineInstallPolicyType:  package name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v9, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "determineInstallPolicyType:  certs = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v9, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "determineInstallPolicyType:  containerID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v27

    iget v12, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1271
    const-string v9, "MyContainer"

    const-string v11, "GENERIC_MDM_INFO.containsKey(genericMDMID)"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v24, Ljava/util/HashSet;

    .line 1280
    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_6
    move-object/from16 v0, v27

    iget v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1281
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    move-object/from16 v0, v27

    iget v11, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    add-int/lit16 v11, v11, -0xc9

    const/4 v12, 0x1

    aput v12, v9, v11

    goto/16 :goto_0

    .line 1241
    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v31    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :catch_1
    move-exception v29

    .line 1242
    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not define correct category."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1247
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    if-eqz v5, :cond_e

    .line 1248
    if-eqz v21, :cond_10

    .line 1249
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    .line 1253
    :goto_7
    move-object/from16 v0, v27

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto/16 :goto_5

    .line 1251
    :cond_10
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    goto :goto_7

    .line 1276
    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v31    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_11
    const-string v9, "MyContainer"

    const-string v11, "GENERIC_MDM_INFO does not contain Key(genericMDMID)"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    new-instance v24, Ljava/util/HashSet;

    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .restart local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_6

    .line 1285
    .end local v24    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v31    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_12
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1289
    .end local v22    # "category":Ljava/lang/String;
    .end local v27    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v33    # "innerAllowCategory":Ljava/lang/String;
    .end local v34    # "innerSeinfo":Ljava/lang/String;
    .end local v38    # "pkgName":Ljava/lang/String;
    :cond_13
    const-string v9, "containerallowpackage"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1290
    new-instance v26, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 1291
    .local v26, "containerAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1292
    .restart local v38    # "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "containerallowcategory"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1293
    .local v25, "contAllowCat":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "seinfo"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1294
    .local v42, "trustInnerSeinfo":Ljava/lang/String;
    if-eqz v38, :cond_2

    if-eqz p2, :cond_2

    .line 1295
    new-instance v26, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    .end local v26    # "containerAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 1296
    .restart local v26    # "containerAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->certs:Ljava/lang/String;

    .line 1297
    const/16 v30, 0x0

    .line 1298
    .local v30, "existContAllowCat":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1299
    if-eqz v30, :cond_15

    .line 1300
    if-eqz v25, :cond_14

    .line 1301
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1302
    .local v35, "newValue":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1313
    .end local v35    # "newValue":Ljava/lang/String;
    :goto_8
    if-eqz v42, :cond_17

    .line 1314
    move-object/from16 v0, v42

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    .line 1315
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is trusted, seinfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :goto_9
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " trusted, trusted by category: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const/16 v32, 0x1

    goto/16 :goto_3

    .line 1304
    :cond_14
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_8

    .line 1307
    :cond_15
    if-eqz v25, :cond_16

    .line 1308
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_8

    .line 1310
    :cond_16
    const-string v9, "501-1023"

    move-object/from16 v0, v26

    iput-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_8

    .line 1317
    :cond_17
    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    .line 1318
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is trusted, seinfo is outer seinfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1324
    .end local v25    # "contAllowCat":Ljava/lang/String;
    .end local v26    # "containerAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .end local v30    # "existContAllowCat":Ljava/lang/String;
    .end local v38    # "pkgName":Ljava/lang/String;
    .end local v42    # "trustInnerSeinfo":Ljava/lang/String;
    :cond_18
    const-string v9, "dontaudit"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1325
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1327
    .restart local v38    # "pkgName":Ljava/lang/String;
    if-eqz v38, :cond_2

    if-eqz p2, :cond_2

    .line 1328
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " noAudit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1331
    .end local v38    # "pkgName":Ljava/lang/String;
    :cond_19
    const-string v9, "package"

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p1, :cond_2

    .line 1332
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1333
    .restart local v38    # "pkgName":Ljava/lang/String;
    if-eqz v38, :cond_1a

    .line 1334
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v11, v12}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v39

    .line 1336
    .local v39, "policyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v39, :cond_0

    .line 1337
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1345
    .end local v39    # "policyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_1a
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<package> inner tag without name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1355
    .end local v38    # "pkgName":Ljava/lang/String;
    .end local v41    # "tagName":Ljava/lang/String;
    :cond_1b
    if-eqz p3, :cond_1c

    if-eqz v32, :cond_1c

    .line 1356
    new-instance v9, Ljava/util/ArrayList;

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p3

    iput-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    .line 1358
    const-string v9, "MyContainer"

    const-string v11, "existing policy != null case"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    .end local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p3    # "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :goto_a
    return-object p3

    .line 1364
    .restart local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p3    # "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_1c
    const/4 v2, 0x0

    .line 1365
    .local v2, "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_1f

    .line 1367
    const-string v9, "MyContainer"

    const-string v11, "determineInstallPolicyType: denyPolicyPerms.size() > 0"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    new-instance v9, Ljava/util/ArrayList;

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1405
    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_1d
    :goto_b
    if-eqz v8, :cond_1e

    if-eqz v2, :cond_1e

    .line 1406
    sput-object v2, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1409
    :cond_1e
    const-string v9, "MyContainer"

    const-string v11, "Returning permPolicyType"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p3, v2

    .line 1411
    goto :goto_a

    .line 1374
    .restart local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1f
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_20

    .line 1376
    const-string v9, "MyContainer"

    const-string v11, "determineInstallPolicyType: allowPolicyPerms.size() > 0"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    new-instance v16, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v17, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v17}, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_b

    .line 1383
    :cond_20
    if-eqz v20, :cond_21

    .line 1385
    const-string v9, "MyContainer"

    const-string v11, "determineInstallPolicyType: determineInstallPolicyType:  <allowAll> case"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/4 v12, 0x0

    new-instance v18, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v19, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v2

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_b

    .line 1391
    :cond_21
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 1393
    const-string v9, "MyContainer"

    const-string v11, "determineInstallPolicyType: pkgPolicy is not empty"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/4 v12, 0x0

    new-instance v18, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v19, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v2

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto/16 :goto_b
.end method

.method public static findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 673
    .local v0, "certs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 674
    invoke-static {p1, v0}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private static flushInstallPolicy()V
    .locals 7

    .prologue
    .line 166
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 167
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 168
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 169
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 170
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 171
    .local v4, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 173
    .local v0, "containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 175
    .end local v0    # "containerIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :cond_0
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 176
    const/4 v5, 0x0

    sput-object v5, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v5, 0x12c

    if-ge v2, v5, :cond_1

    .line 178
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_1
    return-void
.end method

.method public static getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # [Ljava/lang/String;

    .prologue
    .line 678
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 679
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    array-length v10, p1

    new-array v9, v10, [Landroid/content/pm/Signature;

    .line 680
    .local v9, "signatures":[Landroid/content/pm/Signature;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, p1

    if-ge v4, v10, :cond_0

    .line 681
    new-instance v10, Landroid/content/pm/Signature;

    aget-object v11, p1, v4

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v4

    .line 680
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 683
    :cond_0
    move-object v1, v9

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_7

    aget-object v7, v1, v5

    .line 684
    .local v7, "s":Landroid/content/pm/Signature;
    if-nez v7, :cond_2

    .line 683
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 687
    :cond_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 688
    const-string v10, "SELinuxMMAC"

    const-string v11, "assignSeinfoValue, matching key found"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 690
    .local v8, "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v8, :cond_6

    if-eqz p0, :cond_6

    .line 691
    iget-object v10, v8, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 692
    iget v10, v8, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 693
    iget-object v10, v8, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 694
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 695
    const/4 v10, 0x0

    iput-byte v10, v0, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 696
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 697
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 698
    .local v3, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget v10, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 699
    iget-object v10, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 700
    iget-object v10, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 707
    .end local v3    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_3
    :goto_3
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 708
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    .line 709
    .local v2, "contAllowPkgInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 710
    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 754
    .end local v2    # "contAllowPkgInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_4
    :goto_4
    return-object v0

    .line 701
    .restart local v7    # "s":Landroid/content/pm/Signature;
    .restart local v8    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_5
    const-string v10, "sec_container_"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 702
    const-string v10, "container"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 703
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 704
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto :goto_3

    .line 714
    :cond_6
    const-string v10, "SELinuxMMAC"

    const-string v11, "Install policy instance is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 720
    .end local v7    # "s":Landroid/content/pm/Signature;
    .end local v8    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_7
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 721
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 722
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 723
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget v10, v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 724
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 725
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 726
    const/4 v10, 0x0

    iput-byte v10, v0, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    goto :goto_4

    .line 728
    :cond_8
    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 729
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 730
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 731
    const/4 v10, 0x0

    iput-byte v10, v0, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    goto :goto_4

    .line 738
    :cond_9
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 739
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 740
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget v10, v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 741
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 742
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 743
    const/4 v10, 0x0

    iput-byte v10, v0, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 744
    const-string v10, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getApplicationInfo, <package name > = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<seinfo> = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 747
    :cond_a
    const-string/jumbo v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 748
    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 749
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 750
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 751
    const/4 v10, 0x0

    iput-byte v10, v0, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 752
    const-string v10, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getApplicationInfo, <package name > = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<seinfo> = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public static getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;

    .prologue
    .line 1694
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1695
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    .line 1696
    .local v0, "contAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    iget-object v1, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->certs:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1697
    const-string v1, "SELinuxMMAC"

    const-string v2, " Given Package Name has a non-empty Container Allow Category"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v1, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    .line 1701
    .end local v0    # "contAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;
    .locals 15
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    .line 412
    const-string v11, "MyContainer"

    const-string v12, "Entered getContainerAllowPackageNamesFromSEContainer in SELinuxMMAC"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v12, "container"

    monitor-enter v12

    .line 415
    const/4 v4, 0x0

    .line 416
    .local v4, "existContainerAllowCat":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v9, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 418
    .local v8, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;>;>;"
    const-string v11, "MyContainer"

    const-string v13, "Going to enter the mcontainerallowpackages loop"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 420
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    iget-object v4, v11, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    .line 421
    const-string v11, "MyContainer"

    const-string v13, "Got existContainerAllowCat"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, "srcCategories":[Ljava/lang/String;
    const-string v11, "MyContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "srcCategories List = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v1, v6

    .line 425
    .local v2, "cat":Ljava/lang/String;
    const-string v11, "MyContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cat  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 428
    const-string v11, "MyContainer"

    const-string v13, "Matching Container ID Found"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_1

    const/4 v11, 0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 431
    const/16 v11, 0x66

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 433
    const-string v11, "MyContainer"

    const-string v13, "In SELinuxMMAC - Package name has GSD in its Container Allow Category"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_1
    const/4 v11, 0x4

    move/from16 v0, p1

    if-ne v0, v11, :cond_2

    const/4 v11, 0x4

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 439
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 441
    const-string v11, "MyContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In SELinuxMMAC - Package name has given CID = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in its Container Allow Category"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 449
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cat":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v10    # "srcCategories":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    monitor-exit v12

    return-object v11

    .line 450
    .end local v8    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;>;>;"
    .end local v9    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public static getEnforcingMode()Z
    .locals 2

    .prologue
    .line 914
    const-string v0, "persist.mmac.enforce"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    const-string v2, "MyContainer"

    const-string v3, "Entered getMyContainerIDs in SELinuxMMAC"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v3, "container"

    monitor-enter v3

    .line 496
    :try_start_0
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 497
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 498
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 499
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 500
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v3

    return-object v0

    .line 501
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, "category":I
    if-eqz p0, :cond_0

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 198
    .local v2, "dotIndex":I
    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 199
    .local v1, "categoryStartIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "strCategory":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 207
    .end local v1    # "categoryStartIndex":I
    .end local v2    # "dotIndex":I
    .end local v4    # "strCategory":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 203
    .restart local v1    # "categoryStartIndex":I
    .restart local v2    # "dotIndex":I
    .restart local v4    # "strCategory":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define category."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getPackageNamesFromSEContainerID(III)[Ljava/lang/String;
    .locals 8
    .param p0, "containerID"    # I
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v5, 0x0

    .line 288
    const-string v4, "MyContainer"

    const-string v6, "Entered getPackageNamefromMyContainerID in SELinuxMMAC"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v6, "container"

    monitor-enter v6

    .line 291
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 292
    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 294
    const-string v4, "MyContainer"

    const-string v7, "Given Container ID is not my Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    monitor-exit v6

    move-object v4, v5

    .line 322
    :goto_0
    return-object v4

    .line 298
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 299
    const/16 v4, 0x66

    if-eq p0, v4, :cond_1

    .line 301
    const-string v4, "MyContainer"

    const-string v7, "Given Container ID is not GSD_Category - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    .line 306
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v3, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 308
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    if-ne v4, p0, :cond_2

    .line 311
    const-string v4, "MyContainer"

    const-string v7, "Adding entry to packageNames arraylist"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 323
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 316
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 318
    const-string v4, "MyContainer"

    const-string v7, "Size of packageNames Arraylist is 0. Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    .line 322
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected static getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    const/4 v1, -0x1

    .line 328
    const-string v2, "MyContainer"

    const-string v3, "Entered getMyContainerIDfromPackageName in SELinuxMMAC"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v2, "container"

    monitor-enter v2

    .line 331
    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 332
    .local v0, "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v3, 0x4

    if-ne p3, v3, :cond_1

    .line 333
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    const-string v3, "MyContainer"

    const-string v4, "secontainerinfo is not null and containerid is secontainerid"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget v3, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {p0, p1, v3}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    const-string v1, "MyContainer"

    const-string v3, "containerid created by caller"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v1, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v2

    .line 360
    :goto_0
    return v1

    .line 344
    :cond_0
    const-string v3, "MyContainer"

    const-string v4, "container id not created by caller"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v2

    goto :goto_0

    .line 361
    .end local v0    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 349
    .restart local v0    # "seContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    .line 350
    if-eqz v0, :cond_2

    :try_start_1
    iget v3, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v4, 0x66

    if-ne v3, v4, :cond_2

    .line 352
    const-string v1, "MyContainer"

    const-string v3, "secontainerinfo is not null and containerid is GSD"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v1, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v2

    goto :goto_0

    .line 358
    :cond_2
    const-string v3, "MyContainer"

    const-string v4, "SEcontainerinfo is null. Return Check Container Allow Package"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected static getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I
    .locals 13
    .param p0, "mdmPackageName"    # Ljava/lang/String;
    .param p1, "mdmCerts"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "CONTAINER_TYPE"    # I
    .param p4, "appType"    # I

    .prologue
    .line 366
    const-string v9, "MyContainer"

    const-string v10, "Entered getSEContainerIDsFromContainerAllowPackage in SELinuxMMAC"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v4, "containerIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v10, "container"

    monitor-enter v10

    .line 370
    :try_start_0
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 371
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 372
    .local v3, "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    .line 373
    .restart local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    iget-object v5, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    .line 374
    .local v5, "existContainerAllowCat":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "srcCategories":[Ljava/lang/String;
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v1, v6

    .line 377
    .local v2, "cat":Ljava/lang/String;
    const-string v9, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In SELinuxMMAC - category = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_0

    const/4 v9, 0x2

    move/from16 v0, p4

    if-ne v0, v9, :cond_0

    .line 380
    const/16 v9, 0x66

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 382
    const-string v9, "MyContainer"

    const-string v11, "In SELinuxMMAC - This package has GSD in its Container Allow Category"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v9, 0x66

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v9

    monitor-exit v10

    .line 406
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cat":Ljava/lang/String;
    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .end local v5    # "existContainerAllowCat":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "srcCategories":[Ljava/lang/String;
    :goto_1
    return-object v9

    .line 388
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cat":Ljava/lang/String;
    .restart local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .restart local v5    # "existContainerAllowCat":Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "srcCategories":[Ljava/lang/String;
    :cond_0
    const/4 v9, 0x4

    move/from16 v0, p3

    if-ne v0, v9, :cond_1

    const/4 v9, 0x4

    move/from16 v0, p4

    if-ne v0, v9, :cond_1

    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 390
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {p0, p1, v9}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 391
    const-string v9, "SELinuxMMAC"

    const-string v11, "Given Container ID not created by Caller - Returning Refused"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    :cond_2
    const-string v9, "MyContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In SELinuxMMAC - This package has cat = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in its Container Allow Category"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 407
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cat":Ljava/lang/String;
    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .end local v5    # "existContainerAllowCat":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "srcCategories":[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 401
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .restart local v5    # "existContainerAllowCat":Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "srcCategories":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v9

    monitor-exit v10

    goto :goto_1

    .line 404
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .end local v5    # "existContainerAllowCat":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "srcCategories":[Ljava/lang/String;
    :cond_4
    const-string v9, "MyContainer"

    const-string v11, "Exit getSEContainerIDsFromContainerAllowPackage in SELinuxMMAC"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static hasGenericContainers()Z
    .locals 1

    .prologue
    .line 1713
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const-string v4, "MyContainer"

    const-string v5, "Entered hashset_to_int_array in SELinuxMMAC"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 459
    :cond_0
    const-string v4, "MyContainer"

    const-string v5, " hashset_to_int_array returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x0

    .line 469
    :cond_1
    return-object v0

    .line 463
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 464
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 465
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 466
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    .line 506
    const-string v2, "MyContainer"

    const-string v3, "Entered isContainerCreatedbyCaller in SELinuxMMAC"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContainerCreatedbyCaller:  package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContainerCreatedbyCaller:  certs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContainerCreatedbyCaller:  containerID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 512
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 513
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 514
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 515
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 517
    const-string v2, "MyContainer"

    const-string v3, "isContainerCreatedbyCaller: categorys hashset null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    const-string v2, "MyContainer"

    const-string v3, "isContainerCreatedbyCaller returning true"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v2, 0x1

    .line 529
    :goto_0
    return v2

    .line 527
    :cond_1
    const-string v2, "MyContainer"

    const-string v3, "isContainerCreatedbyCaller returning false"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isKnoxKey([Landroid/content/pm/Signature;)Z
    .locals 6
    .param p0, "cert"    # [Landroid/content/pm/Signature;

    .prologue
    .line 572
    array-length v2, p0

    .line 573
    .local v2, "len":I
    new-array v3, v2, [Ljava/lang/String;

    .line 575
    .local v3, "pubkeys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 576
    :try_start_0
    new-instance v4, Ljava/lang/String;

    aget-object v5, p0, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v4, "SELinuxMMAC"

    const-string v5, "isKnoxKey check causes CertificateException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v4, 0x0

    .line 582
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_1
    return v4

    :cond_0
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->isKnoxKey([Ljava/lang/String;)Z

    move-result v4

    goto :goto_1
.end method

.method public static isKnoxKey([Ljava/lang/String;)Z
    .locals 14
    .param p0, "pubkeys"    # [Ljava/lang/String;

    .prologue
    .line 586
    const/4 v8, 0x0

    .line 587
    .local v8, "ret":Z
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 588
    .local v11, "signatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v7, v1, v5

    .line 589
    .local v7, "pubkey":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 590
    .local v0, "actualPublicKey":[B
    const/4 v3, 0x0

    .line 591
    .local v3, "expectedPublicKey":[B
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/Signature;

    .line 593
    .local v10, "signature":Landroid/content/pm/Signature;
    :try_start_0
    invoke-virtual {v10}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 598
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 599
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 601
    .local v9, "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    iget-object v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-boolean v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v12, :cond_2

    .line 603
    :cond_1
    const/4 v8, 0x1

    .line 588
    .end local v9    # "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v10    # "signature":Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 594
    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    .restart local v10    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 595
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v12, "SELinuxMMAC"

    const-string v13, "isKnoxKey check causes CertificateException"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v8, 0x0

    .line 609
    .end local v0    # "actualPublicKey":[B
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v3    # "expectedPublicKey":[B
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "pubkey":Ljava/lang/String;
    .end local v8    # "ret":Z
    .end local v10    # "signature":Landroid/content/pm/Signature;
    :cond_3
    return v8
.end method

.method public static isMyContainerID(I)Z
    .locals 1
    .param p0, "containerID"    # I

    .prologue
    .line 144
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f5

    if-ge p0, v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "seInfo"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static passInstallPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x0

    .line 1617
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 1618
    .local v5, "s":Landroid/content/pm/Signature;
    if-nez v5, :cond_1

    .line 1617
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1623
    :cond_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1624
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1625
    .local v4, "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1626
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1631
    .local v6, "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1669
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v5    # "s":Landroid/content/pm/Signature;
    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .line 1637
    :cond_3
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1638
    const/4 v3, 0x0

    .line 1639
    .local v3, "passed":Z
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1640
    .restart local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1641
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1647
    .restart local v6    # "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_1

    .line 1653
    .end local v3    # "passed":Z
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1654
    const/4 v3, 0x0

    .line 1655
    .restart local v3    # "passed":Z
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1656
    .restart local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1657
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1659
    .restart local v6    # "seinfo":Ljava/lang/String;
    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") installed with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seinfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_5

    const-string v6, "null"

    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v3, 0x1

    goto :goto_1

    .line 1669
    .end local v3    # "passed":Z
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static readInstallPolicy()Z
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readInstallPolicy(Ljava/io/File;)Z
    .locals 3
    .param p0, "policyFile"    # Ljava/io/File;

    .prologue
    .line 936
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static readInstallPolicy([Ljava/io/File;)Z
    .locals 24
    .param p0, "policyFiles"    # [Ljava/io/File;

    .prologue
    .line 941
    const/4 v14, 0x0

    .line 942
    .local v14, "policyFile":Ljava/io/FileReader;
    const/16 v16, 0x0

    .line 943
    .local v16, "priorityPolicyFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 944
    .local v8, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v9

    .line 945
    .local v9, "index":I
    packed-switch v9, :pswitch_data_0

    .line 1004
    :cond_0
    :goto_0
    if-nez v14, :cond_5

    .line 1005
    const-string v21, "SELinuxMMAC"

    const-string v22, "MMAC install disabled."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/16 v21, 0x0

    .line 1148
    :goto_1
    return v21

    .line 953
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .local v15, "policyFile":Ljava/io/FileReader;
    :catch_0
    move-exception v5

    move-object v14, v15

    .line 954
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_2
    :try_start_0
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t find install policy "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, p0, v8

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 957
    if-eqz v14, :cond_1

    .line 958
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 964
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object v15, v14

    .line 947
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :goto_4
    if-nez v15, :cond_15

    if-eqz p0, :cond_15

    aget-object v21, p0, v8

    if-eqz v21, :cond_15

    .line 949
    :try_start_2
    new-instance v14, Ljava/io/FileReader;

    aget-object v21, p0, v8

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 950
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :try_start_3
    aget-object v16, p0, v8

    .line 951
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Load mac_permissions.xml policy "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, p0, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 957
    if-eqz v14, :cond_0

    .line 958
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 960
    :catch_1
    move-exception v21

    goto :goto_0

    .line 956
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :catchall_0
    move-exception v21

    move-object v14, v15

    .line 957
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_5
    if-eqz v14, :cond_2

    .line 958
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 956
    :cond_2
    :goto_6
    throw v21

    .line 971
    :pswitch_0
    :try_start_6
    new-instance v15, Ljava/io/FileReader;

    add-int/lit8 v21, v9, -0x1

    aget-object v21, p0, v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 972
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    add-int/lit8 v21, v9, -0x1

    :try_start_7
    aget-object v16, p0, v21
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_16

    move-object v14, v15

    .line 974
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 975
    :catch_2
    move-exception v5

    move-object v15, v14

    .line 976
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :goto_7
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t find install policy "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v9, -0x1

    aget-object v23, p0, v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    if-nez v15, :cond_4

    .line 979
    const/16 v17, 0x0

    .line 981
    .local v17, "selinux_new_priority":I
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_compare_spd_ram()I

    move-result v17

    .line 982
    new-instance v14, Ljava/io/FileReader;

    aget-object v21, p0, v17

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 983
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :try_start_9
    aget-object v16, p0, v17
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_15
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 989
    if-eqz v14, :cond_0

    .line 990
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 992
    :catch_3
    move-exception v21

    goto/16 :goto_0

    .line 985
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :catch_4
    move-exception v5

    move-object v14, v15

    .line 986
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_8
    :try_start_b
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t find install policy "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, p0, v17

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 989
    if-eqz v14, :cond_0

    .line 990
    :try_start_c
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_0

    .line 988
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :catchall_1
    move-exception v21

    move-object v14, v15

    .line 989
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_9
    if-eqz v14, :cond_3

    .line 990
    :try_start_d
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    .line 988
    :cond_3
    :goto_a
    throw v21

    .line 998
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .end local v17    # "selinux_new_priority":I
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :cond_4
    :try_start_e
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    move-object v14, v15

    .line 1000
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 999
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :catch_5
    move-exception v21

    move-object v14, v15

    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1009
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :try_start_f
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 1015
    :goto_b
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v10, v0, [Ljava/io/File;

    const/16 v21, 0x0

    aput-object v16, v10, v21

    const/16 v21, 0x1

    new-instance v22, Ljava/io/File;

    const-string v23, "/data/security/good/mac_permissions.xml"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v22, v10, v21

    const/16 v21, 0x2

    new-instance v22, Ljava/io/File;

    const-string v23, "/data/security/stig/mac_permissions.xml"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v22, v10, v21

    const/16 v21, 0x3

    new-instance v22, Ljava/io/File;

    const-string v23, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v22, v10, v21

    const/16 v21, 0x4

    const/16 v22, 0x0

    aput-object v22, v10, v21

    .line 1020
    .local v10, "macPermFiles":[Ljava/io/File;
    const/4 v4, 0x0

    .line 1022
    .local v4, "cnt":I
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getEnforcingMode()Z

    move-result v6

    .line 1023
    .local v6, "enforcing":Z
    if-eqz v6, :cond_9

    const-string v11, "enforcing"

    .line 1024
    .local v11, "mode":Ljava/lang/String;
    :goto_c
    const/4 v3, 0x0

    .line 1025
    .local v3, "cert":Ljava/lang/String;
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MMAC install starting in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mode."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    .line 1029
    :goto_d
    aget-object v21, v10, v4

    if-eqz v21, :cond_13

    .line 1030
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Read and parse file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v10, v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :try_start_10
    new-instance v15, Ljava/io/FileReader;

    aget-object v21, v10, v4

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1034
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1035
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1037
    const-string v21, "policy"

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1039
    :cond_6
    :goto_e
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1040
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1132
    if-eqz v15, :cond_7

    .line 1133
    :try_start_12
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    :cond_7
    :goto_f
    move-object v14, v15

    .line 1139
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :cond_8
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1023
    .end local v3    # "cert":Ljava/lang/String;
    .end local v11    # "mode":Ljava/lang/String;
    :cond_9
    const-string v11, "permissive"

    goto :goto_c

    .line 1044
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v11    # "mode":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :cond_a
    :try_start_13
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1045
    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v21, "signer"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1046
    const/16 v21, 0x0

    const-string/jumbo v22, "signature"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1047
    if-nez v3, :cond_b

    .line 1048
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<signer> without signature at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_e

    .line 1123
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    :catch_6
    move-exception v5

    move-object v14, v15

    .line 1124
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_11
    :try_start_14
    const-string v21, "SELinuxMMAC"

    const-string v22, "Got execption parsing "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1132
    if-eqz v14, :cond_8

    .line 1133
    :try_start_15
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    goto :goto_10

    .line 1135
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v21

    goto :goto_10

    .line 1054
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v19    # "tagName":Ljava/lang/String;
    :cond_b
    :try_start_16
    new-instance v18, Landroid/content/pm/Signature;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1060
    .local v18, "signature":Landroid/content/pm/Signature;
    if-nez v18, :cond_c

    .line 1061
    :try_start_17
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<signer> with null signature at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_e

    .line 1125
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "signature":Landroid/content/pm/Signature;
    .end local v19    # "tagName":Ljava/lang/String;
    :catch_8
    move-exception v5

    move-object v14, v15

    .line 1126
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_12
    :try_start_18
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "File not found exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v10, v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 1132
    if-eqz v14, :cond_8

    .line 1133
    :try_start_19
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_10

    .line 1055
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v19    # "tagName":Ljava/lang/String;
    :catch_9
    move-exception v5

    .line 1056
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1a
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<signer> with bad signature at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    goto/16 :goto_e

    .line 1128
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    :catch_a
    move-exception v5

    move-object v14, v15

    .line 1129
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/IOException;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_13
    :try_start_1b
    const-string v21, "SELinuxMMAC"

    const-string v22, "Got execption parsing "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 1132
    if-eqz v14, :cond_8

    .line 1133
    :try_start_1c
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_7

    goto/16 :goto_10

    .line 1065
    .end local v5    # "e":Ljava/io/IOException;
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v18    # "signature":Landroid/content/pm/Signature;
    .restart local v19    # "tagName":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x0

    .line 1066
    .local v20, "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :try_start_1d
    sget-object v21, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1067
    sget-object v21, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1069
    .local v7, "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const-string v21, "MyContainer"

    const-string v22, "SIG_POLICY.containsKey(signature)"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v12, v0, v3, v7}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v20

    .line 1078
    .end local v7    # "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :goto_14
    if-eqz v20, :cond_6

    .line 1094
    sget-object v21, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto/16 :goto_e

    .line 1131
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "signature":Landroid/content/pm/Signature;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :catchall_2
    move-exception v21

    move-object v14, v15

    .line 1132
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :goto_15
    if-eqz v14, :cond_d

    .line 1133
    :try_start_1e
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_f

    .line 1131
    :cond_d
    :goto_16
    throw v21

    .line 1074
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v18    # "signature":Landroid/content/pm/Signature;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_e
    :try_start_1f
    const-string v21, "MyContainer"

    const-string v22, "SIG_POLICY does not containsKey(signature)"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v12, v0, v3, v1}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v20

    goto :goto_14

    .line 1096
    .end local v18    # "signature":Landroid/content/pm/Signature;
    .end local v20    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_f
    const-string v21, "default"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1097
    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v20

    .line 1098
    .restart local v20    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v20, :cond_6

    .line 1103
    sget-object v21, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 1105
    .end local v20    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_10
    const-string v21, "package"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1106
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1107
    .local v13, "pkgName":Ljava/lang/String;
    if-nez v13, :cond_11

    .line 1108
    const-string v21, "SELinuxMMAC"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<package> without name at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_e

    .line 1112
    :cond_11
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v20

    .line 1113
    .restart local v20    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v20, :cond_6

    .line 1116
    sget-object v21, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 1119
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v20    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_12
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_8
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto/16 :goto_e

    .line 1142
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .end local v19    # "tagName":Ljava/lang/String;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :cond_13
    if-eqz v14, :cond_14

    .line 1143
    :try_start_20
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_c

    .line 1148
    :cond_14
    :goto_17
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 1010
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v6    # "enforcing":Z
    .end local v10    # "macPermFiles":[Ljava/io/File;
    .end local v11    # "mode":Ljava/lang/String;
    :catch_b
    move-exception v21

    goto/16 :goto_b

    .line 1145
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v4    # "cnt":I
    .restart local v6    # "enforcing":Z
    .restart local v10    # "macPermFiles":[Ljava/io/File;
    .restart local v11    # "mode":Ljava/lang/String;
    :catch_c
    move-exception v21

    goto :goto_17

    .line 960
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v6    # "enforcing":Z
    .end local v10    # "macPermFiles":[Ljava/io/File;
    .end local v11    # "mode":Ljava/lang/String;
    :catch_d
    move-exception v22

    goto/16 :goto_6

    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v21

    goto/16 :goto_3

    .line 1135
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v4    # "cnt":I
    .restart local v6    # "enforcing":Z
    .restart local v10    # "macPermFiles":[Ljava/io/File;
    .restart local v11    # "mode":Ljava/lang/String;
    :catch_f
    move-exception v22

    goto/16 :goto_16

    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :catch_10
    move-exception v21

    goto/16 :goto_f

    .line 992
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v6    # "enforcing":Z
    .end local v10    # "macPermFiles":[Ljava/io/File;
    .end local v11    # "mode":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "selinux_new_priority":I
    :catch_11
    move-exception v22

    goto/16 :goto_a

    .line 1131
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "selinux_new_priority":I
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v4    # "cnt":I
    .restart local v6    # "enforcing":Z
    .restart local v10    # "macPermFiles":[Ljava/io/File;
    .restart local v11    # "mode":Ljava/lang/String;
    :catchall_3
    move-exception v21

    goto/16 :goto_15

    .line 1128
    :catch_12
    move-exception v5

    goto/16 :goto_13

    .line 1125
    :catch_13
    move-exception v5

    goto/16 :goto_12

    .line 1123
    :catch_14
    move-exception v5

    goto/16 :goto_11

    .line 988
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v6    # "enforcing":Z
    .end local v10    # "macPermFiles":[Ljava/io/File;
    .end local v11    # "mode":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "selinux_new_priority":I
    :catchall_4
    move-exception v21

    goto/16 :goto_9

    .line 985
    :catch_15
    move-exception v5

    goto/16 :goto_8

    .line 975
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "policyFile":Ljava/io/FileReader;
    .end local v17    # "selinux_new_priority":I
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :catch_16
    move-exception v5

    goto/16 :goto_7

    .line 956
    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    :catchall_5
    move-exception v21

    goto/16 :goto_5

    .line 953
    :catch_17
    move-exception v5

    goto/16 :goto_2

    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    :cond_15
    move-object v14, v15

    .end local v15    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_0

    :pswitch_1
    move-object v15, v14

    .end local v14    # "policyFile":Ljava/io/FileReader;
    .restart local v15    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_4

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certs"    # Ljava/lang/String;
    .param p2, "containerID"    # I

    .prologue
    const/4 v2, 0x0

    .line 534
    const-string v3, "MyContainer"

    const-string v4, "Entered removeMyContainerID in SELinuxMMAC"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v3, "container"

    monitor-enter v3

    .line 537
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 539
    const-string v4, "MyContainer"

    const-string v5, "Container is created by Caller"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    add-int/lit16 v5, p2, -0xc9

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 542
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 543
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    const/4 v0, 0x0

    .line 544
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 545
    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 546
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 547
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    const-string v4, "MyContainer"

    const-string v5, "categorys.size != 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :goto_0
    const-string v4, "MyContainer"

    const-string v5, "removemycontainerid returning policy_ok"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    monitor-exit v3

    .line 567
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :goto_1
    return v2

    .line 555
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    const-string v4, "MyContainer"

    const-string v5, "categorys.size == 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 568
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 565
    :cond_1
    :try_start_1
    const-string v2, "MyContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v2, -0xc

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static setEnforcingMode(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 923
    const-string v1, "persist.mmac.enforce"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void

    .line 923
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "category"    # I

    .prologue
    .line 614
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "container"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 615
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v1, v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 618
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput p1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 619
    return-void
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1677
    if-nez p0, :cond_1

    .line 1690
    :cond_0
    :goto_0
    return v3

    .line 1680
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1681
    .local v0, "N":I
    if-eqz v0, :cond_0

    .line 1684
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1685
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1686
    .local v1, "c":C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_0

    .line 1684
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1690
    .end local v1    # "c":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
