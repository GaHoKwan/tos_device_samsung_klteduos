.class public Landroid/os/TactileAssist;
.super Ljava/lang/Object;
.source "TactileAssist.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TactileAssist"


# instance fields
.field private final mService:Landroid/os/ITactileAssistService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "tactileassist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ITactileAssistService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITactileAssistService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    .line 37
    return-void
.end method


# virtual methods
.method public getActuators()[I
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->getActuators()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to get Actuators"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDensity(II)Z
    .locals 6
    .param p1, "actuator"    # I
    .param p2, "density"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 104
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 105
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return v2

    .line 109
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1, p2}, Landroid/os/ITactileAssistService;->setDensity(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist density"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnable(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 50
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 51
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return v2

    .line 55
    :cond_0
    :try_start_0
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accessibility test : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1}, Landroid/os/ITactileAssistService;->setEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to enable TactileAssist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInternalEnable(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1, p1}, Landroid/os/ITactileAssistService;->setInternalEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to internal enable TactileAssist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLevel(I)Z
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 74
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 75
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return v2

    .line 79
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1}, Landroid/os/ITactileAssistService;->setLevel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist Level"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSharpness(II)Z
    .locals 6
    .param p1, "actuator"    # I
    .param p2, "sharpness"    # I

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 118
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 119
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return v2

    .line 123
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1, p2}, Landroid/os/ITactileAssistService;->setSharpness(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist sharpness"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStrength(II)Z
    .locals 6
    .param p1, "actuator"    # I
    .param p2, "strength"    # I

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 89
    .local v1, "uid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 90
    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can only call from system."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return v2

    .line 94
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v3, p1, p2}, Landroid/os/ITactileAssistService;->setStrength(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TactileAssist"

    const-string/jumbo v4, "service unable to set TactileAssist strength"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public storeAppList()Z
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/os/TactileAssist;->mService:Landroid/os/ITactileAssistService;

    invoke-interface {v1}, Landroid/os/ITactileAssistService;->storeAppList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TactileAssist"

    const-string/jumbo v2, "service unable to store app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method
