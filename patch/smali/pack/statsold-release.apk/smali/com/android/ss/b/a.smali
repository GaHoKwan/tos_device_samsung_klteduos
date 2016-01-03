.class public Lcom/android/ss/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/android/ss/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/ss/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/ss/a/e;
    .locals 3

    invoke-static {p0}, Lcom/android/ss/b/a;->b(Landroid/content/Context;)Lcom/android/ss/a/e;

    move-result-object v0

    invoke-static {p0}, Lcom/android/ss/b/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/android/ss/c;->c()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ss/c;->a(Landroid/content/Context;Z)Z

    :cond_0
    invoke-static {}, Lcom/android/ss/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/ss/c;->c()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ss/b/a;->a(Landroid/content/Context;Z)Lcom/android/ss/a/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/ss/a/e;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/ss/a/e;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Z)Lcom/android/ss/a/e;
    .locals 11

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-static {}, Lcom/android/ss/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz p1, :cond_4

    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_1
    const-string v6, "<"

    invoke-static {v1, v6}, Lcom/android/ss/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ">"

    invoke-static {v1, v6}, Lcom/android/ss/c/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v5, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    :goto_2
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v1, v9, :cond_5

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_0
    :goto_4
    new-instance v0, Lcom/android/ss/a/e;

    invoke-direct {v0, v3}, Lcom/android/ss/a/e;-><init>(Ljava/util/Set;)V

    return-object v0

    :cond_1
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto :goto_4

    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/ss/c/c;->b([B)V

    invoke-static {v1}, Lcom/android/ss/c/h;->b([B)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u89e3\u5bc6\u540e\uff08"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff09\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_7
    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :try_start_9
    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v1

    :try_start_a
    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto :goto_4

    :cond_5
    :try_start_c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    const-string v1, "app"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v5, Lcom/android/ss/a/d;

    invoke-direct {v5}, Lcom/android/ss/a/d;-><init>()V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    move v1, v2

    :goto_5
    if-lt v1, v6, :cond_7

    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u63a8\u5e7f\u5e94\u7528\uff08\u540c\u6b65\u7684\uff09\uff1a"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/ss/a/d;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :catch_6
    move-exception v1

    :try_start_d
    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_4

    :catch_7
    move-exception v0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto/16 :goto_4

    :cond_7
    :try_start_f
    const-string v7, "name"

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/ss/a/d;->b(Ljava/lang/String;)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    const-string v7, "id"

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/ss/a/d;->a(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    if-eqz v1, :cond_a

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    :cond_a
    :goto_8
    throw v0

    :cond_b
    :try_start_11
    const-string v7, "code"

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/ss/a/d;->c(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_6

    :catch_8
    move-exception v1

    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto :goto_8

    :catch_9
    move-exception v0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lcom/android/ss/b/a;->b:Lcom/android/ss/a/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e05\u7a7a\u5185\u5b58\u4e2d\u5df2\u52a0\u8f7d\u7684\u63a8\u5e7f\u5e94\u7528\u914d\u7f6e\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/ss/b/a;->b:Lcom/android/ss/a/e;

    invoke-virtual {v1}, Lcom/android/ss/a/e;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/android/ss/b/a;->b:Lcom/android/ss/a/e;

    invoke-virtual {v0}, Lcom/android/ss/a/e;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/android/ss/a/e;
    .locals 7

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/android/ss/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020001

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_2
    new-instance v0, Lcom/android/ss/a/e;

    invoke-direct {v0, v2}, Lcom/android/ss/a/e;-><init>(Ljava/util/Set;)V

    return-object v0

    :cond_0
    const/high16 v0, 0x7f020000

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const-string v0, "app"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/android/ss/a/d;

    invoke-direct {v3}, Lcom/android/ss/a/d;-><init>()V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v4

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v4, :cond_3

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u63a8\u5e7f\u5e94\u7528\uff08\u5185\u7f6e\u7684\uff09\uff1a"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/ss/a/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v5, "name"

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/ss/a/d;->b(Ljava/lang/String;)V

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string v5, "id"

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/ss/a/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :cond_6
    :try_start_5
    const-string v5, "code"

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/ss/a/d;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/ss/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    sget-object v1, Lcom/android/ss/b/a;->a:Ljava/lang/String;

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3
.end method
