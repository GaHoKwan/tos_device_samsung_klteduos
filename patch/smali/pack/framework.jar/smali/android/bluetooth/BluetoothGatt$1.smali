.class Landroid/bluetooth/BluetoothGatt$1;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 15
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "value"    # [B

    .prologue
    .line 313
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicRead() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v2, 0x5

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$800(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 323
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x1

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 324
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$600(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;)I

    move-result v3

    const/4 v10, 0x2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v12

    .line 329
    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 335
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    move/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v14

    .line 337
    .local v14, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v14, :cond_0

    .line 339
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v14, v2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v11

    .line 341
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v11, :cond_0

    .line 343
    if-nez p2, :cond_4

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 346
    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v11, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 347
    :catch_1
    move-exception v13

    .line 348
    .local v13, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGatt"

    const-string v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 360
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicWrite() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    move/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v16

    .line 368
    .local v16, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v16, :cond_0

    .line 370
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v13

    .line 372
    .local v13, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v13, :cond_0

    .line 374
    const/4 v2, 0x5

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$800(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 378
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x1

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$600(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;)I

    move-result v3

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v12

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v14

    .line 385
    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 392
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v13, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 393
    :catch_1
    move-exception v15

    .line 394
    .local v15, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGatt"

    const-string v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 164
    const-string v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClientConnectionState() - status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " clientIf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    :goto_0
    return-void

    .line 169
    :cond_0
    if-eqz p3, :cond_1

    .line 172
    .local v1, "profileState":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v3, p1, v1}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 178
    if-eqz p3, :cond_2

    .line 179
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x2

    # setter for: Landroid/bluetooth/BluetoothGatt;->mConnState:I
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->access$102(Landroid/bluetooth/BluetoothGatt;I)I

    .line 183
    :goto_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v1    # "profileState":I
    :cond_1
    move v1, v2

    .line 169
    goto :goto_1

    .line 173
    .restart local v1    # "profileState":I
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGatt"

    const-string v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 181
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v4, 0x0

    # setter for: Landroid/bluetooth/BluetoothGatt;->mConnState:I
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothGatt;->access$102(Landroid/bluetooth/BluetoothGatt;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public onClientRegistered(II)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    const-string v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClientRegistered() - status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " clientIf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 133
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mConnState:I
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->access$100(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 134
    const-string v4, "BluetoothGatt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad connection state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mConnState:I
    invoke-static {v6}, Landroid/bluetooth/BluetoothGatt;->access$100(Landroid/bluetooth/BluetoothGatt;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 139
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # setter for: Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    invoke-static {v4, p2}, Landroid/bluetooth/BluetoothGatt;->access$202(Landroid/bluetooth/BluetoothGatt;I)I

    .line 140
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 141
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    if-eqz p1, :cond_1

    .line 143
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/16 v4, 0x101

    invoke-virtual {v1, v3, v4, v2}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 145
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 146
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothGatt;->mConnState:I
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->access$102(Landroid/bluetooth/BluetoothGatt;I)I

    .line 147
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 156
    :goto_0
    return-void

    .line 136
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 141
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 147
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 151
    :cond_1
    :try_start_6
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$600(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z
    invoke-static {v6}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    invoke-interface {v3, v4, v5, v1}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    move v1, v2

    .line 151
    goto :goto_1
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 18
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B

    .prologue
    .line 438
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDescriptorRead() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    move/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v17

    .line 445
    .local v17, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v17, :cond_0

    .line 447
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v13

    .line 449
    .local v13, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v13, :cond_0

    .line 451
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v13, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v14

    .line 453
    .local v14, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v14, :cond_0

    .line 455
    if-nez p2, :cond_2

    move-object/from16 v0, p10

    invoke-virtual {v14, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 457
    :cond_2
    const/4 v2, 0x5

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    const/16 v2, 0xf

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$800(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 461
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x1

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$600(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;)I

    move-result v3

    const/4 v12, 0x2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 470
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x1

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 473
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v14, v0}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 474
    :catch_0
    move-exception v16

    .line 475
    .local v16, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGatt"

    const-string v3, "Unhandled exception in callback"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 465
    .end local v16    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v15

    .line 466
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 487
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDescriptorWrite() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    move/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v19

    .line 494
    .local v19, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v19, :cond_0

    .line 496
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v15

    .line 498
    .local v15, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v15, :cond_0

    .line 500
    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v15, v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v16

    .line 502
    .local v16, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v16, :cond_0

    .line 504
    const/4 v2, 0x5

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$800(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 508
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x1

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$600(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;)I

    move-result v3

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v14

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 518
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothGatt;->access$802(Landroid/bluetooth/BluetoothGatt;Z)Z

    .line 521
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 522
    :catch_0
    move-exception v18

    .line 523
    .local v18, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothGatt"

    const-string v3, "Unhandled exception in callback"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 513
    .end local v18    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 514
    .local v17, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 532
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExecuteWrite() - Device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 538
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charProps"    # I

    .prologue
    .line 245
    const-string v0, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetCharacteristic() - Device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 253
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_0

    .line 254
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v5, 0x0

    move v3, p5

    move v4, p7

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "descrInstId"    # I
    .param p8, "descUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 269
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetDescriptor() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 276
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 280
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    .line 282
    new-instance v2, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, p7, v4}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "inclSrvcType"    # I
    .param p6, "inclSrvcInstId"    # I
    .param p7, "inclSrvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 219
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetIncludedService() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Included="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 227
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p6, p5}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 230
    .local v0, "includedService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_0
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 202
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetService() - Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$700(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothGattService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3, p3, p2}, Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onListen(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 566
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListen() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void
.end method

.method public onMonitorRssi(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I

    .prologue
    .line 574
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMonitorRssi() - Device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 580
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothGattCallback;->onMonitorRssi(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "value"    # [B

    .prologue
    .line 407
    const-string v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotify() - Device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 414
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {p6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3, p5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 418
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 423
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v4, v0}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "BluetoothGatt"

    const-string v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 549
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReadRemoteRssi() - Device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 555
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 192
    return-void
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 294
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearchComplete() = Device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    # getter for: Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BluetoothGatt"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
