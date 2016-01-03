.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 3135
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 3136
    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 3137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 3138
    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3149
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 3158
    :cond_0
    :goto_0
    return v5

    .line 3152
    :cond_1
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3153
    .local v4, "target":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3154
    .local v3, "oper":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3155
    const/4 v5, 0x1

    goto :goto_0

    .line 3153
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3811
    .local p1, "origTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .local p2, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    const/4 v4, 0x0

    .line 3812
    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3814
    .local v1, "customName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 3815
    :cond_0
    const-string v6, "MumXmlDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :cond_1
    return-object p1

    .line 3819
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 3820
    .local v5, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 3821
    .local v0, "custRow":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3822
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3823
    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3826
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 3828
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3831
    :cond_5
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 3833
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3836
    :cond_6
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 3838
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public readFromCustomXml()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3677
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3680
    .local v11, "rowsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 3681
    .local v4, "event":I
    const/4 v10, 0x0

    .line 3682
    .local v10, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/4 v13, 0x0

    .local v13, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3683
    .local v6, "nameAttribute":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 3685
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "ro.product.name"

    const-string v15, "NONE"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3686
    .local v8, "productName":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_2

    .line 3687
    packed-switch v4, :pswitch_data_0

    .line 3801
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 3689
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 3690
    .local v12, "tag":Ljava/lang/String;
    const-string v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3692
    const-string v14, "MumXmlDataParser"

    const-string v15, "New row found "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    new-instance v10, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 3695
    :cond_1
    const-string v14, "column"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "value"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3697
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3698
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : key("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), value("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    const-string v14, "Name"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    .line 3702
    invoke-virtual {v10, v13}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3803
    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "event":I
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3804
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "readFromCustomXml EX:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v11

    .line 3704
    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "event":I
    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "nameAttribute":Ljava/lang/String;
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "productName":Ljava/lang/String;
    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v14, "AppInstallList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3706
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3708
    :cond_4
    const-string v14, "ProtectedPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3710
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3712
    :cond_5
    const-string v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3714
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3718
    :cond_6
    const-string v14, "application"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 3719
    if-eqz v1, :cond_0

    .line 3720
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3721
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.samsung.contacts"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "com.android.contacts"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3724
    const-string v13, "com.samsung.contacts"

    .line 3726
    :cond_7
    if-eqz v13, :cond_0

    .line 3727
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3730
    :cond_8
    const-string v14, "protectedPkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 3732
    if-eqz v9, :cond_0

    .line 3733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3734
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    if-eqz v13, :cond_0

    .line 3736
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3739
    :cond_9
    const-string v14, "disablePkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3741
    if-eqz v5, :cond_0

    .line 3742
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3743
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New attribute found : name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    if-eqz v13, :cond_0

    .line 3745
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3748
    :cond_a
    const-string v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 3750
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3752
    :cond_b
    const-string v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3754
    if-eqz v7, :cond_0

    .line 3755
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3756
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "package: New attribute found knoxCore: name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 3758
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "allow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3759
    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3760
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "disallow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3761
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 3762
    :cond_d
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3772
    .end local v2    # "content":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 3773
    .restart local v12    # "tag":Ljava/lang/String;
    const-string v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    if-eqz v10, :cond_11

    .line 3775
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 3776
    invoke-virtual {v10, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 3778
    :cond_e
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    .line 3779
    invoke-virtual {v10, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 3781
    :cond_f
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_10

    .line 3782
    invoke-virtual {v10, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 3784
    :cond_10
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 3785
    const/4 v1, 0x0

    .line 3786
    const/4 v9, 0x0

    .line 3787
    const/4 v5, 0x0

    .line 3788
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3790
    :cond_11
    const-string v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3792
    if-eqz v7, :cond_12

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_12

    .line 3793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {v14}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3795
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3687
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromXml()V
    .locals 38

    .prologue
    .line 3163
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 3164
    .local v9, "event":I
    const/16 v29, 0x0

    .line 3165
    .local v29, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/4 v15, 0x0

    .line 3166
    .local v15, "intVal":I
    const/4 v6, 0x0

    .line 3167
    .local v6, "booleanVal":Z
    const/16 v17, 0x0

    .line 3168
    .local v17, "isRCPDataSettings":Z
    const/16 v32, 0x0

    .local v32, "value":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3169
    .local v20, "nameAttribute":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3170
    .local v24, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3171
    .local v4, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .local v28, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 3172
    .local v11, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 3173
    .local v23, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v25, 0x0

    .line 3174
    .local v25, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v33, "ro.product.name"

    const-string v34, "NONE"

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3175
    .local v26, "productName":Ljava/lang/String;
    :goto_0
    const/16 v33, 0x1

    move/from16 v0, v33

    if-eq v9, v0, :cond_4

    .line 3176
    packed-switch v9, :pswitch_data_0

    .line 3669
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 3178
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 3179
    .local v30, "tag":Ljava/lang/String;
    const-string v33, "row"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 3181
    const-string v33, "MumXmlDataParser"

    const-string v34, "New row found "

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "type"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3183
    sget-object v33, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 3184
    new-instance v29, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v29 .. v29}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 3185
    :cond_1
    sget-object v33, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 3186
    new-instance v29, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    .end local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v29 .. v29}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;-><init>()V

    .restart local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 3188
    :cond_2
    new-instance v29, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v29 .. v29}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 3191
    :cond_3
    const-string v33, "column"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_40

    .line 3192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "value"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3194
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "New attribute found : key("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "), value("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    const-string v33, "Name"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_5

    if-eqz v29, :cond_5

    .line 3198
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3671
    .end local v4    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "booleanVal":Z
    .end local v9    # "event":I
    .end local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "intVal":I
    .end local v17    # "isRCPDataSettings":Z
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "nameAttribute":Ljava/lang/String;
    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "productName":Ljava/lang/String;
    .end local v28    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 3672
    .local v8, "e":Ljava/lang/Exception;
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "readFromXml EX:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 3200
    .restart local v4    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "booleanVal":Z
    .restart local v9    # "event":I
    .restart local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "intVal":I
    .restart local v17    # "isRCPDataSettings":Z
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "nameAttribute":Ljava/lang/String;
    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "productName":Ljava/lang/String;
    .restart local v28    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v32    # "value":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v33, "UID"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 3202
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3203
    if-ltz v15, :cond_0

    if-eqz v29, :cond_0

    .line 3204
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    goto/16 :goto_1

    .line 3206
    :cond_6
    const-string v33, "UserID"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 3208
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3209
    const/16 v33, -0x1

    move/from16 v0, v33

    if-lt v15, v0, :cond_0

    if-eqz v29, :cond_0

    .line 3210
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto/16 :goto_1

    .line 3212
    :cond_7
    const-string v33, "PersonaIDs"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 3214
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .restart local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 3216
    :cond_8
    const-string v33, "Version"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 3217
    if-eqz v29, :cond_0

    .line 3218
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3219
    :cond_9
    const-string v33, "MaximumTimeToLock"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 3221
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3222
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3223
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto/16 :goto_1

    .line 3225
    :cond_a
    const-string v33, "PasswordMinimumLength"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 3227
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3228
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3229
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_1

    .line 3231
    :cond_b
    const-string v33, "PasswordMinimumNonLetters"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 3233
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3234
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3235
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_1

    .line 3237
    :cond_c
    const-string v33, "PasswordMinimumLetters"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 3239
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3240
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3241
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_1

    .line 3243
    :cond_d
    const-string v33, "PasswordMinimumNumeric"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 3245
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3246
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3247
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_1

    .line 3249
    :cond_e
    const-string v33, "PasswordMinimumUpperCase"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 3251
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3252
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3253
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_1

    .line 3255
    :cond_f
    const-string v33, "PasswordMinimumLowerCase"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_10

    .line 3257
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3258
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3259
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_1

    .line 3261
    :cond_10
    const-string v33, "PasswordMinimumSymbols"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 3263
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3264
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3265
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_1

    .line 3267
    :cond_11
    const-string v33, "PasswordQuality"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 3269
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3270
    if-ltz v15, :cond_0

    if-eqz v29, :cond_0

    .line 3271
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_1

    .line 3273
    :cond_12
    const-string v33, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_13

    .line 3275
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3276
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3277
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_1

    .line 3279
    :cond_13
    const-string v33, "MaximumCharacterOccurences"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 3281
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3282
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3283
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_1

    .line 3285
    :cond_14
    const-string v33, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_15

    .line 3287
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3288
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3289
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_1

    .line 3291
    :cond_15
    const-string v33, "MaximumNumericSequenceLength"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_16

    .line 3293
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3294
    if-lez v15, :cond_0

    if-eqz v29, :cond_0

    .line 3295
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_1

    .line 3297
    :cond_16
    const-string v33, "SimplePasswordEnabled"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_17

    if-eqz v29, :cond_17

    .line 3299
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3300
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_1

    .line 3302
    :cond_17
    const-string v33, "MultifactorAuthEnabled"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_18

    if-eqz v29, :cond_18

    .line 3304
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3305
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_1

    .line 3307
    :cond_18
    const-string v33, "UserManaged"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_19

    if-eqz v29, :cond_19

    .line 3309
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3310
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_1

    .line 3312
    :cond_19
    const-string v33, "ForbiddenStrings"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1a

    .line 3314
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3316
    :cond_1a
    const-string v33, "AppInstallList"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1b

    .line 3318
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3320
    :cond_1b
    const-string v33, "ProtectedPkgList"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 3322
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .restart local v28    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3324
    :cond_1c
    const-string v33, "GoogleAppsPkgList"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1d

    .line 3326
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3328
    :cond_1d
    const-string v33, "PatternRestriction"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_20

    if-eqz v29, :cond_20

    .line 3330
    if-eqz v32, :cond_1e

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 3331
    :cond_1e
    const/16 v32, 0x0

    .line 3333
    :cond_1f
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3335
    :cond_20
    const-string v33, "CustomBadgeIcon"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_23

    if-eqz v29, :cond_23

    .line 3337
    if-eqz v32, :cond_21

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_22

    .line 3338
    :cond_21
    const/16 v32, 0x0

    .line 3340
    :cond_22
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3342
    :cond_23
    const-string v33, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_26

    if-eqz v29, :cond_26

    .line 3344
    if-eqz v32, :cond_24

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_25

    .line 3345
    :cond_24
    const/16 v32, 0x0

    .line 3347
    :cond_25
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3349
    :cond_26
    const-string v33, "CustomLockScreenWallpaper"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_29

    if-eqz v29, :cond_29

    .line 3351
    if-eqz v32, :cond_27

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_28

    .line 3352
    :cond_27
    const/16 v32, 0x0

    .line 3354
    :cond_28
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3356
    :cond_29
    const-string v33, "CustomStatusLabel"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2c

    if-eqz v29, :cond_2c

    .line 3358
    if-eqz v32, :cond_2a

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_2b

    .line 3359
    :cond_2a
    const/16 v32, 0x0

    .line 3361
    :cond_2b
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3363
    :cond_2c
    const-string v33, "CustomStatusIcon"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2f

    if-eqz v29, :cond_2f

    .line 3365
    if-eqz v32, :cond_2d

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_2e

    .line 3366
    :cond_2d
    const/16 v32, 0x0

    .line 3368
    :cond_2e
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3370
    :cond_2f
    const-string v33, "FolderHeaderTitle"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_32

    if-eqz v29, :cond_32

    .line 3372
    if-eqz v32, :cond_30

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_31

    .line 3373
    :cond_30
    const/16 v32, 0x0

    .line 3375
    :cond_31
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3376
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3378
    :cond_32
    const-string v33, "FolderHeaderIcon"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_35

    if-eqz v29, :cond_35

    .line 3380
    if-eqz v32, :cond_33

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_34

    .line 3381
    :cond_33
    const/16 v32, 0x0

    .line 3383
    :cond_34
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3384
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3386
    :cond_35
    const-string v33, "RCPDataSettings"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_36

    .line 3388
    const/16 v17, 0x1

    .line 3389
    if-nez v19, :cond_0

    .line 3390
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3393
    :cond_36
    const-string v33, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_37

    .line 3395
    const/16 v17, 0x0

    .line 3396
    if-nez v19, :cond_0

    .line 3397
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3400
    :cond_37
    const-string v33, "RCPNotifSettings"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_38

    .line 3402
    if-nez v19, :cond_0

    .line 3403
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3406
    :cond_38
    const-string v33, "AllowMultiwindowMode"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_39

    if-eqz v29, :cond_39

    .line 3408
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3409
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_1

    .line 3411
    :cond_39
    const-string v33, "AllowTaskManager"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3a

    if-eqz v29, :cond_3a

    .line 3413
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3414
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_1

    .line 3416
    :cond_3a
    const-string v33, "AllowSettingsChanges"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3b

    if-eqz v29, :cond_3b

    .line 3418
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3419
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3420
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_1

    .line 3422
    :cond_3b
    const-string v33, "AllowStatusBarExpansion"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3c

    if-eqz v29, :cond_3c

    .line 3424
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3425
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3426
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_1

    .line 3428
    :cond_3c
    const-string v33, "AllowHomeKey"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3d

    if-eqz v29, :cond_3d

    .line 3430
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3431
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3432
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_1

    .line 3434
    :cond_3d
    const-string v33, "AllowClearAllNotification"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3e

    if-eqz v29, :cond_3e

    .line 3436
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3437
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3438
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_1

    .line 3440
    :cond_3e
    const-string v33, "HideSystemBar"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3f

    if-eqz v29, :cond_3f

    .line 3442
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3443
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3444
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_1

    .line 3446
    :cond_3f
    const-string v33, "WipeRecentTasks"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_0

    if-eqz v29, :cond_0

    .line 3448
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3449
    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 3450
    move-object/from16 v0, v29

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_1

    .line 3454
    :cond_40
    const-string v33, "persona"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_41

    .line 3456
    if-eqz v24, :cond_0

    .line 3457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "id"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3458
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "New attribute found : id("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3460
    if-lez v15, :cond_0

    .line 3461
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3464
    :cond_41
    const-string v33, "forbiddenString"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_42

    .line 3466
    if-eqz v10, :cond_0

    .line 3467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "value"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3468
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "New attribute found : value("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    if-eqz v32, :cond_0

    .line 3470
    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3472
    :cond_42
    const-string v33, "application"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_46

    .line 3473
    if-eqz v4, :cond_0

    .line 3474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3475
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "New attribute found : name("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "com.samsung.contacts"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_43

    const-string v33, "com.android.contacts"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_43

    .line 3478
    const-string v32, "com.samsung.contacts"

    .line 3480
    :cond_43
    if-eqz v32, :cond_0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "allow"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3482
    .local v7, "content":Ljava/lang/String;
    if-eqz v7, :cond_44

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 3483
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "disallow"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3484
    if-eqz v7, :cond_45

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 3485
    :cond_45
    move-object/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3490
    .end local v7    # "content":Ljava/lang/String;
    :cond_46
    const-string v33, "replace"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_48

    .line 3491
    if-eqz v4, :cond_0

    .line 3492
    const-string v33, "MumXmlDataParser"

    const-string v34, "Replace tag found"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "value"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3494
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "value is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    const-string v33, " "

    const-string v34, ""

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 3496
    .local v31, "target":[Ljava/lang/String;
    move-object/from16 v5, v31

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    move/from16 v0, v18

    if-ge v13, v0, :cond_0

    aget-object v21, v5, v13

    .line 3497
    .local v21, "oper":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_47

    .line 3498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3499
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "name is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v4, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3496
    :cond_47
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3504
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v18    # "len$":I
    .end local v21    # "oper":Ljava/lang/String;
    .end local v31    # "target":[Ljava/lang/String;
    :cond_48
    const-string v33, "groupPkg"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4a

    .line 3505
    if-eqz v4, :cond_0

    .line 3506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "value"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3507
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "GROUPPKG tag found for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_49
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3509
    .local v14, "installPkg":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_49

    .line 3510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3515
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "installPkg":Ljava/lang/String;
    :cond_4a
    const-string v33, "provider"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4c

    .line 3517
    if-eqz v19, :cond_0

    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3519
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "provider: New attribute found : name("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    if-eqz v32, :cond_4b

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_4b

    .line 3521
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3522
    :cond_4b
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 3525
    :cond_4c
    const-string v33, "package"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_51

    .line 3527
    if-eqz v25, :cond_4f

    .line 3528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3529
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "package: New attribute found knoxCore: name("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    if-eqz v32, :cond_0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    .line 3531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "allow"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3532
    .restart local v7    # "content":Ljava/lang/String;
    if-eqz v7, :cond_4d

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 3533
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "disallow"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3534
    if-eqz v7, :cond_4e

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 3535
    :cond_4e
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3539
    .end local v7    # "content":Ljava/lang/String;
    :cond_4f
    if-eqz v19, :cond_0

    .line 3540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3541
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "package: New attribute found : name("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    if-eqz v32, :cond_50

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_50

    .line 3543
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3544
    :cond_50
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 3547
    :cond_51
    const-string v33, "property"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_52

    .line 3549
    if-eqz v23, :cond_0

    .line 3550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3551
    .local v27, "property":Ljava/lang/String;
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "property: New attribute found : name("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "value"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3553
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "property: New attribute found : value("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    if-eqz v32, :cond_0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    .line 3556
    new-instance v33, Landroid/util/Pair;

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3560
    .end local v27    # "property":Ljava/lang/String;
    :cond_52
    const-string v33, "protectedPkg"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_53

    .line 3562
    if-eqz v28, :cond_0

    .line 3563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3564
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "New attribute found : name("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    if-eqz v32, :cond_0

    .line 3566
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3569
    :cond_53
    const-string v33, "disablePkg"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_56

    .line 3571
    if-eqz v11, :cond_0

    .line 3572
    const/16 v16, 0x1

    .line 3573
    .local v16, "isDisabled":Z
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "disablePKG. value attr is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-interface/range {v35 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "value"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3575
    if-eqz v32, :cond_55

    .line 3576
    const-string v33, " "

    const-string v34, ""

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 3577
    .restart local v31    # "target":[Ljava/lang/String;
    move-object/from16 v5, v31

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v13, v0, :cond_55

    aget-object v21, v5, v13

    .line 3578
    .restart local v21    # "oper":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_54

    .line 3579
    const/16 v16, 0x0

    .line 3577
    :cond_54
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 3583
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v18    # "len$":I
    .end local v21    # "oper":Ljava/lang/String;
    .end local v31    # "target":[Ljava/lang/String;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "name"

    invoke-interface/range {v33 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3584
    const-string v33, "MumXmlDataParser"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "New attribute found : name("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    if-eqz v32, :cond_0

    if-eqz v16, :cond_0

    .line 3586
    move-object/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3589
    .end local v16    # "isDisabled":Z
    :cond_56
    const-string v33, "knoxCore"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 3591
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .restart local v25    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3597
    .end local v30    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 3598
    .restart local v30    # "tag":Ljava/lang/String;
    const-string v33, "row"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_5e

    if-eqz v29, :cond_5e

    .line 3599
    if-eqz v4, :cond_58

    .line 3600
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v12, v0, :cond_58

    .line 3601
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string v34, "group_"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_57

    .line 3602
    const-string v34, "MumXmlDataParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "is removed"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3600
    :cond_57
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 3607
    .end local v12    # "i":I
    :cond_58
    if-eqz v24, :cond_59

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_59

    .line 3608
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 3610
    :cond_59
    if-eqz v10, :cond_5a

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_5a

    .line 3611
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    .line 3613
    :cond_5a
    if-eqz v4, :cond_5b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_5b

    .line 3614
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 3616
    :cond_5b
    if-eqz v28, :cond_5c

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_5c

    .line 3617
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 3618
    :cond_5c
    if-eqz v11, :cond_5d

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_5d

    .line 3619
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 3621
    :cond_5d
    invoke-virtual/range {v29 .. v29}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 3622
    const/16 v24, 0x0

    .line 3623
    const/4 v10, 0x0

    .line 3624
    const/4 v4, 0x0

    .line 3625
    const/16 v28, 0x0

    .line 3626
    const/4 v11, 0x0

    .line 3627
    const/16 v19, 0x0

    .line 3628
    const/16 v23, 0x0

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3631
    :cond_5e
    const-string v33, "provider"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_61

    .line 3633
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    .line 3635
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_60

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 3636
    .local v22, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_5f

    .line 3637
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3639
    :cond_5f
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3640
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_5

    .line 3643
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_60
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 3644
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 3647
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_61
    const-string v33, "package"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_63

    .line 3649
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_0

    .line 3651
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_62

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 3652
    .restart local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3654
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_62
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 3655
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 3658
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_63
    const-string v33, "knoxCore"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 3660
    if-eqz v25, :cond_64

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_64

    .line 3661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2502(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3663
    :cond_64
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 3176
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3145
    .local p1, "type":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 3146
    return-void
.end method

.method public writeToXml()V
    .locals 34

    .prologue
    .line 3846
    new-instance v9, Ljava/io/File;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2600()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "enterprisedata.xml"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3847
    .local v9, "file":Ljava/io/File;
    const/16 v27, 0x0

    .line 3849
    .local v27, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v28, Ljava/io/FileOutputStream;

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-direct {v0, v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3850
    .end local v27    # "stream":Ljava/io/FileOutputStream;
    .local v28, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v19, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3851
    .local v19, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v14, 0x0

    .line 3852
    .local v14, "intVal":I
    const/16 v26, 0x0

    .line 3853
    .local v26, "strVal":Ljava/lang/String;
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3854
    .local v5, "booleanVal":Ljava/lang/Boolean;
    const-string/jumbo v31, "utf-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3855
    const/16 v31, 0x0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3856
    const-string v31, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3858
    const/16 v31, 0x0

    const-string/jumbo v32, "table"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3859
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "MUMContainerType"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 3861
    .local v30, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const-string v31, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3862
    const/16 v31, 0x0

    const-string v32, "row"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3863
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 3864
    const/16 v31, 0x0

    const-string/jumbo v32, "type"

    sget-object v33, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3868
    :cond_0
    :goto_1
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v14

    .line 3869
    if-ltz v14, :cond_1

    .line 3870
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3871
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3872
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "UID"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3873
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3874
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3876
    :cond_1
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v14

    .line 3877
    const/16 v31, -0x1

    move/from16 v0, v31

    if-lt v14, v0, :cond_2

    .line 3878
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3879
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3880
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "UserID"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3881
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3882
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3884
    :cond_2
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v23

    .line 3885
    .local v23, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v23, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_6

    .line 3886
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3887
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3888
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PersonaIDs"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3889
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 3890
    .local v22, "personaId":Ljava/lang/Integer;
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3891
    const/16 v31, 0x0

    const-string v32, "persona"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3892
    const/16 v31, 0x0

    const-string v32, "id"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3893
    const/16 v31, 0x0

    const-string v32, "persona"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 4335
    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "intVal":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v22    # "personaId":Ljava/lang/Integer;
    .end local v23    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v26    # "strVal":Ljava/lang/String;
    .end local v30    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v8

    move-object/from16 v27, v28

    .line 4337
    .end local v28    # "stream":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/io/IOException;
    .restart local v27    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v27, :cond_3

    .line 4338
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4344
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-void

    .line 3865
    .end local v27    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "booleanVal":Ljava/lang/Boolean;
    .restart local v14    # "intVal":I
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v26    # "strVal":Ljava/lang/String;
    .restart local v28    # "stream":Ljava/io/FileOutputStream;
    .restart local v30    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_4
    :try_start_3
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 3866
    const/16 v31, 0x0

    const-string/jumbo v32, "type"

    sget-object v33, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v33 .. v33}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 3895
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v23    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3896
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3898
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v26

    .line 3899
    if-eqz v26, :cond_7

    .line 3900
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3901
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3902
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "Name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3903
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3904
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3906
    :cond_7
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v26

    .line 3907
    if-eqz v26, :cond_8

    .line 3908
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3909
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3910
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "Version"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3911
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3912
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3914
    :cond_8
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v14

    .line 3915
    if-eqz v14, :cond_9

    .line 3916
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3917
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3918
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "MaximumTimeToLock"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3919
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3920
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3923
    :cond_9
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v14

    .line 3924
    if-eqz v14, :cond_a

    .line 3925
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3926
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3927
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordMinimumLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3928
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3929
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3931
    :cond_a
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v14

    .line 3932
    if-eqz v14, :cond_b

    .line 3933
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3934
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3935
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordMinimumNonLetters"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3936
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3937
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3939
    :cond_b
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v14

    .line 3940
    if-eqz v14, :cond_c

    .line 3941
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3942
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3943
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordMinimumLetters"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3944
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3945
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3947
    :cond_c
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v14

    .line 3948
    if-eqz v14, :cond_d

    .line 3949
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3950
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3951
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordMinimumNumeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3952
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3953
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3955
    :cond_d
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v14

    .line 3956
    if-eqz v14, :cond_e

    .line 3957
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3958
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3959
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordMinimumUpperCase"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3960
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3961
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3963
    :cond_e
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v14

    .line 3964
    if-eqz v14, :cond_f

    .line 3965
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3966
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3967
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordMinimumLowerCase"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3968
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3969
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3971
    :cond_f
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v14

    .line 3972
    if-eqz v14, :cond_10

    .line 3973
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3974
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3975
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordMinimumSymbols"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3976
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3977
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3979
    :cond_10
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v14

    .line 3980
    if-eqz v14, :cond_11

    .line 3981
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3982
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3983
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PasswordQuality"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3984
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3985
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3987
    :cond_11
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v14

    .line 3988
    if-eqz v14, :cond_12

    .line 3989
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3990
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3991
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3992
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3993
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3995
    :cond_12
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v14

    .line 3996
    if-eqz v14, :cond_13

    .line 3997
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3998
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3999
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "MaximumCharacterOccurences"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4000
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4001
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4003
    :cond_13
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v14

    .line 4004
    if-eqz v14, :cond_14

    .line 4005
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4006
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4007
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4008
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4009
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4011
    :cond_14
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v14

    .line 4012
    if-eqz v14, :cond_15

    .line 4013
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4014
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4015
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "MaximumNumericSequenceLength"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4016
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4017
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4019
    :cond_15
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4020
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_16

    .line 4021
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4022
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4023
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "SimplePasswordEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4024
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4025
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4027
    :cond_16
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4028
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 4029
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4030
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4031
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "MultifactorAuthEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4032
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4033
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4035
    :cond_17
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4036
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_18

    .line 4037
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4038
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4039
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "UserManaged"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4040
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4041
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4043
    :cond_18
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v10

    .line 4044
    .local v10, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_1a

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_1a

    .line 4045
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4046
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4047
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "ForbiddenStrings"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4048
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_19

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 4049
    .local v29, "string":Ljava/lang/String;
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4050
    const/16 v31, 0x0

    const-string v32, "forbiddenString"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4051
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4052
    const/16 v31, 0x0

    const-string v32, "forbiddenString"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 4054
    .end local v29    # "string":Ljava/lang/String;
    :cond_19
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4055
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4057
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v26

    .line 4058
    if-eqz v26, :cond_1b

    .line 4059
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4060
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4061
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "PatternRestriction"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4062
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4063
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4065
    :cond_1b
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v26

    .line 4066
    if-eqz v26, :cond_1c

    .line 4067
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4068
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4069
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "CustomBadgeIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4070
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4071
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4073
    :cond_1c
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v26

    .line 4074
    if-eqz v26, :cond_1d

    .line 4075
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4076
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4077
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4078
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4079
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4081
    :cond_1d
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v26

    .line 4082
    if-eqz v26, :cond_1e

    .line 4083
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4084
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4085
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "CustomLockScreenWallpaper"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4086
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4087
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4089
    :cond_1e
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v26

    .line 4090
    if-eqz v26, :cond_1f

    .line 4091
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4092
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4093
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "CustomStatusLabel"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4094
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4095
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4097
    :cond_1f
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v26

    .line 4098
    if-eqz v26, :cond_20

    .line 4099
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4100
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4101
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "CustomStatusIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4102
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4103
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4105
    :cond_20
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4106
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_21

    .line 4107
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4108
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4109
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "AllowMultiwindowMode"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4110
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4111
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4113
    :cond_21
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4114
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_22

    .line 4115
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4116
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4117
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "AllowTaskManager"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4118
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4119
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4121
    :cond_22
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v31, v0

    if-eqz v31, :cond_28

    .line 4122
    move-object/from16 v0, v30

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v16, v0

    .line 4123
    .local v16, "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4124
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_23

    .line 4125
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4126
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4127
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "AllowSettingsChanges"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4128
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4129
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4131
    :cond_23
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4132
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_24

    .line 4133
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4134
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4135
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "AllowStatusBarExpansion"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4136
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4137
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4139
    :cond_24
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4140
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_25

    .line 4141
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4142
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4143
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "AllowHomeKey"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4144
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4145
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4147
    :cond_25
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4148
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_26

    .line 4149
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4150
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4151
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "AllowClearAllNotification"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4152
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4153
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4156
    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4157
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_27

    .line 4158
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4159
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4160
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "HideSystemBar"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4161
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4162
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4164
    :cond_27
    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4165
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_28

    .line 4166
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4167
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4168
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "WipeRecentTasks"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4169
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4170
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4173
    .end local v16    # "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    :cond_28
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v31, v0

    if-eqz v31, :cond_2a

    .line 4174
    move-object/from16 v0, v30

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v18, v0

    .line 4175
    .local v18, "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v26

    .line 4176
    if-eqz v26, :cond_29

    .line 4177
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4178
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4179
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "FolderHeaderTitle"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4180
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4181
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4183
    :cond_29
    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v26

    .line 4184
    if-eqz v26, :cond_2a

    .line 4185
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4186
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4187
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "FolderHeaderIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4188
    const/16 v31, 0x0

    const-string/jumbo v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4189
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4192
    .end local v18    # "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    :cond_2a
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v17

    .line 4193
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_2c

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_2c

    .line 4194
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4195
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4196
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "AppInstallList"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4197
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4198
    .local v4, "application":Ljava/lang/String;
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4199
    const/16 v31, 0x0

    const-string v32, "application"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4200
    const/16 v31, 0x0

    const-string v32, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4201
    const/16 v31, 0x0

    const-string v32, "application"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 4203
    .end local v4    # "application":Ljava/lang/String;
    :cond_2b
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4204
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4206
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_2c
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v17

    .line 4207
    if-eqz v17, :cond_2e

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_2e

    .line 4208
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4209
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4210
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "ProtectedPkgList"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4211
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 4212
    .local v24, "protectedPkg":Ljava/lang/String;
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4213
    const/16 v31, 0x0

    const-string v32, "protectedPkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4214
    const/16 v31, 0x0

    const-string v32, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4215
    const/16 v31, 0x0

    const-string v32, "protectedPkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 4217
    .end local v24    # "protectedPkg":Ljava/lang/String;
    :cond_2d
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4218
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4221
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v17

    .line 4222
    if-eqz v17, :cond_30

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_30

    .line 4223
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4224
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4225
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "GoogleAppsPkgList"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4226
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4227
    .local v7, "disablePkg":Ljava/lang/String;
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4228
    const/16 v31, 0x0

    const-string v32, "disablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4229
    const/16 v31, 0x0

    const-string v32, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4230
    const/16 v31, 0x0

    const-string v32, "disablePkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 4232
    .end local v7    # "disablePkg":Ljava/lang/String;
    :cond_2f
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4233
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4236
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_30
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v25

    .line 4237
    .local v25, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v25, :cond_33

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_33

    .line 4238
    const/16 v21, 0x0

    .line 4239
    .local v21, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4240
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4241
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "RCPDataSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4242
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_32

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4243
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v21, Ljava/util/List;

    .line 4244
    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4245
    const/16 v31, 0x0

    const-string v32, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4246
    const/16 v31, 0x0

    const-string v32, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4247
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_31

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 4248
    .local v20, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v31, "\n\t\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4249
    const/16 v31, 0x0

    const-string v32, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4250
    const/16 v32, 0x0

    const-string v33, "name"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4251
    const/16 v32, 0x0

    const-string/jumbo v33, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4252
    const/16 v31, 0x0

    const-string v32, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 4254
    .end local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_31
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4255
    const/16 v31, 0x0

    const-string v32, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_9

    .line 4257
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    :cond_32
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4258
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4260
    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_33
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v25

    .line 4261
    if-eqz v25, :cond_36

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_36

    .line 4262
    const/16 v21, 0x0

    .line 4263
    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4264
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4265
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4266
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_35

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4267
    .restart local v15    # "key":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v21, Ljava/util/List;

    .line 4268
    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4269
    const/16 v31, 0x0

    const-string v32, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4270
    const/16 v31, 0x0

    const-string v32, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4271
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_34

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 4272
    .restart local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v31, "\n\t\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4273
    const/16 v31, 0x0

    const-string v32, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4274
    const/16 v32, 0x0

    const-string v33, "name"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4275
    const/16 v32, 0x0

    const-string/jumbo v33, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4276
    const/16 v31, 0x0

    const-string v32, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    .line 4278
    .end local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_34
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4279
    const/16 v31, 0x0

    const-string v32, "provider"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_b

    .line 4281
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    :cond_35
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4282
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4284
    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_36
    invoke-virtual/range {v30 .. v30}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v25

    .line 4285
    if-eqz v25, :cond_39

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_39

    .line 4286
    const/16 v21, 0x0

    .line 4287
    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4288
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4289
    const/16 v31, 0x0

    const-string v32, "name"

    const-string v33, "RCPNotifSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4290
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_38

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4291
    .restart local v15    # "key":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v21, Ljava/util/List;

    .line 4292
    .restart local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4293
    const/16 v31, 0x0

    const-string v32, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4294
    const/16 v31, 0x0

    const-string v32, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4295
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_37

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 4296
    .restart local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v31, "\n\t\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4297
    const/16 v31, 0x0

    const-string v32, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4298
    const/16 v32, 0x0

    const-string v33, "name"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4299
    const/16 v32, 0x0

    const-string/jumbo v33, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4300
    const/16 v31, 0x0

    const-string v32, "property"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e

    .line 4302
    .end local v20    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_37
    const-string v31, "\n\t\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4303
    const/16 v31, 0x0

    const-string v32, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_d

    .line 4305
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    :cond_38
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4306
    const/16 v31, 0x0

    const-string v32, "column"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4309
    .end local v21    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_39
    const-string v31, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4310
    const/16 v31, 0x0

    const-string v32, "row"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 4312
    .end local v10    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v30    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_3c

    .line 4313
    const-string v31, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4314
    const/16 v31, 0x0

    const-string v32, "knoxCore"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static/range {v31 .. v31}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4316
    .local v6, "corePkg":Ljava/lang/String;
    const-string v31, "\n\t\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4317
    const/16 v31, 0x0

    const-string v32, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4318
    const/16 v31, 0x0

    const-string v32, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4319
    const/16 v31, 0x0

    const-string v32, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 4321
    .end local v6    # "corePkg":Ljava/lang/String;
    :cond_3b
    const-string v31, "\n\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4322
    const/16 v31, 0x0

    const-string v32, "knoxCore"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4324
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3c
    const-string v31, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4325
    const/16 v31, 0x0

    const-string/jumbo v32, "table"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4327
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4328
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4330
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4334
    :goto_10
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v27, v28

    .line 4343
    .end local v28    # "stream":Ljava/io/FileOutputStream;
    .restart local v27    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 4331
    .end local v27    # "stream":Ljava/io/FileOutputStream;
    .restart local v28    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    .line 4332
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v31, "MumXmlDataParser"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error in Write to XML sync FD "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_10

    .line 4340
    .end local v5    # "booleanVal":Ljava/lang/Boolean;
    .end local v14    # "intVal":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v26    # "strVal":Ljava/lang/String;
    .end local v28    # "stream":Ljava/io/FileOutputStream;
    .restart local v27    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v31

    goto/16 :goto_4

    .line 4335
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto/16 :goto_3
.end method
