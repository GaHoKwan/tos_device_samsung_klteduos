.class Landroid/app/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 2168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2169
    iput-object p1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 2170
    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2798
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2800
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2802
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    return-void

    .line 2805
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2712
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2714
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2716
    if-eqz p2, :cond_0

    .line 2717
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2718
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2722
    :goto_0
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2729
    return-void

    .line 2720
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2726
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 2722
    goto :goto_1
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2747
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2749
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2751
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2757
    return-void

    .line 2754
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public activityResumed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2733
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2735
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2737
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2743
    return-void

    .line 2740
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public activitySlept(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2784
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2786
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2788
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2794
    return-void

    .line 2791
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2762
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2764
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2766
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2767
    if-eqz p3, :cond_0

    .line 2768
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2769
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2773
    :goto_0
    const/4 v2, 0x0

    invoke-static {p4, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2774
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2780
    return-void

    .line 2771
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2777
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3376
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3378
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3380
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3381
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    return-void

    .line 3383
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachApplication(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2697
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2699
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2700
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2701
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2702
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2707
    return-void

    .line 2704
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3658
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3660
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3663
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    return-void

    .line 3665
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupRestoreMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3629
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3631
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3632
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3634
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3635
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3636
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3639
    .local v2, "success":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3639
    .end local v2    # "success":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3521
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3523
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3524
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3526
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3527
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3528
    invoke-interface {p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3529
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3530
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3531
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3536
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3524
    .end local v2    # "res":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3536
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "map"    # Landroid/os/Bundle;
    .param p8, "requiredPermission"    # Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "serialized"    # Z
    .param p11, "sticky"    # Z
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2635
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2637
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2638
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2639
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2640
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2641
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2642
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2645
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2646
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    if-eqz p10, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2648
    if-eqz p11, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2649
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2651
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2652
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2655
    .local v3, "res":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    .line 2638
    .end local v3    # "res":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2641
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2647
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 2648
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 2655
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3871
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3873
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3874
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3875
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3881
    return-void

    .line 3878
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4905
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4907
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4910
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4911
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4912
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4917
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4917
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4014
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4016
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4019
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4020
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4021
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4022
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4025
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4025
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4050
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4052
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4053
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4054
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4055
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4056
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4057
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4058
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4059
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4062
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4062
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4032
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4034
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4036
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4037
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4038
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4039
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4040
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4043
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4036
    .end local v2    # "res":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 4043
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public clearPendingBackup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3646
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3648
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3649
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3654
    return-void

    .line 3651
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4622
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4624
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4626
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4632
    return-void

    .line 4629
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4729
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4731
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4733
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xae

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4738
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4738
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public convertToTranslucent(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4746
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4748
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4750
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xaf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4751
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4752
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4755
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4755
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4812
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4814
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4816
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4817
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4818
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4819
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4825
    return-void

    .line 4822
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createStack(IIIF)I
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "relativeStackBoxId"    # I
    .param p3, "position"    # I
    .param p4, "weight"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3102
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3104
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3108
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3109
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3114
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3114
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public dismissKeyguardOnNextActivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5378
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5380
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5381
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5387
    return-void

    .line 5384
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 7
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "managed"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4925
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4927
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4928
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4929
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4930
    if-eqz p3, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4931
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4932
    if-eqz p5, :cond_1

    .line 4933
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4934
    const/4 v4, 0x1

    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4938
    :goto_1
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x78

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4939
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 4943
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":Z
    :cond_0
    move v4, v3

    .line 4930
    goto :goto_0

    .line 4936
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4943
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_2
    move v2, v3

    .line 4940
    goto :goto_2
.end method

.method public enterSafeMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4300
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4301
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4305
    return-void

    .line 4303
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public fakeShutdown(I)Z
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4563
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4565
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4567
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x835

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4569
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4572
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4572
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2521
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2523
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2526
    if-eqz p3, :cond_0

    .line 2527
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2528
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2532
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2534
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 2537
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2530
    .end local v2    # "res":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2537
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 2534
    goto :goto_1
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2559
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2561
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2563
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2568
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2568
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public finishHeavyWeightApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4715
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4717
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4718
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4724
    return-void

    .line 4721
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "target"    # Landroid/app/IApplicationThread;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3711
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3713
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3714
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3716
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3717
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3723
    return-void

    .line 3714
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3720
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "map"    # Landroid/os/Bundle;
    .param p5, "abortBroadcast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2679
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2681
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2684
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2686
    if-eqz p5, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2687
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    return-void

    .line 2686
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2690
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2544
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2546
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2548
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2550
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2556
    return-void

    .line 2553
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4470
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4472
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4475
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4476
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4481
    return-void

    .line 4478
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3802
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3804
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3806
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3808
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3811
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3811
    .end local v2    # "res":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5526
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5528
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5530
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5532
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5535
    .local v2, "res":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5535
    .end local v2    # "res":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2828
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2830
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2832
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2833
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2834
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2837
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2837
    .end local v2    # "res":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2812
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2814
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2816
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2817
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2818
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2821
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2821
    .end local v2    # "res":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3727
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3729
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3730
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3731
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3732
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3735
    .local v2, "res":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3735
    .end local v2    # "res":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3282
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3284
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3285
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3286
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3288
    if-eqz p4, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3290
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3291
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3292
    .local v3, "res":I
    const/4 v0, 0x0

    .line 3293
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_1

    .line 3294
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3298
    .restart local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 3285
    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3    # "res":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 3298
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3305
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3307
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3308
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3309
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3311
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3312
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3313
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3314
    .local v3, "res":I
    const/4 v0, 0x0

    .line 3315
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 3316
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3320
    .restart local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3321
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 3320
    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3    # "res":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3321
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5174
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5176
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5177
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5179
    sget-object v3, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5182
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5182
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4502
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4504
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4505
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4507
    sget-object v3, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ConfigurationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4510
    .local v2, "res":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4510
    .end local v2    # "res":Landroid/content/pm/ConfigurationInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4979
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4981
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4982
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4983
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4984
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4987
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    .line 4987
    .end local v1    # "mode":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5315
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5317
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5318
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5319
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5325
    .local v2, "res":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5321
    .end local v2    # "res":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5325
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .locals 7
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "options"    # Landroid/os/Bundle;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3836
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3838
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3839
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3840
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3841
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3842
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3844
    if-eqz p6, :cond_0

    .line 3845
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3846
    const/4 v4, 0x0

    invoke-virtual {v1, p6, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3847
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3851
    :goto_0
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3852
    if-eqz p9, :cond_1

    .line 3853
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3854
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3858
    :goto_1
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3859
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3860
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3861
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3865
    .local v3, "res":Landroid/content/IIntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3866
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .line 3849
    .end local v3    # "res":Landroid/content/IIntentSender;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3865
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3866
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 3856
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getKidForIntentSender(Landroid/content/IIntentSender;)I
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3914
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3916
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3917
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3918
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3920
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3923
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3923
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5450
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5452
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5454
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5456
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5459
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5459
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5434
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5436
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5438
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5440
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5443
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5443
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4169
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4171
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4172
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4174
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4179
    return-void

    .line 4176
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4487
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4489
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4490
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4492
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4497
    return-void

    .line 4494
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5040
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5042
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5043
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5044
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5045
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5046
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5049
    .local v0, "ask":Z
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 5049
    .end local v0    # "ask":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3884
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3886
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3887
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3888
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3890
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3893
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3893
    .end local v2    # "res":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3818
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3820
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3822
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3824
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3827
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3827
    .end local v2    # "res":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPackageFromAppProcesses(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3002
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3004
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3006
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3008
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3011
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3011
    .end local v2    # "res":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5008
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5010
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5012
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5013
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5014
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 5017
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    .line 5017
    .end local v1    # "mode":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4136
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4138
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4140
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4141
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4142
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4143
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4147
    .local v1, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4148
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 4147
    .end local v1    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4148
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getProcessLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3966
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3968
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3969
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3974
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3974
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4637
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4639
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4641
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4643
    sget-object v3, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4646
    .local v2, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4646
    .end local v2    # "res":[Landroid/os/Debug$MemoryInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getProcessPss([I)[J
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5347
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5349
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5351
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5353
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5356
    .local v2, "res":[J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5356
    .end local v2    # "res":[J
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2970
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2972
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2973
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2974
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2975
    sget-object v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2979
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2980
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 2979
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2980
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4829
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4831
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4832
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4834
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4836
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4839
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4839
    .end local v2    # "res":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2873
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2875
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2877
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2878
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2879
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2880
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2881
    sget-object v3, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2885
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2886
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 2885
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2886
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3786
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3788
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3789
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3790
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3795
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3795
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2986
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2988
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2989
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2990
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2991
    sget-object v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2995
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 2995
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3018
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3020
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3021
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3022
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3023
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3027
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3028
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 3027
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3028
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3422
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3424
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3425
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3426
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3428
    invoke-static {v1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3431
    .local v2, "res":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3431
    .end local v2    # "res":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRunningUserIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5206
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5208
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5209
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5211
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5214
    .local v2, "result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5214
    .end local v2    # "result":[I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getServices(II)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2942
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2944
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2945
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2946
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2947
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x51

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2948
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2949
    const/4 v3, 0x0

    .line 2950
    .local v3, "list":Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2951
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 2952
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    .restart local v3    # "list":Ljava/util/ArrayList;
    :goto_0
    if-lez v0, :cond_0

    .line 2954
    sget-object v5, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2957
    .local v2, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2958
    add-int/lit8 v0, v0, -0x1

    .line 2959
    goto :goto_0

    .line 2963
    .end local v2    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .line 2963
    .end local v0    # "N":I
    .end local v3    # "list":Ljava/util/ArrayList;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public getStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 7
    .param p1, "stackBoxId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3190
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3192
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xad

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3195
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3196
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3197
    .local v3, "res":I
    const/4 v1, 0x0

    .line 3198
    .local v1, "info":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v3, :cond_0

    .line 3199
    sget-object v4, Landroid/app/ActivityManager$StackBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Landroid/app/ActivityManager$StackBoxInfo;
    check-cast v1, Landroid/app/ActivityManager$StackBoxInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3203
    .restart local v1    # "info":Landroid/app/ActivityManager$StackBoxInfo;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 3203
    .end local v1    # "info":Landroid/app/ActivityManager$StackBoxInfo;
    .end local v3    # "res":I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getStackBoxes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3174
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3176
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3177
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xab

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3178
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3179
    sget-object v3, Landroid/app/ActivityManager$StackBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3182
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3183
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 3182
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3183
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3243
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3245
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3247
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3248
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3253
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3253
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2891
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2893
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2895
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2896
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2897
    const/4 v0, 0x0

    .line 2898
    .local v0, "bm":Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2899
    sget-object v3, Landroid/app/ActivityManager$TaskThumbnails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bm":Landroid/app/ActivityManager$TaskThumbnails;
    check-cast v0, Landroid/app/ActivityManager$TaskThumbnails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2903
    .restart local v0    # "bm":Landroid/app/ActivityManager$TaskThumbnails;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2904
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 2903
    .end local v0    # "bm":Landroid/app/ActivityManager$TaskThumbnails;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2904
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTaskTopIsSecretMode(I)Z
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2927
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2929
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2931
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1005

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2933
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2936
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2936
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTaskTopThumbnail(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2909
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2911
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2913
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2914
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2915
    const/4 v0, 0x0

    .line 2916
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2917
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2921
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 2921
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "receiver"    # Landroid/app/IThumbnailReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2844
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2846
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2847
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2849
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/app/IThumbnailReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2850
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2851
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2852
    const/4 v3, 0x0

    .line 2853
    .local v3, "list":Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2854
    .local v0, "N":I
    if-ltz v0, :cond_1

    .line 2855
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2856
    .restart local v3    # "list":Ljava/util/ArrayList;
    :goto_1
    if-lez v0, :cond_1

    .line 2857
    sget-object v5, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2860
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2861
    add-int/lit8 v0, v0, -0x1

    .line 2862
    goto :goto_1

    .line 2849
    .end local v0    # "N":I
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "list":Ljava/util/ArrayList;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2866
    .restart local v0    # "N":I
    .restart local v3    # "list":Ljava/util/ArrayList;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2867
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .line 2866
    .end local v0    # "N":I
    .end local v3    # "list":Ljava/util/ArrayList;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2867
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public getUidForIntentSender(Landroid/content/IIntentSender;)I
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3899
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3901
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3902
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3903
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3905
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3908
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3908
    .end local v2    # "res":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public goingToSleep()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4214
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4216
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4217
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4223
    return-void

    .line 4220
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4069
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4071
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4072
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4073
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4074
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4075
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4076
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4082
    return-void

    .line 4079
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4864
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4866
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4867
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4868
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4869
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4870
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4871
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4872
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4878
    return-void

    .line 4875
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4374
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4376
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4378
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4379
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4380
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4385
    return-void

    .line 4382
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "violationMask"    # I
    .param p3, "info"    # Landroid/os/StrictMode$ViolationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4412
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4414
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4416
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4417
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4418
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4424
    return-void

    .line 4421
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 6
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4391
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4393
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4396
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4397
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4399
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4402
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4402
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "requireFull"    # Z
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3930
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3932
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3933
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3934
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3935
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3936
    if-eqz p4, :cond_0

    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3937
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3938
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3940
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3945
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":I
    :cond_0
    move v5, v4

    .line 3936
    goto :goto_0

    :cond_1
    move v3, v4

    .line 3937
    goto :goto_1

    .line 3945
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public hang(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "allowRestart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5573
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5575
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5577
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5578
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5584
    return-void

    .line 5581
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .locals 7
    .param p1, "pid"    # I
    .param p2, "aboveSystem"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5508
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5510
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5512
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5513
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5514
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    int-to-long v2, v4

    .line 5519
    .local v2, "res":J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 5519
    .end local v2    # "res":J
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4779
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4781
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4783
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4785
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4788
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4785
    goto :goto_0

    .line 4788
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5299
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5301
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5302
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5303
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5308
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5308
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5283
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5285
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5286
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5287
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5292
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5292
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isTopActivityImmersive()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4796
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4798
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4799
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x71

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4801
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4804
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4801
    goto :goto_0

    .line 4804
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isUserAMonkey()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4686
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4688
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4689
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4690
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4694
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4694
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isUserRunning(IZ)Z
    .locals 7
    .param p1, "userid"    # I
    .param p2, "orStopping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5189
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5191
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5193
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5194
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x7a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5199
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "result":Z
    :cond_0
    move v4, v3

    .line 5193
    goto :goto_0

    :cond_1
    move v2, v3

    .line 5196
    goto :goto_1

    .line 5199
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public killAllBackgroundProcesses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4457
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4459
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4460
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4466
    return-void

    .line 4463
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4653
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4655
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4657
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4658
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4664
    return-void

    .line 4661
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appid"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4606
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4608
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4610
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4611
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4612
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4618
    return-void

    .line 4615
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public killBackgroundProcesses(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4442
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4444
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4447
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4453
    return-void

    .line 4450
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public killPids([ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4318
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4320
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4323
    if-eqz p3, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4324
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x50

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 4329
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":Z
    :cond_0
    move v4, v3

    .line 4323
    goto :goto_0

    :cond_1
    move v2, v3

    .line 4326
    goto :goto_1

    .line 4329
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public killProcessesBelowForeground(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4336
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4338
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4340
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4341
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4344
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4344
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public killUid(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5558
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5560
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5563
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5569
    return-void

    .line 5566
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3069
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3071
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3073
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x4b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3076
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 3079
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":Z
    :cond_0
    move v4, v3

    .line 3073
    goto :goto_0

    :cond_1
    move v2, v3

    .line 3076
    goto :goto_1

    .line 3079
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public moveTaskBackwards(I)V
    .locals 5
    .param p1, "task"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3086
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3088
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    return-void

    .line 3093
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveTaskToBack(I)V
    .locals 5
    .param p1, "task"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3055
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3057
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3059
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3065
    return-void

    .line 3062
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "task"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3034
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3036
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3038
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3039
    if-eqz p3, :cond_0

    .line 3040
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3041
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3045
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3051
    return-void

    .line 3043
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3048
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public moveTaskToStack(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3122
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3124
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3127
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3128
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3134
    return-void

    .line 3131
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public multiWindowSettingChanged(Z)V
    .locals 5
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3757
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3759
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3760
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3761
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3767
    return-void

    .line 3764
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "target"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5410
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5412
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5414
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5416
    if-eqz p4, :cond_0

    .line 5417
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5418
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5422
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x93

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5424
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 5427
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5420
    .end local v2    # "result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5427
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 5424
    goto :goto_1
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4847
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4849
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4851
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4852
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4853
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4856
    .local v2, "res":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4856
    .end local v2    # "res":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public noteWakeupAlarm(Landroid/content/IIntentSender;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4308
    .local v0, "data":Landroid/os/Parcel;
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4310
    :try_start_0
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4311
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4315
    return-void

    .line 4313
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5602
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5604
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5606
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5612
    return-void

    .line 5609
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4196
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4198
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4199
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4200
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4201
    const/4 v1, 0x0

    .line 4202
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4203
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    check-cast v1, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4207
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4208
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 4207
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4208
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4669
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4671
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4673
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4674
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4675
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4676
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4682
    return-void

    .line 4679
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3611
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3613
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3614
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3615
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3616
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3617
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3618
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3621
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 3621
    .end local v0    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public performIdleMaintenance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5629
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5631
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5632
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5638
    return-void

    .line 5635
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public profileControl(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z
    .locals 7
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "start"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4519
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4521
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4524
    if-eqz p3, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4525
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4526
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4527
    if-eqz p5, :cond_1

    .line 4528
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4529
    const/4 v4, 0x1

    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4533
    :goto_1
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x56

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 4538
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":Z
    :cond_0
    move v4, v3

    .line 4524
    goto :goto_0

    .line 4531
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4538
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_2
    move v2, v3

    .line 4535
    goto :goto_2
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3327
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3328
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3330
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3331
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3333
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3339
    return-void

    .line 3331
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3336
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3560
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3562
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3564
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3565
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3566
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3572
    return-void

    .line 3569
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .locals 6
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # I
    .param p3, "unstable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3343
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3345
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3347
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3348
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3349
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3351
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3354
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3354
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5255
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5257
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5258
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5259
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5265
    return-void

    .line 5258
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5262
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/IIntentReceiver;
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "perm"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2592
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2594
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2595
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2596
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2597
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2598
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2599
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2600
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2601
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2602
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 2603
    const/4 v2, 0x0

    .line 2604
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2605
    .local v1, "haveIntent":I
    if-eqz v1, :cond_1

    .line 2606
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "intent":Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2610
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .end local v1    # "haveIntent":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    move-object v5, v4

    .line 2595
    goto :goto_0

    .line 2610
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5466
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5468
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5469
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5470
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5476
    return-void

    .line 5469
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5473
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4119
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4121
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4122
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4124
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4130
    return-void

    .line 4127
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3390
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3392
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3394
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3395
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3401
    return-void

    .line 3398
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3405
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3407
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3410
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3416
    return-void

    .line 3413
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeSubTask(II)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "subTaskIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5221
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5223
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5226
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5231
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5231
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public removeTask(II)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5238
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5240
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5243
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5248
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5248
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5588
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5590
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5592
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5593
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5598
    return-void

    .line 5595
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5543
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5545
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5547
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5548
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5554
    return-void

    .line 5551
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3261
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3263
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3265
    if-eqz p2, :cond_0

    .line 3266
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3267
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3271
    :goto_0
    const/4 v2, 0x0

    invoke-static {p3, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3272
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3278
    return-void

    .line 3269
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3275
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public requestBugReport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5494
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5496
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5497
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5503
    return-void

    .line 5500
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resizeStackBox(IF)V
    .locals 5
    .param p1, "stackBoxId"    # I
    .param p2, "weight"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3139
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3141
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3144
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3145
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3150
    return-void

    .line 3147
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public restart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5616
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5618
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5619
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5625
    return-void

    .line 5622
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resumeAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4592
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4594
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4595
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4601
    return-void

    .line 4598
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4086
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4088
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4089
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4090
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4091
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4092
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4093
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4098
    return-void

    .line 4095
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4883
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4885
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4887
    if-eqz p2, :cond_0

    .line 4888
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4889
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4893
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4894
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4900
    return-void

    .line 4891
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4897
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3594
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3596
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3599
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3600
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3601
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3607
    return-void

    .line 3604
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 5
    .param p1, "watcher"    # Landroid/app/IActivityController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4286
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4288
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4289
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IActivityController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4290
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4291
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4296
    return-void

    .line 4289
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 4293
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setAlwaysFinish(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4272
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4274
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4275
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4276
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4282
    return-void

    .line 4279
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setDebugApp(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "waitForDebugger"    # Z
    .param p3, "persistent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4256
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4258
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4260
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4261
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4262
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4268
    return-void

    :cond_0
    move v4, v3

    .line 4260
    goto :goto_0

    :cond_1
    move v2, v3

    .line 4261
    goto :goto_1

    .line 4265
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setFocusedStack(I)V
    .locals 5
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3211
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3213
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3215
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3221
    return-void

    .line 3218
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setFocusedStack(IZ)V
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3227
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3229
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3232
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3238
    return-void

    .line 3231
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3235
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4994
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4996
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4998
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5004
    return-void

    .line 5001
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4763
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4765
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4767
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4768
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    return-void

    .line 4771
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLockScreenShown(Z)V
    .locals 5
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4240
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4242
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4243
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4244
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4250
    return-void

    .line 4247
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5057
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5059
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5061
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5062
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5063
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5068
    return-void

    .line 5065
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5025
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5027
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5029
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5030
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5036
    return-void

    .line 5033
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setProcessForeground(Landroid/os/IBinder;IZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3998
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4000
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4002
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4003
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4004
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4005
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4010
    return-void

    .line 4007
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setProcessForeground(Landroid/os/IBinder;IZZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isForeground"    # Z
    .param p4, "isCalledByNotificationManagerService"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3981
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3983
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3985
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3986
    if-eqz p3, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3987
    if-eqz p4, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3989
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3994
    return-void

    :cond_0
    move v4, v3

    .line 3986
    goto :goto_0

    :cond_1
    move v2, v3

    .line 3987
    goto :goto_1

    .line 3991
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setProcessLimit(I)V
    .locals 5
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3952
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3954
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3956
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3962
    return-void

    .line 3959
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3772
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3774
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3777
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3778
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3781
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3783
    return-void

    .line 3780
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3781
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3497
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3499
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3500
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3502
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3503
    if-eqz p4, :cond_0

    .line 3504
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3509
    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3510
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3516
    return-void

    .line 3507
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3513
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v3

    .line 3509
    goto :goto_1
.end method

.method public setUserIsMonkey(Z)V
    .locals 5
    .param p1, "monkey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4701
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4703
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4704
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4705
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4711
    return-void

    .line 4708
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5363
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5365
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5366
    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5367
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5368
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5374
    return-void

    .line 5371
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .locals 5
    .param p1, "who"    # Landroid/app/IApplicationThread;
    .param p2, "waiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4155
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4157
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4158
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4159
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4160
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4166
    return-void

    .line 4163
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public shutdown(I)Z
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4546
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4548
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4550
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4555
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4555
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public signalPersistentProcesses(I)V
    .locals 5
    .param p1, "sig"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4428
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4430
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4432
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4433
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4438
    return-void

    .line 4435
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public softStartPersonas([I)Z
    .locals 5
    .param p1, "personaIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5123
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5124
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5126
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5129
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5131
    return v2
.end method

.method public startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4952
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4954
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4955
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4956
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4957
    const/4 v3, 0x0

    invoke-virtual {v0, p3, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4958
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4959
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4960
    if-eqz p6, :cond_1

    .line 4961
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4962
    const/4 v3, 0x0

    invoke-virtual {p6, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4966
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4967
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4968
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4972
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4955
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4964
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4972
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    .locals 25
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profileFile"    # Ljava/lang/String;
    .param p10, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p11, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2186
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v18

    .line 2187
    .local v18, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2190
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 2191
    .local v9, "cmp":Landroid/content/ComponentName;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2193
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v22

    .line 2194
    .local v22, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v22, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2195
    const/4 v14, 0x0

    .line 2196
    .local v14, "isActivityAllowed":Z
    const-string v1, ":android:show_fragment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2197
    .local v7, "activity":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 2198
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 2200
    :cond_0
    sget-object v8, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget-object v12, v8, v13

    .line 2201
    .local v12, "exception":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2202
    const/4 v14, 0x1

    .line 2206
    .end local v12    # "exception":Ljava/lang/String;
    :cond_1
    if-eqz v14, :cond_6

    .line 2207
    const/high16 v1, 0x800000

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2263
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "isActivityAllowed":Z
    .end local v16    # "len$":I
    .end local v22    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_2
    :goto_1
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2265
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v19

    .line 2266
    .local v19, "pwdPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Landroid/sec/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v1

    if-lez v1, :cond_d

    .line 2267
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v17

    .line 2268
    .local v17, "list":Ljava/util/List;
    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2269
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    .line 2270
    .local v23, "topActivity":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2271
    .restart local v14    # "isActivityAllowed":Z
    const/4 v15, 0x0

    .line 2272
    .local v15, "isTopActivityException":Z
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 2273
    .restart local v7    # "activity":Ljava/lang/String;
    sget-object v8, Landroid/sec/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget-object v12, v8, v13

    .line 2274
    .restart local v12    # "exception":Ljava/lang/String;
    if-eqz v23, :cond_3

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2275
    const/4 v15, 0x1

    .line 2277
    :cond_3
    if-eqz v7, :cond_c

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2278
    const/4 v14, 0x1

    .line 2282
    .end local v12    # "exception":Ljava/lang/String;
    :cond_4
    if-eqz v15, :cond_d

    if-nez v14, :cond_d

    .line 2283
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2285
    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start activity "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " failed. Blocked due to password change enforcement."

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2289
    const/16 v21, 0x0

    .line 2343
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "isActivityAllowed":Z
    .end local v15    # "isTopActivityException":Z
    .end local v16    # "len$":I
    .end local v17    # "list":Ljava/util/List;
    .end local v19    # "pwdPolicy":Landroid/sec/enterprise/PasswordPolicy;
    .end local v23    # "topActivity":Ljava/lang/String;
    :goto_3
    return v21

    .line 2200
    .restart local v7    # "activity":Ljava/lang/String;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v12    # "exception":Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v14    # "isActivityAllowed":Z
    .restart local v16    # "len$":I
    .restart local v22    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2209
    .end local v12    # "exception":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    :try_start_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    .line 2210
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2212
    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start activity "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " failed. Blocked due to settings changes not allowed."

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2216
    const/16 v21, 0x0

    goto :goto_3

    .line 2219
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "isActivityAllowed":Z
    .end local v16    # "len$":I
    .end local v22    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :catch_0
    move-exception v11

    .line 2220
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2223
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/sec/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Landroid/sec/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2227
    :cond_8
    :try_start_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2228
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2230
    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start activity "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " failed. Task manager is not allowed."

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2234
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2236
    :catch_1
    move-exception v11

    .line 2237
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Is edm running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2242
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_9
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2244
    :try_start_4
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v22

    .line 2245
    .restart local v22    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v22, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2246
    :cond_a
    const-string v1, ":android:show_fragment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2247
    .restart local v7    # "activity":Ljava/lang/String;
    if-nez v7, :cond_b

    .line 2248
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 2250
    :cond_b
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2252
    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start activity "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " failed. Blocked due to S Voice not allowed."

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2256
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2258
    .end local v7    # "activity":Ljava/lang/String;
    .end local v22    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :catch_2
    move-exception v11

    .line 2259
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2273
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v7    # "activity":Ljava/lang/String;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v12    # "exception":Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v14    # "isActivityAllowed":Z
    .restart local v15    # "isTopActivityException":Z
    .restart local v16    # "len$":I
    .restart local v17    # "list":Ljava/util/List;
    .restart local v19    # "pwdPolicy":Landroid/sec/enterprise/PasswordPolicy;
    .restart local v23    # "topActivity":Ljava/lang/String;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 2293
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v12    # "exception":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "isActivityAllowed":Z
    .end local v15    # "isTopActivityException":Z
    .end local v16    # "len$":I
    .end local v17    # "list":Ljava/util/List;
    .end local v19    # "pwdPolicy":Landroid/sec/enterprise/PasswordPolicy;
    .end local v23    # "topActivity":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 2294
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2299
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_d
    :try_start_5
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2301
    const-string v1, "ActivityManagerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2303
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2305
    :catch_4
    move-exception v11

    .line 2306
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2309
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 2313
    .local v10, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v20

    .line 2315
    .local v20, "reply":Landroid/os/Parcel;
    :try_start_6
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2316
    if-eqz p1, :cond_f

    invoke-interface/range {p1 .. p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_4
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2317
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2318
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2319
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2320
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2321
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2322
    move/from16 v0, p7

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    move/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2324
    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2325
    if-eqz p10, :cond_10

    .line 2326
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    const/4 v1, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v10, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2331
    :goto_5
    if-eqz p11, :cond_11

    .line 2332
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    const/4 v1, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2337
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v1, v2, v10, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2338
    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->readException()V

    .line 2339
    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->readInt()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v21

    .line 2342
    .local v21, "result":I
    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    .line 2343
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_3

    .line 2316
    .end local v21    # "result":I
    :cond_f
    const/4 v1, 0x0

    goto :goto_4

    .line 2329
    :cond_10
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 2342
    :catchall_0
    move-exception v1

    invoke-virtual/range {v20 .. v20}, Landroid/os/Parcel;->recycle()V

    .line 2343
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 2335
    :cond_11
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6
.end method

.method public startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profileFile"    # Ljava/lang/String;
    .param p10, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2391
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2393
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2395
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2396
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2397
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2398
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2399
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2400
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2401
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2402
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2403
    if-eqz p10, :cond_1

    .line 2404
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2405
    const/4 v4, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2409
    :goto_1
    if-eqz p11, :cond_2

    .line 2410
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2411
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2415
    :goto_2
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x69

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2417
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2418
    sget-object v4, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager$WaitResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    .local v3, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .line 2394
    .end local v3    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2407
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2421
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 2413
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profileFile"    # Ljava/lang/String;
    .param p10, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2352
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2354
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2355
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2356
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2357
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2358
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2360
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2362
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2364
    if-eqz p10, :cond_1

    .line 2365
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    const/4 v4, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2370
    :goto_1
    if-eqz p11, :cond_2

    .line 2371
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2372
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2376
    :goto_2
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2377
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x99

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2378
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2379
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2382
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    .line 2355
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2368
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2382
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 2374
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "flagsMask"    # I
    .param p9, "flagsValues"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2463
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2465
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2466
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2467
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2468
    if-eqz p3, :cond_1

    .line 2469
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2470
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2474
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2476
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2478
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2480
    if-eqz p10, :cond_2

    .line 2481
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2482
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2486
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2487
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2488
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2491
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    .line 2466
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2472
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2491
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 2484
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "config"    # Landroid/content/res/Configuration;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2430
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2432
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2433
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2434
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2435
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2436
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2438
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2440
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2442
    if-eqz p10, :cond_1

    .line 2443
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2448
    :goto_1
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2450
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2451
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2454
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    .line 2433
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2446
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2454
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "connection"    # Landroid/app/IUiAutomationConnection;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3688
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3690
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3691
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3692
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3693
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3694
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3695
    if-eqz p5, :cond_2

    invoke-interface {p5}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3696
    if-eqz p6, :cond_0

    invoke-interface {p6}, Landroid/app/IUiAutomationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3697
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3698
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3703
    .local v2, "res":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "res":Z
    :cond_2
    move-object v4, v3

    .line 3695
    goto :goto_0

    .line 3703
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2498
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2500
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2502
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2503
    if-eqz p3, :cond_0

    .line 2504
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2505
    const/4 v5, 0x0

    invoke-virtual {p3, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2509
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x43

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2511
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2512
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 2514
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    .line 2507
    .end local v2    # "result":I
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2514
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .restart local v2    # "result":I
    :cond_1
    move v3, v4

    .line 2512
    goto :goto_1
.end method

.method public startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "indata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4351
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4353
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4356
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4357
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4358
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4364
    return-void

    .line 4361
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3440
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3442
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3443
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3444
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3445
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3446
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3447
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3449
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3452
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3443
    .end local v2    # "res":Landroid/content/ComponentName;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3452
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4579
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4581
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4582
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4583
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4588
    return-void

    .line 4585
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3460
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3462
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3463
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3464
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3465
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3466
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3467
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3469
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3472
    .local v2, "res":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3463
    .end local v2    # "res":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3472
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3479
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3481
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3482
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3483
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3484
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3485
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3490
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3490
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public stopUser(ILandroid/app/IStopUserCallback;)I
    .locals 6
    .param p1, "userid"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5088
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5090
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5092
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5093
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5095
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5098
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5098
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public switchPersona(I)Z
    .locals 6
    .param p1, "personaid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5139
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5141
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5143
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5148
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5148
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5106
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5108
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5110
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5111
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5116
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5116
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public switchPersonaConditional(IZZ)Z
    .locals 7
    .param p1, "personaid"    # I
    .param p2, "rollUp"    # Z
    .param p3, "rollBack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5155
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5157
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5159
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5160
    if-eqz p3, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5161
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xfa3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5163
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 5166
    .local v2, "result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .end local v2    # "result":Z
    :cond_0
    move v4, v3

    .line 5159
    goto :goto_0

    :cond_1
    move v4, v3

    .line 5160
    goto :goto_1

    :cond_2
    move v2, v3

    .line 5163
    goto :goto_2

    .line 5166
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public switchStackBox(I)V
    .locals 5
    .param p1, "stackBoxId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3157
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3159
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3161
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3167
    return-void

    .line 3164
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public switchUser(I)Z
    .locals 6
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5072
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5074
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5076
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5081
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5081
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4103
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4105
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4106
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4108
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    return-void

    .line 4111
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5392
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5394
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5397
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5399
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5402
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5402
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public testIsSystemReady()Z
    .locals 1

    .prologue
    .line 4368
    const/4 v0, 0x1

    return v0
.end method

.method public unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3672
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3674
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3675
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3676
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3682
    return-void

    .line 3679
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3577
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3579
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3581
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3582
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3583
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3589
    return-void

    .line 3586
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 6
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3543
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3545
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3546
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3547
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3552
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3552
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2663
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2665
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2666
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2667
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2668
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2670
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2675
    return-void

    .line 2666
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2672
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unhandledBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4183
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4185
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4186
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4192
    return-void

    .line 4189
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5269
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5271
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5272
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5273
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5279
    return-void

    .line 5272
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5276
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2617
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2619
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2620
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2621
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    return-void

    .line 2624
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5480
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5482
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5483
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5484
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5490
    return-void

    .line 5483
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5487
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3361
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3363
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3365
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3371
    return-void

    .line 3368
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3742
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3744
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3745
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3746
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3752
    return-void

    .line 3749
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5333
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5335
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5336
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5337
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5343
    return-void

    .line 5340
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wakingUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4227
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4229
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4230
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4236
    return-void

    .line 4233
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2574
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2576
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2578
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2583
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2583
    .end local v2    # "res":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
