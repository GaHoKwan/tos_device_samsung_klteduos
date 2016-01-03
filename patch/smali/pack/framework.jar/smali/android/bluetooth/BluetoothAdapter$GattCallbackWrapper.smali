.class Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GattCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_REG_TIMEOUT:I = 0x7d0

.field private static final LE_CALLBACK_REG_WAIT_COUNT:I = 0x5


# instance fields
.field private mBluetoothAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsBgScan:Z

.field private mLeHandle:I

.field private final mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mScanFilter:[Ljava/util/UUID;

.field private mScanInterval:I

.field private mScanWindow:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;IIZZ)V
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "leScanCb"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .param p3, "uuid"    # [Ljava/util/UUID;
    .param p4, "scan_interval"    # I
    .param p5, "scan_window"    # I
    .param p6, "isActive"    # Z
    .param p7, "isBgScan"    # Z

    .prologue
    .line 1959
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 1960
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 1961
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1962
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    .line 1963
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1964
    iput p4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanInterval:I

    .line 1965
    iput p5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanWindow:I

    .line 1966
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsActive:Z

    .line 1967
    iput-boolean p7, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsBgScan:Z

    .line 1968
    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "value"    # [B

    .prologue
    .line 2153
    return-void
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 2159
    return-void
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 2094
    return-void
.end method

.method public onClientRegistered(II)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    const/4 v9, -0x1

    .line 2024
    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClientRegistered() - status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    monitor-enter p0

    .line 2027
    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-ne v1, v9, :cond_0

    .line 2028
    const-string v1, "BluetoothAdapter"

    const-string v3, "onClientRegistered LE scan canceled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_0
    if-nez p1, :cond_9

    .line 2032
    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    const/4 v0, 0x0

    .line 2035
    .local v0, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothAdapter;

    .line 2036
    .local v6, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v6, :cond_8

    .line 2037
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 2038
    if-nez v0, :cond_1

    .line 2039
    const-string v1, "BluetoothAdapter"

    const-string v3, "onClientRegistered: iGatt is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2040
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2089
    .end local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return-void

    .line 2042
    .restart local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_3
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsBgScan:Z

    if-nez v1, :cond_5

    .line 2043
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    if-nez v1, :cond_3

    .line 2044
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2072
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_1
    :try_start_4
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v1, v9, :cond_2

    .line 2074
    if-eqz v0, :cond_2

    .line 2076
    :try_start_5
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2087
    .end local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2088
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 2046
    .restart local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    :try_start_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    array-length v1, v1

    new-array v2, v1, [Landroid/os/ParcelUuid;

    .line 2047
    .local v2, "uuids":[Landroid/os/ParcelUuid;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v1, v2

    if-eq v8, v1, :cond_4

    .line 2048
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v3, v3, v8

    invoke-direct {v1, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v1, v2, v8

    .line 2047
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2050
    :cond_4
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/bluetooth/IBluetoothGatt;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 2068
    .end local v2    # "uuids":[Landroid/os/ParcelUuid;
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 2069
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to start le scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 2053
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_5
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    if-nez v1, :cond_6

    .line 2054
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanInterval:I

    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanWindow:I

    iget-boolean v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsActive:Z

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startBgScan(IIIZ)V

    goto :goto_1

    .line 2056
    :cond_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    array-length v1, v1

    new-array v2, v1, [Landroid/os/ParcelUuid;

    .line 2057
    .restart local v2    # "uuids":[Landroid/os/ParcelUuid;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    array-length v1, v2

    if-eq v8, v1, :cond_7

    .line 2058
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v3, v3, v8

    invoke-direct {v1, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v1, v2, v8

    .line 2057
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2060
    :cond_7
    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanInterval:I

    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanWindow:I

    iget-boolean v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsActive:Z

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->startBgScanWithUuids(I[Landroid/os/ParcelUuid;IIZ)V

    goto :goto_1

    .line 2065
    .end local v2    # "uuids":[Landroid/os/ParcelUuid;
    .end local v8    # "i":I
    :cond_8
    const-string v1, "BluetoothAdapter"

    const-string v3, "onClientRegistered, BluetoothAdapter null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 2077
    .end local v6    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_1
    move-exception v7

    .line 2078
    .restart local v7    # "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to unregister callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2085
    .end local v0    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B

    .prologue
    .line 2173
    return-void
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 2180
    return-void
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 2184
    return-void
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charProps"    # I

    .prologue
    .line 2136
    return-void
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "descInstId"    # I
    .param p8, "descUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 2143
    return-void
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "inclSrvcType"    # I
    .param p6, "inclSrvcInstId"    # I
    .param p7, "inclSrvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 2129
    return-void
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 2122
    return-void
.end method

.method public onListen(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 2192
    return-void
.end method

.method public onMonitorRssi(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I

    .prologue
    .line 2196
    return-void
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "value"    # [B

    .prologue
    .line 2166
    return-void
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 2188
    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 2101
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanResult() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RSSI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    monitor-enter p0

    .line 2105
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v2, :cond_0

    monitor-exit p0

    .line 2117
    :goto_0
    return-void

    .line 2106
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 2109
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    .line 2110
    const-string v2, "BluetoothAdapter"

    const-string v3, "onScanResult, BluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2114
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 2115
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2106
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2113
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 2147
    return-void
.end method

.method public scanStarted()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1971
    const/4 v2, 0x0

    .line 1972
    .local v2, "started":Z
    monitor-enter p0

    .line 1973
    :try_start_0
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    monitor-exit p0

    .line 1987
    :goto_0
    return v3

    .line 1975
    :cond_0
    const/4 v0, 0x0

    .line 1977
    .local v0, "count":I
    :goto_1
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 1979
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1980
    :catch_0
    move-exception v1

    .line 1981
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "BluetoothAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback reg wait interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1986
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1985
    .restart local v0    # "count":I
    :cond_1
    :try_start_3
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-lez v4, :cond_2

    const/4 v2, 0x1

    .line 1986
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    .line 1987
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1985
    goto :goto_3
.end method

.method public stopLeScan()V
    .locals 6

    .prologue
    .line 1991
    monitor-enter p0

    .line 1992
    :try_start_0
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_0

    .line 1993
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state, mLeHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    monitor-exit p0

    .line 2018
    :goto_0
    return-void

    .line 1996
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_3

    .line 1999
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 2000
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v2, :cond_1

    .line 2001
    const-string v3, "BluetoothAdapter"

    const-string v4, "stopLeScan: iGatt is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2002
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2017
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2004
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_1
    :try_start_3
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mIsBgScan:Z

    if-nez v3, :cond_2

    .line 2005
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    .line 2008
    :goto_1
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2015
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_2
    const/4 v3, -0x1

    :try_start_4
    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 2016
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2017
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2007
    .restart local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_2
    :try_start_5
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->stopBgScan(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2009
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v1

    .line 2010
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop scan and unregister"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2013
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v3, "BluetoothAdapter"

    const-string v4, "stopLeScan, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method
