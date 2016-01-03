.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2149
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 88
    if-nez p0, :cond_1

    .line 89
    const/4 v0, 0x0

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 93
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 115
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;

    .prologue
    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2146
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 219
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    sparse-switch p1, :sswitch_data_0

    .line 2141
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 153
    :sswitch_0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 155
    .local v120, "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 156
    .local v6, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 158
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 160
    .local v10, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 162
    .local v12, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 163
    .local v13, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 166
    .local v15, "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    .line 168
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v191

    .line 171
    .local v191, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v5, 0x1

    goto :goto_0

    .line 164
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v191    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 166
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 178
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 180
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 181
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 183
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 184
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 185
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 186
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 187
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 188
    .restart local v13    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 189
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object v15, v5

    .line 191
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 193
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v5, p0

    .line 194
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v191

    .line 197
    .restart local v191    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 189
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v191    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 191
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 204
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 206
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 207
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 208
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 209
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 210
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 211
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 212
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 213
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 214
    .restart local v13    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 215
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object v15, v5

    .line 217
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 219
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v5, p0

    .line 220
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v191

    .line 223
    .local v191, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v5, 0x0

    move-object/from16 v0, v191

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 215
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v191    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 217
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 230
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 232
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 233
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 235
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 236
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 237
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 238
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 239
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 240
    .restart local v13    # "startFlags":I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 241
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 243
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 244
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v191

    .line 246
    .local v191, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 241
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v191    # "result":I
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 253
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 255
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 256
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    .line 257
    .local v8, "intent":Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 258
    .local v31, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 259
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "fillInIntent":Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 261
    .restart local v31    # "fillInIntent":Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 262
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 263
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 264
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 265
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 266
    .local v36, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 267
    .local v37, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_8
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v38, v16

    .line 269
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v191

    .line 272
    .restart local v191    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 267
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v191    # "result":I
    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 279
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/IntentSender;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v31    # "fillInIntent":Landroid/content/Intent;
    .end local v36    # "flagsMask":I
    .end local v37    # "flagsValues":I
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v125

    .line 281
    .local v125, "callingActivity":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 282
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 284
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v191

    .line 285
    .local v191, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v191, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 282
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v191    # "result":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 286
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v191    # "result":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 291
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v125    # "callingActivity":Landroid/os/IBinder;
    .end local v191    # "result":Z
    :sswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 293
    .local v52, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 294
    .local v44, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 295
    .local v43, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 296
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "resultData":Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 298
    .restart local v44    # "resultData":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v189

    .line 299
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v189, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 300
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 305
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "res":Z
    :sswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 307
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 308
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 309
    .restart local v12    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v11, v12}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 315
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 317
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v189

    .line 318
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v189, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 319
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 324
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "res":Z
    :sswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 326
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v189

    .line 327
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v189, :cond_e

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 328
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 334
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "res":Z
    :sswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 336
    .restart local v120    # "b":Landroid/os/IBinder;
    if-eqz v120, :cond_f

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 338
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 339
    .local v20, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 340
    if-eqz v120, :cond_10

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 342
    .local v21, "rec":Landroid/content/IIntentReceiver;
    :goto_f
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 343
    .local v22, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 344
    .local v23, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move/from16 v24, v17

    .line 345
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 346
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v8, :cond_11

    .line 348
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 353
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 336
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 340
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_10
    const/16 v21, 0x0

    goto :goto_f

    .line 351
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    .restart local v22    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "perm":Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 358
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 360
    .restart local v120    # "b":Landroid/os/IBinder;
    if-nez v120, :cond_12

    .line 361
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 363
    :cond_12
    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 364
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 371
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 373
    .restart local v120    # "b":Landroid/os/IBinder;
    if-eqz v120, :cond_13

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 375
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 376
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 377
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 378
    if-eqz v120, :cond_14

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v10

    .line 380
    .local v10, "resultTo":Landroid/content/IIntentReceiver;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 381
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 382
    .local v44, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 383
    .local v45, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 384
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 385
    .local v47, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v48, 0x1

    .line 386
    .local v48, "serialized":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v49, 0x1

    .line 387
    .local v49, "sticky":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v38, p0

    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v23

    move/from16 v50, v17

    .line 388
    invoke-virtual/range {v38 .. v50}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v189

    .line 391
    .local v189, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 373
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v17    # "userId":I
    .end local v23    # "perm":Ljava/lang/String;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    .end local v47    # "appOp":I
    .end local v48    # "serialized":Z
    .end local v49    # "sticky":Z
    .end local v189    # "res":I
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 378
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    goto :goto_12

    .line 385
    .restart local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v23    # "perm":Ljava/lang/String;
    .restart local v43    # "resultCode":I
    .restart local v44    # "resultData":Ljava/lang/String;
    .restart local v45    # "resultExtras":Landroid/os/Bundle;
    .restart local v47    # "appOp":I
    :cond_15
    const/16 v48, 0x0

    goto :goto_13

    .line 386
    .restart local v48    # "serialized":Z
    :cond_16
    const/16 v49, 0x0

    goto :goto_14

    .line 398
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    .end local v47    # "appOp":I
    .end local v48    # "serialized":Z
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 400
    .restart local v120    # "b":Landroid/os/IBinder;
    if-eqz v120, :cond_17

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 401
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_15
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 402
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 403
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 400
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_17
    const/4 v6, 0x0

    goto :goto_15

    .line 409
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 411
    .local v42, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 412
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 413
    .restart local v44    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 414
    .restart local v45    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v46, 0x1

    .line 415
    .local v46, "resultAbort":Z
    :goto_16
    if-eqz v42, :cond_18

    move-object/from16 v41, p0

    .line 416
    invoke-virtual/range {v41 .. v46}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 418
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 414
    .end local v46    # "resultAbort":Z
    :cond_19
    const/16 v46, 0x0

    goto :goto_16

    .line 423
    .end local v42    # "who":Landroid/os/IBinder;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    :sswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 426
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    if-eqz v6, :cond_1a

    .line 427
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 429
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 434
    .end local v6    # "app":Landroid/app/IApplicationThread;
    :sswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 436
    .restart local v52    # "token":Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 437
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 438
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 440
    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v199, 0x1

    .line 441
    .local v199, "stopProfiling":Z
    :goto_17
    if-eqz v52, :cond_1c

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v27

    move/from16 v3, v199

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 444
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 440
    .end local v199    # "stopProfiling":Z
    :cond_1d
    const/16 v199, 0x0

    goto :goto_17

    .line 449
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 451
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 457
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 459
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 465
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 467
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v157

    .line 468
    .local v157, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v207, v5

    .line 470
    .local v207, "thumbnail":Landroid/graphics/Bitmap;
    :goto_18
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Ljava/lang/CharSequence;

    .line 471
    .local v132, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v157

    move-object/from16 v3, v207

    move-object/from16 v4, v132

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 468
    .end local v132    # "description":Ljava/lang/CharSequence;
    .end local v207    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1e
    const/16 v207, 0x0

    goto :goto_18

    .line 477
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v157    # "map":Landroid/os/Bundle;
    :sswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 479
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 485
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 487
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 493
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 495
    .restart local v52    # "token":Landroid/os/IBinder;
    if-eqz v52, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v189

    .line 496
    .local v189, "res":Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    move-object/from16 v0, p3

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 495
    .end local v189    # "res":Ljava/lang/String;
    :cond_1f
    const/16 v189, 0x0

    goto :goto_19

    .line 502
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 504
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 505
    .local v128, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 507
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 511
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v128    # "cn":Landroid/content/ComponentName;
    :sswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 513
    .local v159, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 514
    .local v62, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v184

    .line 515
    .local v184, "receiverBinder":Landroid/os/IBinder;
    if-eqz v184, :cond_20

    invoke-static/range {v184 .. v184}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v183

    .line 518
    .local v183, "receiver":Landroid/app/IThumbnailReceiver;
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v159

    move/from16 v2, v62

    move-object/from16 v3, v183

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v154

    .line 519
    .local v154, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v154, :cond_21

    invoke-interface/range {v154 .. v154}, Ljava/util/List;->size()I

    move-result v111

    .line 521
    .local v111, "N":I
    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    const/16 v139, 0x0

    .local v139, "i":I
    :goto_1c
    move/from16 v0, v139

    move/from16 v1, v111

    if-ge v0, v1, :cond_22

    .line 524
    move-object/from16 v0, v154

    move/from16 v1, v139

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 525
    .local v143, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 523
    add-int/lit8 v139, v139, 0x1

    goto :goto_1c

    .line 515
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v143    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v154    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v183    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_20
    const/16 v183, 0x0

    goto :goto_1a

    .line 520
    .restart local v154    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v183    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_21
    const/16 v111, -0x1

    goto :goto_1b

    .line 527
    .restart local v111    # "N":I
    .restart local v139    # "i":I
    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 531
    .end local v62    # "fl":I
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v154    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v159    # "maxNum":I
    .end local v183    # "receiver":Landroid/app/IThumbnailReceiver;
    .end local v184    # "receiverBinder":Landroid/os/IBinder;
    :sswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 533
    .restart local v159    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 534
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 535
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v159

    move/from16 v2, v62

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v151

    .line 537
    .local v151, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    move-object/from16 v0, p3

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 539
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 543
    .end local v17    # "userId":I
    .end local v62    # "fl":I
    .end local v151    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v159    # "maxNum":I
    :sswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 545
    .local v53, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v123

    .line 546
    .local v123, "bm":Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v123, :cond_23

    .line 548
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 553
    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 551
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 557
    .end local v53    # "id":I
    .end local v123    # "bm":Landroid/app/ActivityManager$TaskThumbnails;
    :sswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 559
    .restart local v53    # "id":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v123

    .line 560
    .local v123, "bm":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v123, :cond_24

    .line 562
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 567
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 565
    :cond_24
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 571
    .end local v53    # "id":I
    .end local v123    # "bm":Landroid/graphics/Bitmap;
    :sswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 573
    .restart local v53    # "id":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskTopIsSecretMode(I)Z

    move-result v191

    .line 574
    .restart local v191    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v191, :cond_25

    const/4 v5, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 575
    :cond_25
    const/4 v5, 0x0

    goto :goto_1f

    .line 580
    .end local v53    # "id":I
    .end local v191    # "result":Z
    :sswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 582
    .restart local v159    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 583
    .restart local v62    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v159

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v153

    .line 584
    .local v153, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v153, :cond_26

    invoke-interface/range {v153 .. v153}, Ljava/util/List;->size()I

    move-result v111

    .line 586
    .restart local v111    # "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/16 v139, 0x0

    .restart local v139    # "i":I
    :goto_21
    move/from16 v0, v139

    move/from16 v1, v111

    if-ge v0, v1, :cond_27

    .line 589
    move-object/from16 v0, v153

    move/from16 v1, v139

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 590
    .local v143, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 588
    add-int/lit8 v139, v139, 0x1

    goto :goto_21

    .line 585
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v143    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_26
    const/16 v111, -0x1

    goto :goto_20

    .line 592
    .restart local v111    # "N":I
    .restart local v139    # "i":I
    :cond_27
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 596
    .end local v62    # "fl":I
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v153    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v159    # "maxNum":I
    :sswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v150

    .line 598
    .local v150, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v0, p3

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 600
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 604
    .end local v150    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v152

    .line 606
    .local v152, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 608
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 612
    .end local v152    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v156

    .line 614
    .local v156, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    move-object/from16 v0, p3

    move-object/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 616
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 620
    .end local v156    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v205

    .line 622
    .local v205, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 623
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 625
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v205

    move/from16 v2, v62

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 623
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_28
    const/16 v16, 0x0

    goto :goto_22

    .line 631
    .end local v62    # "fl":I
    .end local v205    # "task":I
    :sswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v205

    .line 633
    .restart local v205    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 639
    .end local v205    # "task":I
    :sswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 641
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v165, 0x1

    .line 642
    .local v165, "nonRoot":Z
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v165

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v189

    .line 643
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v189, :cond_2a

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 641
    .end local v165    # "nonRoot":Z
    .end local v189    # "res":Z
    :cond_29
    const/16 v165, 0x0

    goto :goto_23

    .line 644
    .restart local v165    # "nonRoot":Z
    .restart local v189    # "res":Z
    :cond_2a
    const/4 v5, 0x0

    goto :goto_24

    .line 649
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v165    # "nonRoot":Z
    .end local v189    # "res":Z
    :sswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v205

    .line 651
    .restart local v205    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 657
    .end local v205    # "task":I
    :sswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 659
    .local v206, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v185

    .line 660
    .local v185, "relativeStackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v177

    .line 661
    .local v177, "position":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v217

    .line 662
    .local v217, "weight":F
    move-object/from16 v0, p0

    move/from16 v1, v206

    move/from16 v2, v185

    move/from16 v3, v177

    move/from16 v4, v217

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->createStack(IIIF)I

    move-result v189

    .line 663
    .local v189, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 669
    .end local v177    # "position":I
    .end local v185    # "relativeStackId":I
    .end local v189    # "res":I
    .end local v206    # "taskId":I
    .end local v217    # "weight":F
    :sswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 671
    .restart local v206    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 672
    .local v197, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v208, 0x1

    .line 673
    .local v208, "toTop":Z
    :goto_25
    move-object/from16 v0, p0

    move/from16 v1, v206

    move/from16 v2, v197

    move/from16 v3, v208

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 672
    .end local v208    # "toTop":Z
    :cond_2b
    const/16 v208, 0x0

    goto :goto_25

    .line 679
    .end local v197    # "stackId":I
    .end local v206    # "taskId":I
    :sswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 681
    .local v196, "stackBoxId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v217

    .line 682
    .restart local v217    # "weight":F
    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, v217

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStackBox(IF)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 689
    .end local v196    # "stackBoxId":I
    .end local v217    # "weight":F
    :sswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 691
    .restart local v196    # "stackBoxId":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchStackBox(I)V

    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 698
    .end local v196    # "stackBoxId":I
    :sswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getStackBoxes()Ljava/util/List;

    move-result-object v155

    .line 700
    .local v155, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    move-object/from16 v0, p3

    move-object/from16 v1, v155

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 702
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 706
    .end local v155    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    :sswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 708
    .restart local v196    # "stackBoxId":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v143

    .line 709
    .local v143, "info":Landroid/app/ActivityManager$StackBoxInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    if-eqz v143, :cond_2c

    .line 711
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$StackBoxInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 716
    :goto_26
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 714
    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 720
    .end local v143    # "info":Landroid/app/ActivityManager$StackBoxInfo;
    .end local v196    # "stackBoxId":I
    :sswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 722
    .restart local v197    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v197

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 728
    .end local v197    # "stackId":I
    :sswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 730
    .restart local v197    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v203, 0x1

    .line 731
    .local v203, "tapOutSide":Z
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v197

    move/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setFocusedStack(IZ)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 730
    .end local v203    # "tapOutSide":Z
    :cond_2d
    const/16 v203, 0x0

    goto :goto_27

    .line 738
    .end local v197    # "stackId":I
    :sswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 740
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v167, 0x1

    .line 741
    .local v167, "onlyRoot":Z
    :goto_28
    if-eqz v52, :cond_2f

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v167

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v189

    .line 743
    .restart local v189    # "res":I
    :goto_29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 740
    .end local v167    # "onlyRoot":Z
    .end local v189    # "res":I
    :cond_2e
    const/16 v167, 0x0

    goto :goto_28

    .line 741
    .restart local v167    # "onlyRoot":Z
    :cond_2f
    const/16 v189, -0x1

    goto :goto_29

    .line 749
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v167    # "onlyRoot":Z
    :sswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 751
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v207, v5

    .line 753
    .restart local v207    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_2a
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Ljava/lang/CharSequence;

    .line 754
    .restart local v132    # "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v207

    move-object/from16 v3, v132

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 751
    .end local v132    # "description":Ljava/lang/CharSequence;
    .end local v207    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_30
    const/16 v207, 0x0

    goto :goto_2a

    .line 760
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 762
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 763
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 764
    .local v84, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 765
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v195, 0x1

    .line 766
    .local v195, "stable":Z
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move/from16 v3, v195

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v131

    .line 767
    .local v131, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    if-eqz v131, :cond_32

    .line 769
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    const/4 v5, 0x0

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    :goto_2c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 765
    .end local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v195    # "stable":Z
    :cond_31
    const/16 v195, 0x0

    goto :goto_2b

    .line 772
    .restart local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v195    # "stable":Z
    :cond_32
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 778
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v84    # "name":Ljava/lang/String;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v195    # "stable":Z
    :sswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 780
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 781
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 782
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v131

    .line 783
    .restart local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    if-eqz v131, :cond_33

    .line 785
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v5, 0x0

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 790
    :goto_2d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 788
    :cond_33
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 794
    .end local v17    # "userId":I
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    .end local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 796
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 797
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v179

    .line 799
    .local v179, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 805
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v179    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 807
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 808
    .local v195, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 809
    .local v210, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v195

    move/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v189

    .line 810
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v189, :cond_34

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 811
    :cond_34
    const/4 v5, 0x0

    goto :goto_2e

    .line 816
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v189    # "res":Z
    .end local v195    # "stable":I
    .end local v210    # "unstable":I
    :sswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 818
    .restart local v120    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 824
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 826
    .restart local v120    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 832
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 834
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    const/16 v195, 0x1

    .line 835
    .local v195, "stable":Z
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 834
    .end local v195    # "stable":Z
    :cond_35
    const/16 v195, 0x0

    goto :goto_2f

    .line 841
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 843
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 844
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 850
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    :sswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/content/ComponentName;

    .line 852
    .local v129, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v172

    .line 853
    .local v172, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    move-object/from16 v0, v172

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 855
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 859
    .end local v129    # "comp":Landroid/content/ComponentName;
    .end local v172    # "pi":Landroid/app/PendingIntent;
    :sswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 861
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 862
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 863
    .local v59, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 864
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 865
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v128

    .line 866
    .restart local v128    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 868
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 872
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v59    # "service":Landroid/content/Intent;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v128    # "cn":Landroid/content/ComponentName;
    :sswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 874
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 875
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 876
    .restart local v59    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 877
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 878
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v189

    .line 879
    .local v189, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 885
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v59    # "service":Landroid/content/Intent;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v189    # "res":I
    :sswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 887
    .local v51, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 888
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 889
    .local v198, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v198

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v189

    .line 890
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    if-eqz v189, :cond_36

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 891
    :cond_36
    const/4 v5, 0x0

    goto :goto_30

    .line 896
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "res":Z
    .end local v198    # "startId":I
    :sswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 898
    .restart local v51    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 899
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 900
    .restart local v53    # "id":I
    const/16 v54, 0x0

    .line 901
    .local v54, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    .line 902
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "notification":Landroid/app/Notification;
    check-cast v54, Landroid/app/Notification;

    .line 904
    .restart local v54    # "notification":Landroid/app/Notification;
    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v55, 0x1

    .local v55, "removeNotification":Z
    :goto_31
    move-object/from16 v50, p0

    .line 905
    invoke-virtual/range {v50 .. v55}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 904
    .end local v55    # "removeNotification":Z
    :cond_38
    const/16 v55, 0x0

    goto :goto_31

    .line 911
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v53    # "id":I
    .end local v54    # "notification":Landroid/app/Notification;
    :sswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 913
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 914
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 915
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 916
    .restart local v59    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 917
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 919
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 920
    .restart local v17    # "userId":I
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .local v61, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v56, p0

    move-object/from16 v57, v6

    move-object/from16 v58, v52

    move-object/from16 v60, v9

    move/from16 v63, v17

    .line 921
    invoke-virtual/range {v56 .. v63}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v189

    .line 922
    .local v189, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 928
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v59    # "service":Landroid/content/Intent;
    .end local v61    # "conn":Landroid/app/IServiceConnection;
    .end local v62    # "fl":I
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v189    # "res":I
    :sswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 930
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .line 931
    .restart local v61    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v189

    .line 932
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    if-eqz v189, :cond_39

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 933
    :cond_39
    const/4 v5, 0x0

    goto :goto_32

    .line 938
    .end local v61    # "conn":Landroid/app/IServiceConnection;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v189    # "res":Z
    :sswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 940
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 941
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v59

    .line 942
    .local v59, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 948
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v59    # "service":Landroid/os/IBinder;
    :sswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 950
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 951
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v134, 0x1

    .line 952
    .local v134, "doRebind":Z
    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v134

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 951
    .end local v134    # "doRebind":Z
    :cond_3a
    const/16 v134, 0x0

    goto :goto_33

    .line 958
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 960
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 961
    .local v71, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 962
    .restart local v198    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 963
    .local v189, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v71

    move/from16 v3, v198

    move/from16 v4, v189

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 969
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v71    # "type":I
    .end local v189    # "res":I
    .end local v198    # "startId":I
    :sswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 971
    .restart local v51    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 972
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 973
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v67

    .line 974
    .local v67, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 975
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v68

    .line 976
    .local v68, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 977
    invoke-static/range {v120 .. v120}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v69

    .line 978
    .local v69, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v63, p0

    move-object/from16 v64, v51

    move-object/from16 v65, v14

    move/from16 v66, v62

    move/from16 v70, v17

    .line 979
    invoke-virtual/range {v63 .. v70}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z

    move-result v189

    .line 980
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v189, :cond_3b

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 981
    :cond_3b
    const/4 v5, 0x0

    goto :goto_34

    .line 987
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v62    # "fl":I
    .end local v67    # "arguments":Landroid/os/Bundle;
    .end local v68    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v69    # "c":Landroid/app/IUiAutomationConnection;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v189    # "res":Z
    :sswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 989
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 990
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 991
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v192

    .line 992
    .local v192, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v192

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 998
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v43    # "resultCode":I
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v192    # "results":Landroid/os/Bundle;
    :sswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 1000
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1002
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1008
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1014
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_3c

    const/16 v213, 0x0

    .line 1016
    .local v213, "value":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v213

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->multiWindowSettingChanged(Z)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v213    # "value":Z
    :cond_3c
    const/16 v213, 0x1

    goto :goto_35

    .line 1022
    :sswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1024
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 1025
    .local v188, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v188

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v188    # "requestedOrientation":I
    :sswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1033
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v186

    .line 1034
    .local v186, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    move-object/from16 v0, p3

    move/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1040
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v186    # "req":I
    :sswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1042
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 1043
    .restart local v128    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1045
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1049
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v128    # "cn":Landroid/content/ComponentName;
    :sswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1051
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1053
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1057
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 1059
    .local v173, "pid":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    move-object/from16 v0, p0

    move/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1061
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v173    # "pid":I
    :sswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 1067
    .restart local v71    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1068
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1069
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1070
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1073
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 1074
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v76

    check-cast v76, [Landroid/content/Intent;

    .line 1075
    .local v76, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v77

    .line 1080
    .local v77, "requestResolvedTypes":[Ljava/lang/String;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1081
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1083
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v70, p0

    move-object/from16 v72, v20

    move-object/from16 v73, v52

    move-object/from16 v74, v11

    move/from16 v75, v12

    move/from16 v78, v62

    move-object/from16 v79, v16

    move/from16 v80, v17

    .line 1084
    invoke-virtual/range {v70 .. v80}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v189

    .line 1087
    .local v189, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    if-eqz v189, :cond_3f

    invoke-interface/range {v189 .. v189}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1089
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1077
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v62    # "fl":I
    .end local v76    # "requestIntents":[Landroid/content/Intent;
    .end local v77    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v189    # "res":Landroid/content/IIntentSender;
    :cond_3d
    const/16 v76, 0x0

    .line 1078
    .restart local v76    # "requestIntents":[Landroid/content/Intent;
    const/16 v77, 0x0

    .restart local v77    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_36

    .line 1081
    .restart local v62    # "fl":I
    :cond_3e
    const/16 v16, 0x0

    goto :goto_37

    .line 1088
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v189    # "res":Landroid/content/IIntentSender;
    :cond_3f
    const/4 v5, 0x0

    goto :goto_38

    .line 1093
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v62    # "fl":I
    .end local v71    # "type":I
    .end local v76    # "requestIntents":[Landroid/content/Intent;
    .end local v77    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v189    # "res":Landroid/content/IIntentSender;
    :sswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v181

    .line 1096
    .local v181, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1102
    .end local v181    # "r":Landroid/content/IIntentSender;
    :sswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v181

    .line 1105
    .restart local v181    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v189

    .line 1106
    .local v189, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    move-object/from16 v0, p3

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1108
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1112
    .end local v181    # "r":Landroid/content/IIntentSender;
    .end local v189    # "res":Ljava/lang/String;
    :sswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v181

    .line 1115
    .restart local v181    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v189

    .line 1116
    .local v189, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1122
    .end local v181    # "r":Landroid/content/IIntentSender;
    .end local v189    # "res":I
    :sswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v181

    .line 1125
    .restart local v181    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v189

    .line 1126
    .restart local v189    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1132
    .end local v181    # "r":Landroid/content/IIntentSender;
    .end local v189    # "res":I
    :sswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 1134
    .local v79, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1135
    .local v80, "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1136
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/16 v82, 0x1

    .line 1137
    .local v82, "allowAll":Z
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    const/16 v83, 0x1

    .line 1138
    .local v83, "requireFull":Z
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1139
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .local v85, "callerPackage":Ljava/lang/String;
    move-object/from16 v78, p0

    move/from16 v81, v17

    .line 1140
    invoke-virtual/range {v78 .. v85}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v189

    .line 1142
    .restart local v189    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1136
    .end local v82    # "allowAll":Z
    .end local v83    # "requireFull":Z
    .end local v84    # "name":Ljava/lang/String;
    .end local v85    # "callerPackage":Ljava/lang/String;
    .end local v189    # "res":I
    :cond_40
    const/16 v82, 0x0

    goto :goto_39

    .line 1137
    .restart local v82    # "allowAll":Z
    :cond_41
    const/16 v83, 0x0

    goto :goto_3a

    .line 1148
    .end local v17    # "userId":I
    .end local v79    # "callingPid":I
    .end local v80    # "callingUid":I
    .end local v82    # "allowAll":Z
    :sswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v158

    .line 1150
    .local v158, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1156
    .end local v158    # "max":I
    :sswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v149

    .line 1158
    .local v149, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    move-object/from16 v0, p3

    move/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1164
    .end local v149    # "limit":I
    :sswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1166
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 1167
    .restart local v173    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/16 v147, 0x1

    .line 1168
    .local v147, "isForeground":Z
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v173

    move/from16 v3, v147

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1167
    .end local v147    # "isForeground":Z
    :cond_42
    const/16 v147, 0x0

    goto :goto_3b

    .line 1174
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v173    # "pid":I
    :sswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1176
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 1177
    .restart local v173    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/16 v147, 0x1

    .line 1178
    .restart local v147    # "isForeground":Z
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v146, 0x1

    .line 1179
    .local v146, "isCalledByNotificationManagerService":Z
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v173

    move/from16 v3, v147

    move/from16 v4, v146

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZZ)V

    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1177
    .end local v146    # "isCalledByNotificationManagerService":Z
    .end local v147    # "isForeground":Z
    :cond_43
    const/16 v147, 0x0

    goto :goto_3c

    .line 1178
    .restart local v147    # "isForeground":Z
    :cond_44
    const/16 v146, 0x0

    goto :goto_3d

    .line 1185
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v147    # "isForeground":Z
    .end local v173    # "pid":I
    :sswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1187
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 1188
    .restart local v173    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v209

    .line 1189
    .local v209, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v173

    move/from16 v3, v209

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v189

    .line 1190
    .restart local v189    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1196
    .end local v23    # "perm":Ljava/lang/String;
    .end local v173    # "pid":I
    .end local v189    # "res":I
    .end local v209    # "uid":I
    :sswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1198
    .local v97, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 1199
    .restart local v173    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v209

    .line 1200
    .restart local v209    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1201
    .local v98, "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v173

    move/from16 v3, v209

    move/from16 v4, v98

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v189

    .line 1202
    .restart local v189    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v173    # "pid":I
    .end local v189    # "res":I
    .end local v209    # "uid":I
    :sswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1210
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v166

    .line 1212
    .local v166, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1213
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v166

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v189

    .line 1214
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    if-eqz v189, :cond_45

    const/4 v5, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1215
    :cond_45
    const/4 v5, 0x0

    goto :goto_3e

    .line 1220
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v166    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v189    # "res":Z
    :sswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1222
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1223
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1224
    .local v96, "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1225
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1226
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1234
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1235
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1236
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1237
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1243
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1245
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1246
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1252
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1254
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1255
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1261
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1263
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    const/16 v141, 0x1

    .line 1264
    .local v141, "incoming":Z
    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v141

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v170

    .line 1266
    .local v170, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v5, 0x1

    move-object/from16 v0, v170

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1268
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1263
    .end local v141    # "incoming":Z
    .end local v170    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_46
    const/16 v141, 0x0

    goto :goto_3f

    .line 1272
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1274
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1275
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    const/16 v215, 0x1

    .line 1276
    .local v215, "waiting":Z
    :goto_40
    move-object/from16 v0, p0

    move/from16 v1, v215

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v215    # "waiting":Z
    :cond_47
    const/16 v215, 0x0

    goto :goto_40

    .line 1282
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    new-instance v161, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v161 .. v161}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1284
    .local v161, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    const/4 v5, 0x0

    move-object/from16 v0, v161

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1287
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1291
    .end local v161    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1298
    :sswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1300
    .restart local v97    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v171

    .line 1301
    .local v171, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    if-eqz v171, :cond_48

    .line 1303
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    const/4 v5, 0x1

    move-object/from16 v0, v171

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1308
    :goto_41
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1306
    :cond_48
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 1312
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v171    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1319
    :sswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1326
    :sswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    const/4 v5, 0x1

    :goto_42
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1327
    :cond_49
    const/4 v5, 0x0

    goto :goto_42

    .line 1333
    :sswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v176

    .line 1335
    .local v176, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    const/16 v218, 0x1

    .line 1336
    .local v218, "wfd":Z
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    const/16 v169, 0x1

    .line 1337
    .local v169, "per":Z
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move/from16 v2, v218

    move/from16 v3, v169

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1335
    .end local v169    # "per":Z
    .end local v218    # "wfd":Z
    :cond_4a
    const/16 v218, 0x0

    goto :goto_43

    .line 1336
    .restart local v218    # "wfd":Z
    :cond_4b
    const/16 v169, 0x0

    goto :goto_44

    .line 1343
    .end local v176    # "pn":Ljava/lang/String;
    .end local v218    # "wfd":Z
    :sswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4c

    const/16 v135, 0x1

    .line 1345
    .local v135, "enabled":Z
    :goto_45
    move-object/from16 v0, p0

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1344
    .end local v135    # "enabled":Z
    :cond_4c
    const/16 v135, 0x0

    goto :goto_45

    .line 1351
    :sswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v216

    .line 1354
    .local v216, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1360
    .end local v216    # "watcher":Landroid/app/IActivityController;
    :sswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1367
    :sswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v145

    .line 1370
    .local v145, "is":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1376
    .end local v145    # "is":Landroid/content/IIntentSender;
    :sswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v174

    .line 1378
    .local v174, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v182

    .line 1379
    .local v182, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    const/16 v193, 0x1

    .line 1380
    .local v193, "secure":Z
    :goto_46
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move-object/from16 v2, v182

    move/from16 v3, v193

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v189

    .line 1381
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    if-eqz v189, :cond_4e

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1379
    .end local v189    # "res":Z
    .end local v193    # "secure":Z
    :cond_4d
    const/16 v193, 0x0

    goto :goto_46

    .line 1382
    .restart local v189    # "res":Z
    .restart local v193    # "secure":Z
    :cond_4e
    const/4 v5, 0x0

    goto :goto_47

    .line 1387
    .end local v174    # "pids":[I
    .end local v182    # "reason":Ljava/lang/String;
    .end local v189    # "res":Z
    .end local v193    # "secure":Z
    :sswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v182

    .line 1389
    .restart local v182    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v189

    .line 1390
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    if-eqz v189, :cond_4f

    const/4 v5, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1391
    :cond_4f
    const/4 v5, 0x0

    goto :goto_48

    .line 1396
    .end local v182    # "reason":Ljava/lang/String;
    .end local v189    # "res":Z
    :sswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1398
    .local v175, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1399
    .local v127, "cls":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1400
    .local v113, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 1401
    .local v142, "indata":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move-object/from16 v2, v127

    move-object/from16 v3, v113

    move-object/from16 v4, v142

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v113    # "action":Ljava/lang/String;
    .end local v127    # "cls":Ljava/lang/String;
    .end local v142    # "indata":Ljava/lang/String;
    .end local v175    # "pkg":Ljava/lang/String;
    :sswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1409
    .local v6, "app":Landroid/os/IBinder;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1410
    .local v126, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v126    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1418
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v202

    .line 1419
    .local v202, "tag":Ljava/lang/String;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1420
    .restart local v126    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v202

    move-object/from16 v2, v126

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v189

    .line 1421
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    if-eqz v189, :cond_50

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1422
    :cond_50
    const/4 v5, 0x0

    goto :goto_49

    .line 1427
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v126    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v189    # "res":Z
    .end local v202    # "tag":Ljava/lang/String;
    :sswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1429
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1430
    .local v214, "violationMask":I
    new-instance v143, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v143

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1431
    .local v143, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v214

    move-object/from16 v2, v143

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1437
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v143    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v214    # "violationMask":I
    :sswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v194

    .line 1439
    .local v194, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v194

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1445
    .end local v194    # "sig":I
    :sswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1447
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1448
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1454
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1461
    :sswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1463
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1464
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1470
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    new-instance v143, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v143 .. v143}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1473
    .local v143, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1476
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v143    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1482
    .local v27, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1484
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v27    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1490
    .local v87, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1491
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_51

    const/16 v89, 0x1

    .line 1492
    .local v89, "start":Z
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 1493
    .local v92, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1494
    .local v90, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v91, v5

    .local v91, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_4b
    move-object/from16 v86, p0

    move/from16 v88, v17

    .line 1496
    invoke-virtual/range {v86 .. v92}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v189

    .line 1497
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    if-eqz v189, :cond_53

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1491
    .end local v89    # "start":Z
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v92    # "profileType":I
    .end local v189    # "res":Z
    :cond_51
    const/16 v89, 0x0

    goto :goto_4a

    .line 1494
    .restart local v89    # "start":Z
    .restart local v90    # "path":Ljava/lang/String;
    .restart local v92    # "profileType":I
    :cond_52
    const/16 v91, 0x0

    goto :goto_4b

    .line 1498
    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v189    # "res":Z
    :cond_53
    const/4 v5, 0x0

    goto :goto_4c

    .line 1503
    .end local v17    # "userId":I
    .end local v87    # "process":Ljava/lang/String;
    .end local v89    # "start":Z
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v92    # "profileType":I
    .end local v189    # "res":Z
    :sswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v189

    .line 1505
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    if-eqz v189, :cond_54

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1506
    :cond_54
    const/4 v5, 0x0

    goto :goto_4d

    .line 1512
    .end local v189    # "res":Z
    :sswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->fakeShutdown(I)Z

    move-result v189

    .line 1514
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    if-eqz v189, :cond_55

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1515
    :cond_55
    const/4 v5, 0x0

    goto :goto_4e

    .line 1520
    .end local v189    # "res":Z
    :sswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1527
    :sswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1534
    :sswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 1536
    .local v59, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1537
    .restart local v9    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v9}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v122

    .line 1538
    .local v122, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1540
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1544
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v59    # "service":Landroid/content/Intent;
    .end local v122    # "binder":Landroid/os/IBinder;
    :sswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/content/pm/ApplicationInfo;

    .line 1546
    .local v143, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 1547
    .local v121, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v121

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v201

    .line 1548
    .local v201, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    if-eqz v201, :cond_56

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1549
    :cond_56
    const/4 v5, 0x0

    goto :goto_4f

    .line 1554
    .end local v121    # "backupRestoreMode":I
    .end local v143    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v201    # "success":Z
    :sswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1556
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v114

    .line 1557
    .local v114, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1563
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v114    # "agent":Landroid/os/IBinder;
    :sswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/content/pm/ApplicationInfo;

    .line 1565
    .restart local v143    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1571
    .end local v143    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1573
    .restart local v175    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1574
    .local v117, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v182

    .line 1575
    .restart local v182    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, v117

    move-object/from16 v3, v182

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1581
    .end local v117    # "appid":I
    .end local v175    # "pkg":Ljava/lang/String;
    .end local v182    # "reason":Ljava/lang/String;
    :sswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v182

    .line 1583
    .restart local v182    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1589
    .end local v182    # "reason":Ljava/lang/String;
    :sswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v174

    .line 1591
    .restart local v174    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v189

    .line 1592
    .local v189, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v189

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1594
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1598
    .end local v174    # "pids":[I
    .end local v189    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v178

    .line 1600
    .local v178, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v209

    .line 1601
    .restart local v209    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1607
    .end local v178    # "processName":Ljava/lang/String;
    .end local v209    # "uid":I
    :sswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1609
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1610
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1611
    .local v136, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 1612
    .local v137, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v20

    move/from16 v3, v136

    move/from16 v4, v137

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1618
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v136    # "enterAnim":I
    .end local v137    # "exitAnim":I
    :sswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v118

    .line 1620
    .local v118, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    if-eqz v118, :cond_57

    const/4 v5, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1621
    :cond_57
    const/4 v5, 0x0

    goto :goto_50

    .line 1626
    .end local v118    # "areThey":Z
    :sswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_58

    const/16 v163, 0x1

    .line 1628
    .local v163, "monkey":Z
    :goto_51
    move-object/from16 v0, p0

    move/from16 v1, v163

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1627
    .end local v163    # "monkey":Z
    :cond_58
    const/16 v163, 0x0

    goto :goto_51

    .line 1634
    :sswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1637
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1641
    :sswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1643
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v148

    .line 1644
    .local v148, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    if-eqz v148, :cond_59

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1645
    :cond_59
    const/4 v5, 0x0

    goto :goto_52

    .line 1650
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v148    # "isit":Z
    :sswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1652
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v130

    .line 1653
    .local v130, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    if-eqz v130, :cond_5a

    const/4 v5, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1654
    :cond_5a
    const/4 v5, 0x0

    goto :goto_53

    .line 1659
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v130    # "converted":Z
    :sswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1661
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;)Z

    move-result v130

    .line 1662
    .restart local v130    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    if-eqz v130, :cond_5b

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1663
    :cond_5b
    const/4 v5, 0x0

    goto :goto_54

    .line 1668
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v130    # "converted":Z
    :sswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1670
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_5c

    const/16 v140, 0x1

    .line 1671
    .local v140, "imm":Z
    :goto_55
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v140

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1670
    .end local v140    # "imm":Z
    :cond_5c
    const/16 v140, 0x0

    goto :goto_55

    .line 1677
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v148

    .line 1679
    .restart local v148    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    if-eqz v148, :cond_5d

    const/4 v5, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1681
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1680
    :cond_5d
    const/4 v5, 0x0

    goto :goto_56

    .line 1685
    .end local v148    # "isit":Z
    :sswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v209

    .line 1687
    .restart local v209    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 1688
    .local v144, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1689
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v160

    .line 1690
    .local v160, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v209

    move/from16 v2, v144

    move-object/from16 v3, v20

    move-object/from16 v4, v160

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1696
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v144    # "initialPid":I
    .end local v160    # "message":Ljava/lang/String;
    .end local v209    # "uid":I
    :sswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1698
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1699
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v71

    .line 1700
    .local v71, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1702
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1706
    .end local v17    # "userId":I
    .end local v71    # "type":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    :sswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1708
    .restart local v84    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1709
    .local v23, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1711
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1715
    .end local v23    # "perm":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    :sswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1717
    .local v94, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1718
    .local v95, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1719
    .restart local v96    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1720
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .restart local v98    # "mode":I
    move-object/from16 v93, p0

    .line 1721
    invoke-virtual/range {v93 .. v98}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1727
    .end local v94    # "owner":Landroid/os/IBinder;
    .end local v95    # "fromUid":I
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1729
    .restart local v94    # "owner":Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1730
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    .line 1731
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1733
    :cond_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1734
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1740
    .end local v94    # "owner":Landroid/os/IBinder;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1742
    .restart local v80    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1743
    .restart local v96    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1744
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v162

    .line 1745
    .local v162, "modeFlags":I
    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v96

    move-object/from16 v3, v97

    move/from16 v4, v162

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v189

    .line 1746
    .local v189, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1747
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1752
    .end local v80    # "callingUid":I
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v162    # "modeFlags":I
    .end local v189    # "res":I
    :sswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1754
    .restart local v87    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1755
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    const/16 v102, 0x1

    .line 1756
    .local v102, "managed":Z
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1757
    .restart local v90    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_60

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v91, v5

    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_58
    move-object/from16 v99, p0

    move-object/from16 v100, v87

    move/from16 v101, v17

    move-object/from16 v103, v90

    move-object/from16 v104, v91

    .line 1759
    invoke-virtual/range {v99 .. v104}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v189

    .line 1760
    .local v189, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1761
    if-eqz v189, :cond_61

    const/4 v5, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1755
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v189    # "res":Z
    :cond_5f
    const/16 v102, 0x0

    goto :goto_57

    .line 1757
    .restart local v90    # "path":Ljava/lang/String;
    .restart local v102    # "managed":Z
    :cond_60
    const/16 v91, 0x0

    goto :goto_58

    .line 1761
    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v189    # "res":Z
    :cond_61
    const/4 v5, 0x0

    goto :goto_59

    .line 1767
    .end local v17    # "userId":I
    .end local v87    # "process":Ljava/lang/String;
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v189    # "res":Z
    :sswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1769
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1770
    .local v6, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1771
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v106

    check-cast v106, [Landroid/content/Intent;

    .line 1772
    .local v106, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v107

    .line 1773
    .local v107, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 1774
    .local v10, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_62

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1776
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v103, p0

    move-object/from16 v104, v6

    move-object/from16 v105, v7

    move-object/from16 v108, v10

    move-object/from16 v109, v16

    move/from16 v110, v17

    .line 1777
    invoke-virtual/range {v103 .. v110}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v191

    .line 1779
    .local v191, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1774
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v191    # "result":I
    :cond_62
    const/16 v16, 0x0

    goto :goto_5a

    .line 1786
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v106    # "intents":[Landroid/content/Intent;
    .end local v107    # "resolvedTypes":[Ljava/lang/String;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v98

    .line 1788
    .restart local v98    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1795
    .end local v98    # "mode":I
    :sswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1797
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1805
    .end local v98    # "mode":I
    :sswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1807
    .restart local v175    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v98

    .line 1808
    .restart local v98    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1810
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1815
    .end local v98    # "mode":I
    .end local v175    # "pkg":Ljava/lang/String;
    :sswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1817
    .restart local v175    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1818
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1820
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1824
    .end local v98    # "mode":I
    .end local v175    # "pkg":Ljava/lang/String;
    :sswitch_97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v212

    .line 1826
    .local v212, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v212

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v191

    .line 1827
    .local v191, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    if-eqz v191, :cond_63

    const/4 v5, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1828
    :cond_63
    const/4 v5, 0x0

    goto :goto_5b

    .line 1833
    .end local v191    # "result":Z
    .end local v212    # "userid":I
    :sswitch_98
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v212

    .line 1835
    .restart local v212    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v124

    .line 1837
    .local v124, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v212

    move-object/from16 v2, v124

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v191

    .line 1838
    .local v191, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    move-object/from16 v0, p3

    move/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1844
    .end local v124    # "callback":Landroid/app/IStopUserCallback;
    .end local v191    # "result":I
    .end local v212    # "userid":I
    :sswitch_99
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v211

    .line 1846
    .local v211, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    const/4 v5, 0x0

    move-object/from16 v0, v211

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1848
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1852
    .end local v211    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_9a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v212

    .line 1854
    .restart local v212    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_64

    const/16 v168, 0x1

    .line 1855
    .local v168, "orStopping":Z
    :goto_5c
    move-object/from16 v0, p0

    move/from16 v1, v212

    move/from16 v2, v168

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v191

    .line 1856
    .local v191, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    if-eqz v191, :cond_65

    const/4 v5, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1854
    .end local v168    # "orStopping":Z
    .end local v191    # "result":Z
    :cond_64
    const/16 v168, 0x0

    goto :goto_5c

    .line 1857
    .restart local v168    # "orStopping":Z
    .restart local v191    # "result":Z
    :cond_65
    const/4 v5, 0x0

    goto :goto_5d

    .line 1862
    .end local v168    # "orStopping":Z
    .end local v191    # "result":Z
    .end local v212    # "userid":I
    :sswitch_9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v191

    .line 1864
    .local v191, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1866
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1871
    .end local v191    # "result":[I
    :sswitch_9c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 1873
    .restart local v206    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1874
    .local v200, "subTaskIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v206

    move/from16 v2, v200

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v191

    .line 1875
    .local v191, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    if-eqz v191, :cond_66

    const/4 v5, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1876
    :cond_66
    const/4 v5, 0x0

    goto :goto_5e

    .line 1882
    .end local v191    # "result":Z
    .end local v200    # "subTaskIndex":I
    .end local v206    # "taskId":I
    :sswitch_9d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 1884
    .restart local v206    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1885
    .restart local v62    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v206

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v191

    .line 1886
    .restart local v191    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    if-eqz v191, :cond_67

    const/4 v5, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1887
    :cond_67
    const/4 v5, 0x0

    goto :goto_5f

    .line 1892
    .end local v62    # "fl":I
    .end local v191    # "result":Z
    .end local v206    # "taskId":I
    :sswitch_9e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v166

    .line 1895
    .local v166, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1896
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1900
    .end local v166    # "observer":Landroid/app/IProcessObserver;
    :sswitch_9f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v166

    .line 1903
    .restart local v166    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1904
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1909
    .end local v166    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1911
    .restart local v175    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v119

    .line 1912
    .local v119, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    if-eqz v119, :cond_68

    const/4 v5, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1913
    :cond_68
    const/4 v5, 0x0

    goto :goto_60

    .line 1919
    .end local v119    # "ask":Z
    .end local v175    # "pkg":Ljava/lang/String;
    :sswitch_a1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1921
    .restart local v175    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_69

    const/16 v119, 0x1

    .line 1922
    .restart local v119    # "ask":Z
    :goto_61
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, v119

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1921
    .end local v119    # "ask":Z
    :cond_69
    const/16 v119, 0x0

    goto :goto_61

    .line 1928
    .end local v175    # "pkg":Ljava/lang/String;
    :sswitch_a2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v181

    .line 1931
    .restart local v181    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v189

    .line 1932
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    if-eqz v189, :cond_6a

    const/4 v5, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1933
    :cond_6a
    const/4 v5, 0x0

    goto :goto_62

    .line 1938
    .end local v181    # "r":Landroid/content/IIntentSender;
    .end local v189    # "res":Z
    :sswitch_a3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v181

    .line 1941
    .restart local v181    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v189

    .line 1942
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    if-eqz v189, :cond_6b

    const/4 v5, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1944
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1943
    :cond_6b
    const/4 v5, 0x0

    goto :goto_63

    .line 1948
    .end local v181    # "r":Landroid/content/IIntentSender;
    .end local v189    # "res":Z
    :sswitch_a4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v181

    .line 1951
    .restart local v181    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v8

    .line 1952
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    if-eqz v8, :cond_6c

    .line 1954
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1959
    :goto_64
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1957
    :cond_6c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_64

    .line 1963
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v181    # "r":Landroid/content/IIntentSender;
    :sswitch_a5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1965
    .local v27, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1971
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_a6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v174

    .line 1973
    .restart local v174    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v180

    .line 1974
    .local v180, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    move-object/from16 v0, p3

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1976
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1980
    .end local v174    # "pids":[I
    .end local v180    # "pss":[J
    :sswitch_a7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Ljava/lang/CharSequence;

    .line 1982
    .local v164, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6d

    const/16 v116, 0x1

    .line 1983
    .local v116, "always":Z
    :goto_65
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1985
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1982
    .end local v116    # "always":Z
    :cond_6d
    const/16 v116, 0x0

    goto :goto_65

    .line 1989
    .end local v164    # "msg":Ljava/lang/CharSequence;
    :sswitch_a8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1992
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1996
    :sswitch_a9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1998
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 1999
    .local v133, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v133

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v189

    .line 2000
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    if-eqz v189, :cond_6e

    const/4 v5, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2002
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2001
    :cond_6e
    const/4 v5, 0x0

    goto :goto_66

    .line 2006
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v133    # "destAffinity":Ljava/lang/String;
    .end local v189    # "res":Z
    :sswitch_aa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2008
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v204

    check-cast v204, Landroid/content/Intent;

    .line 2009
    .local v204, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 2010
    .restart local v43    # "resultCode":I
    const/16 v44, 0x0

    .line 2011
    .local v44, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6f

    .line 2012
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "resultData":Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 2014
    .restart local v44    # "resultData":Landroid/content/Intent;
    :cond_6f
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v204

    move/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v189

    .line 2015
    .restart local v189    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2016
    if-eqz v189, :cond_70

    const/4 v5, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2016
    :cond_70
    const/4 v5, 0x0

    goto :goto_67

    .line 2021
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "res":Z
    .end local v204    # "target":Landroid/content/Intent;
    :sswitch_ab
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2023
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v189

    .line 2024
    .local v189, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2026
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2030
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "res":I
    :sswitch_ac
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2032
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v189

    .line 2033
    .local v189, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    move-object/from16 v0, p3

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2035
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2039
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "res":Ljava/lang/String;
    :sswitch_ad
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v166

    .line 2042
    .local v166, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2048
    .end local v166    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_ae
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v166

    .line 2051
    .restart local v166    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2057
    .end local v166    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_af
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2064
    :sswitch_b0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 2066
    .restart local v173    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_71

    const/16 v112, 0x1

    .line 2067
    .local v112, "aboveSystem":Z
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v182

    .line 2068
    .restart local v182    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v173

    move/from16 v2, v112

    move-object/from16 v3, v182

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v189

    .line 2069
    .local v189, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    move-object/from16 v0, p3

    move-wide/from16 v1, v189

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2071
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2066
    .end local v112    # "aboveSystem":Z
    .end local v182    # "reason":Ljava/lang/String;
    .end local v189    # "res":J
    :cond_71
    const/16 v112, 0x0

    goto :goto_68

    .line 2075
    .end local v173    # "pid":I
    :sswitch_b1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v187

    .line 2077
    .local v187, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v189

    .line 2078
    .local v189, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    move-object/from16 v0, p3

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2080
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2084
    .end local v187    # "requestType":I
    .end local v189    # "res":Landroid/os/Bundle;
    :sswitch_b2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2086
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v138

    .line 2087
    .local v138, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v138

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2093
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v138    # "extras":Landroid/os/Bundle;
    :sswitch_b3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v209

    .line 2095
    .restart local v209    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v182

    .line 2096
    .restart local v182    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v209

    move-object/from16 v2, v182

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 2097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2102
    .end local v182    # "reason":Ljava/lang/String;
    .end local v209    # "uid":I
    :sswitch_b4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 2104
    .restart local v42    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_72

    const/16 v115, 0x1

    .line 2105
    .local v115, "allowRestart":Z
    :goto_69
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2104
    .end local v115    # "allowRestart":Z
    :cond_72
    const/16 v115, 0x0

    goto :goto_69

    .line 2111
    .end local v42    # "who":Landroid/os/IBinder;
    :sswitch_b5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2113
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2119
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_b6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2121
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2127
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_b7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2128
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2134
    :sswitch_b8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2135
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6b
        0x2 -> :sswitch_6c
        0x3 -> :sswitch_0
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_60
        0xb -> :sswitch_6
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_21
        0x19 -> :sswitch_22
        0x1a -> :sswitch_24
        0x1b -> :sswitch_2d
        0x1c -> :sswitch_2e
        0x1d -> :sswitch_2f
        0x1e -> :sswitch_31
        0x1f -> :sswitch_32
        0x20 -> :sswitch_7
        0x21 -> :sswitch_37
        0x22 -> :sswitch_38
        0x23 -> :sswitch_39
        0x24 -> :sswitch_3c
        0x25 -> :sswitch_3d
        0x26 -> :sswitch_3e
        0x27 -> :sswitch_11
        0x28 -> :sswitch_61
        0x29 -> :sswitch_62
        0x2a -> :sswitch_64
        0x2b -> :sswitch_65
        0x2c -> :sswitch_41
        0x2d -> :sswitch_42
        0x2e -> :sswitch_43
        0x2f -> :sswitch_44
        0x30 -> :sswitch_3a
        0x31 -> :sswitch_48
        0x32 -> :sswitch_49
        0x33 -> :sswitch_51
        0x34 -> :sswitch_52
        0x35 -> :sswitch_55
        0x36 -> :sswitch_56
        0x37 -> :sswitch_58
        0x38 -> :sswitch_59
        0x39 -> :sswitch_66
        0x3a -> :sswitch_5d
        0x3b -> :sswitch_6f
        0x3c -> :sswitch_19
        0x3d -> :sswitch_40
        0x3e -> :sswitch_15
        0x3f -> :sswitch_4b
        0x40 -> :sswitch_4c
        0x41 -> :sswitch_4d
        0x42 -> :sswitch_67
        0x43 -> :sswitch_5
        0x44 -> :sswitch_68
        0x45 -> :sswitch_35
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_3f
        0x49 -> :sswitch_53
        0x4a -> :sswitch_3b
        0x4b -> :sswitch_23
        0x4c -> :sswitch_5e
        0x4d -> :sswitch_1e
        0x4e -> :sswitch_57
        0x4f -> :sswitch_72
        0x50 -> :sswitch_69
        0x51 -> :sswitch_1d
        0x52 -> :sswitch_1a
        0x53 -> :sswitch_1f
        0x54 -> :sswitch_74
        0x55 -> :sswitch_7a
        0x56 -> :sswitch_75
        0x57 -> :sswitch_76
        0x58 -> :sswitch_78
        0x59 -> :sswitch_79
        0x5a -> :sswitch_7b
        0x5b -> :sswitch_7c
        0x5c -> :sswitch_7d
        0x5d -> :sswitch_4e
        0x5e -> :sswitch_50
        0x5f -> :sswitch_1b
        0x60 -> :sswitch_7e
        0x61 -> :sswitch_7f
        0x62 -> :sswitch_80
        0x63 -> :sswitch_81
        0x64 -> :sswitch_4
        0x65 -> :sswitch_82
        0x66 -> :sswitch_6d
        0x67 -> :sswitch_70
        0x68 -> :sswitch_83
        0x69 -> :sswitch_2
        0x6a -> :sswitch_9
        0x6b -> :sswitch_3
        0x6c -> :sswitch_20
        0x6d -> :sswitch_85
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_86
        0x70 -> :sswitch_89
        0x71 -> :sswitch_8a
        0x72 -> :sswitch_8b
        0x73 -> :sswitch_8c
        0x74 -> :sswitch_8d
        0x75 -> :sswitch_8e
        0x76 -> :sswitch_8f
        0x77 -> :sswitch_90
        0x78 -> :sswitch_91
        0x79 -> :sswitch_92
        0x7a -> :sswitch_9a
        0x7b -> :sswitch_14
        0x7c -> :sswitch_93
        0x7d -> :sswitch_94
        0x7e -> :sswitch_95
        0x7f -> :sswitch_96
        0x80 -> :sswitch_a0
        0x81 -> :sswitch_a1
        0x82 -> :sswitch_97
        0x83 -> :sswitch_9c
        0x84 -> :sswitch_9d
        0x85 -> :sswitch_9e
        0x86 -> :sswitch_9f
        0x87 -> :sswitch_a2
        0x88 -> :sswitch_a5
        0x89 -> :sswitch_a6
        0x8a -> :sswitch_a7
        0x8b -> :sswitch_a8
        0x8c -> :sswitch_71
        0x8d -> :sswitch_30
        0x8e -> :sswitch_36
        0x8f -> :sswitch_73
        0x90 -> :sswitch_6a
        0x91 -> :sswitch_99
        0x92 -> :sswitch_a9
        0x93 -> :sswitch_aa
        0x94 -> :sswitch_63
        0x95 -> :sswitch_8
        0x96 -> :sswitch_ab
        0x97 -> :sswitch_33
        0x98 -> :sswitch_a3
        0x99 -> :sswitch_1
        0x9a -> :sswitch_98
        0x9b -> :sswitch_ad
        0x9c -> :sswitch_ae
        0x9d -> :sswitch_9b
        0x9e -> :sswitch_af
        0x9f -> :sswitch_b0
        0xa1 -> :sswitch_a4
        0xa2 -> :sswitch_b1
        0xa3 -> :sswitch_b2
        0xa4 -> :sswitch_ac
        0xa5 -> :sswitch_b3
        0xa6 -> :sswitch_84
        0xa7 -> :sswitch_b4
        0xa8 -> :sswitch_25
        0xa9 -> :sswitch_26
        0xaa -> :sswitch_27
        0xab -> :sswitch_29
        0xac -> :sswitch_2b
        0xad -> :sswitch_2a
        0xae -> :sswitch_87
        0xaf -> :sswitch_88
        0xb0 -> :sswitch_b6
        0xb1 -> :sswitch_b5
        0xb2 -> :sswitch_b7
        0xb3 -> :sswitch_b8
        0xb4 -> :sswitch_5a
        0xb5 -> :sswitch_5b
        0xb6 -> :sswitch_5c
        0xb7 -> :sswitch_34
        0xb8 -> :sswitch_4f
        0x3f2 -> :sswitch_28
        0x3f3 -> :sswitch_45
        0x3f4 -> :sswitch_2c
        0x835 -> :sswitch_77
        0xc1d -> :sswitch_54
        0xc1e -> :sswitch_4a
        0x1005 -> :sswitch_1c
    .end sparse-switch
.end method
