.class final Lcom/android/server/MountService$9;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->sortByValue(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 3578
    iput-object p1, p0, Lcom/android/server/MountService$9;->val$m:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 3580
    iget-object v3, p0, Lcom/android/server/MountService$9;->val$m:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3581
    .local v0, "v1":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/MountService$9;->val$m:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3582
    .local v1, "v2":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 3583
    if-nez v1, :cond_1

    .line 3589
    .end local v1    # "v2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 3583
    .restart local v1    # "v2":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3585
    :cond_2
    instance-of v3, v1, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 3586
    check-cast v1, Ljava/lang/Comparable;

    .end local v1    # "v2":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method
