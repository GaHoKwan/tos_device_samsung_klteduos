.class public final Lcom/android/ss/a/c;
.super Lcom/android/ss/a/a;


# annotations
.annotation runtime Lorg/xml/bind/annotation/XmlRootElement;
    a = "apps"
.end annotation

.annotation runtime Lorg/xml/bind/annotation/XmlType;
.end annotation


# instance fields
.field private f:Ljava/util/List;
    .annotation runtime Lorg/xml/bind/annotation/XmlElement;
        a = "app"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/ss/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/ss/a/c;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ss/a/c;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/ss/a/c;->f:Ljava/util/List;

    return-object v0
.end method
