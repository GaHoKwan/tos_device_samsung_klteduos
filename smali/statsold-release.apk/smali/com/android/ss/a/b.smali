.class public final Lcom/android/ss/a/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/xml/bind/annotation/XmlRootElement;
    a = "app"
.end annotation

.annotation runtime Lorg/xml/bind/annotation/XmlType;
.end annotation


# instance fields
.field private a:Lcom/android/ss/a/d;
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "app_id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "package_name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "label"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "version_name"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "version_code"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "md5"
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "state"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/ss/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ss/a/b;->a:Lcom/android/ss/a/d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ss/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/android/ss/a/b;->e:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ss/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ss/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ss/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/ss/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/ss/a/b;->a:Lcom/android/ss/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ss/a/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ss/c/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ss/a/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ss/a/b;->a:Lcom/android/ss/a/d;

    invoke-virtual {v1}, Lcom/android/ss/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ss/a/b;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Info [_packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ss/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ss/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ss/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ss/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ss/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _cfg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ss/a/b;->a:Lcom/android/ss/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
