.class public final Landroid/bluetooth/BluetoothPan;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_LOCAL_ROLE:Ljava/lang/String; = "android.bluetooth.pan.extra.LOCAL_ROLE"

.field public static final LOCAL_NAP_ROLE:I = 0x1

.field public static final LOCAL_PANU_ROLE:I = 0x2

.field public static final PAN_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x3e9

.field public static final PAN_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x3ea

.field public static final PAN_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x3e8

.field public static final PAN_OPERATION_GENERIC_FAILURE:I = 0x3eb

.field public static final PAN_OPERATION_SUCCESS:I = 0x3ec

.field public static final PAN_ROLE_NONE:I = 0x0

.field public static final REMOTE_NAP_ROLE:I = 0x1

.field public static final REMOTE_PANU_ROLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothPan"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mPanService:Landroid/bluetooth/IBluetoothPan;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v2, Landroid/bluetooth/BluetoothPan$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPan$1;-><init>(Landroid/bluetooth/BluetoothPan;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothPan;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v2, Landroid/bluetooth/BluetoothPan$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPan$2;-><init>(Landroid/bluetooth/BluetoothPan;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 388
    new-instance v2, Landroid/bluetooth/BluetoothPan$3;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPan$3;-><init>(Landroid/bluetooth/BluetoothPan;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    .line 153
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 157
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->doBind()Z

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void

    .line 158
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    const-string v3, "Unable to register BluetoothStateChangeCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothPan;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothPan;)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/IBluetoothPan;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    return-object v0
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPan;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothPan;

    .prologue
    .line 47
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    return-object p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 413
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v0, "BluetoothPan"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method


# virtual methods
.method close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 184
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 193
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 195
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    .line 196
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    iput-object v5, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 203
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    const-string v3, "Unable to unregister BluetoothStateChangeCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 198
    .local v1, "re":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "BluetoothPan"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 201
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPan;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v2, :cond_0

    const-string v2, "BluetoothPan"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPan;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v2, :cond_0

    const-string v2, "BluetoothPan"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothPan;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 172
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    :cond_0
    const-string v3, "BluetoothPan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Pan Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->close()V

    .line 207
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPan;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 327
    :goto_0
    return-object v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v1, :cond_1

    const-string v1, "BluetoothPan"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPan;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 362
    :cond_0
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v2, :cond_0

    const-string v2, "BluetoothPan"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 344
    :goto_0
    return-object v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v1, :cond_1

    const-string v1, "BluetoothPan"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isTetheringOn()Z
    .locals 4

    .prologue
    .line 376
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_0

    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPan;->isTetheringOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 385
    :goto_0
    return v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 383
    :cond_0
    const-string v1, "BluetoothPan"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 368
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
