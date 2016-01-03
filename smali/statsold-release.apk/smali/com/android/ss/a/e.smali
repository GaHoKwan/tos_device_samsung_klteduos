.class public final Lcom/android/ss/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ss/a/e;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/ss/a/e;->a:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ss/a/e;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/ss/a/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v0, v1

    goto :goto_1
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/ss/a/e;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/ss/a/e;->a:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/android/ss/a/e;->a:Ljava/util/Set;

    return-object v0
.end method
