.class public Landroid/hardware/contextaware/MultiModeContextList;
.super Ljava/lang/Object;
.source "MultiModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/MultiModeContextList$1;,
        Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/MultiModeContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/MultiModeContextList;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    if-nez v0, :cond_1

    .line 92
    const-class v1, Landroid/hardware/contextaware/MultiModeContextList;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/hardware/contextaware/MultiModeContextList;

    invoke-direct {v0}, Landroid/hardware/contextaware/MultiModeContextList;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    .line 96
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .locals 6
    .param p1, "serviceOrdinal"    # I

    .prologue
    .line 149
    const-string v1, ""

    .line 151
    .local v1, "code":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 152
    .local v2, "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 153
    invoke-virtual {v2}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 158
    .end local v2    # "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    sget-object v5, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 164
    :cond_1
    return-object v1

    .line 151
    .restart local v2    # "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .locals 6
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v4, 0x0

    .line 131
    .local v4, "ordinal":I
    invoke-static {}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 132
    .local v1, "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    invoke-virtual {v1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 138
    .end local v1    # "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_0
    return v4

    .line 131
    .restart local v1    # "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final isIncluded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v1, 0x1

    .line 178
    .local v1, "included":Z
    :try_start_0
    invoke-static {p1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isMultiModeType(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 111
    .local v3, "inMulti":Z
    invoke-static {}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 112
    .local v1, "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    # getter for: Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->access$100(Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    const/4 v3, 0x1

    .line 118
    .end local v1    # "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_0
    return v3

    .line 111
    .restart local v1    # "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
