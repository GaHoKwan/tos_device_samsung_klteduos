.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$DatabaseHelper;,
        Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCK_BACKUPPIN_FILE:Ljava/lang/String; = "sparepassword.key"

.field private static final LOCK_FINGERPRINT_PASSWORD_FILE:Ljava/lang/String; = "fingerprintpassword.key"

.field private static final LOCK_PARENT_CONTROL_PASSWORD_FILE:Ljava/lang/String; = "parentcontrol.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_SIGNATURE_BACKUPPIN_FILE:Ljava/lang/String; = "signaturebackuppin.key"

.field private static final LOCK_SIGNATURE_FILE:Ljava/lang/String; = "signature.key"

.field private static final LOCK_SKTPASSWORD_FILE:Ljava/lang/String; = "sktpassword.key"

.field private static ORIGINAL_PASSWORD_HASH_SIZE:I = 0x0

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PERSONAL_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "personalfingerprintpassword.key"

.field private static final PERSONAL_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "personalbackuppin.key"

.field private static final PERSONAL_LOCK_PASSWORD_FILE:Ljava/lang/String; = "personalpassword.key"

.field private static final PERSONAL_LOCK_PATTERN_FILE:Ljava/lang/String; = "personalpattern.key"

.field private static final PERSONAL_LOCK_PIN_FILE:Ljava/lang/String; = "personalpin.key"

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SIGNATURE_SETTINGS_ADDED_INDEX:I = 0x9

.field private static final SIGNATURE_SETTINGS_CURRENT:I = 0x16

.field private static final SIGNATURE_SETTINGS_OLD:I = 0x15

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static maxRetry:I = 0x0

.field private static final nullPassword:Ljava/lang/String; = "_nullPassword012"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 282
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/16 v0, 0x14

    sput v0, Lcom/android/server/LockSettingsService;->maxRetry:I

    .line 284
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    sget v1, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->setMaxRetryCount(I)Z

    .line 285
    const-string v0, "MDPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen.signatureregistered"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 941
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 953
    const/16 v0, 0x48

    sput v0, Lcom/android/server/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 293
    new-instance v0, Lcom/android/server/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    .line 295
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private checkFingerprintPasswordForKeystore(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    const-string v1, "_nullPassword012"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 1139
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 370
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 371
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 372
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private getLockBackupPinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sparepassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1282
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sparepassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fingerprintpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1222
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "fingerprintpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockParentControlPasswordFilename(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockSKTPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sktpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1343
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sktpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModeBackupPinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalbackuppin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1557
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalbackuppin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1612
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalfingerprintpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1616
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalfingerprintpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModePasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1450
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModePatternFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalpattern.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1508
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalpattern.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPersonalModePinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "personalpin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1401
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "personalpin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSignatureBackupPinFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "signaturebackuppin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "signaturebackuppin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSignatureFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "signature.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "signature.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 514
    if-nez p2, :cond_0

    .line 515
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 518
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const-string v1, "LockSettingsService"

    const-string v2, "maybeUpdateKeystore :keyStore.reset() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 531
    .end local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 523
    .restart local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    const-string v1, "LockSettingsService"

    const-string v2, "maybeUpdateKeystore :keyStore.password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private migrateOldData()V
    .locals 25

    .prologue
    .line 306
    :try_start_0
    const-string v22, "migrated"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 308
    .local v8, "cr":Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_1

    aget-object v20, v7, v11

    .line 309
    .local v20, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v8, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 310
    .local v21, "value":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 311
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 315
    .end local v20    # "validSetting":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_1
    const-string v22, "migrated"

    const-string/jumbo v23, "true"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    const-string v22, "LockSettingsService"

    const-string v23, "Migrated lock settings to new location"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_2
    const-string v22, "migrated_user_specific"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_7

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 322
    .local v16, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 323
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v19

    .line 324
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v17, 0x0

    .local v17, "user":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 326
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 327
    .local v18, "userId":I
    const-string v5, "lock_screen_owner_info"

    .line 328
    .local v5, "OWNER_INFO":Ljava/lang/String;
    const-string v22, "lock_screen_owner_info"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 329
    .local v14, "ownerInfo":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 330
    const-string v22, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    const-string v22, ""

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v14, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 337
    :cond_3
    const-string v6, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    .local v6, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string v22, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 341
    .local v12, "ivalue":I
    if-eqz v12, :cond_5

    const/4 v10, 0x1

    .line 342
    .local v10, "enabled":Z
    :goto_2
    const-string v24, "lock_screen_owner_info_enabled"

    if-eqz v10, :cond_6

    const-wide/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    .end local v10    # "enabled":Z
    .end local v12    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string v22, "lock_screen_owner_info_enabled"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v8, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 324
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 341
    .restart local v12    # "ivalue":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 342
    .restart local v10    # "enabled":Z
    :cond_6
    const-wide/16 v22, 0x0

    goto :goto_3

    .line 343
    .end local v10    # "enabled":Z
    .end local v12    # "ivalue":I
    :catch_0
    move-exception v9

    .line 345
    .local v9, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 346
    const-string v22, "lock_screen_owner_info_enabled"

    const-wide/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 355
    .end local v5    # "OWNER_INFO":Ljava/lang/String;
    .end local v6    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v14    # "ownerInfo":Ljava/lang/String;
    .end local v16    # "um":Landroid/os/UserManager;
    .end local v17    # "user":I
    .end local v18    # "userId":I
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v15

    .line 356
    .local v15, "re":Landroid/os/RemoteException;
    const-string v22, "LockSettingsService"

    const-string v23, "Unable to migrate old data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .end local v15    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .line 352
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "um":Landroid/os/UserManager;
    .restart local v17    # "user":I
    .restart local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string v22, "migrated_user_specific"

    const-string/jumbo v23, "true"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    const-string v22, "LockSettingsService"

    const-string v23, "Migrated per-user lock settings to new location"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 821
    const/4 v8, 0x0

    .line 822
    .local v8, "cursor":Landroid/database/Cursor;
    move-object v10, p2

    .line 823
    .local v10, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 825
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 829
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 836
    :cond_0
    if-eqz v8, :cond_1

    .line 837
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 839
    :cond_1
    return-object v10

    .line 833
    :catch_0
    move-exception v9

    .line 834
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    if-eqz v8, :cond_1

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 837
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 836
    :cond_2
    throw v1
.end method

.method private updateKeystore(Ljava/lang/String;I)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v5, 0x14

    .line 484
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    .line 487
    .local v0, "keyStore":Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {v0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->password(Ljava/lang/String;I)Z

    .line 495
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 498
    .local v1, "policyRetry":I
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    if-eq v1, v2, :cond_0

    .line 499
    if-eqz v1, :cond_2

    .line 500
    sput v1, Lcom/android/server/LockSettingsService;->maxRetry:I

    .line 501
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v0, v2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->setMaxRetryCount(I)Z

    .line 502
    const-string v2, "MDPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max retry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :cond_2
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    if-eq v5, v2, :cond_0

    .line 504
    sput v5, Lcom/android/server/LockSettingsService;->maxRetry:I

    .line 505
    sget v2, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v0, v2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->setMaxRetryCount(I)Z

    .line 506
    const-string v2, "MDPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max retry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/LockSettingsService;->maxRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 772
    const/4 v2, 0x0

    .line 775
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 777
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    :try_start_1
    array-length v4, p2

    if-nez v4, :cond_2

    .line 778
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 787
    :goto_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    move-object v2, v3

    .line 797
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-void

    .line 781
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sget v6, Lcom/android/server/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 782
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 783
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 785
    :cond_3
    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 789
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_2
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-eqz v2, :cond_1

    .line 792
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 793
    :catch_1
    move-exception v1

    .line 794
    .local v1, "ioeClose":Ljava/io/IOException;
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot close file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 788
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "ioeClose":Ljava/io/IOException;
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 804
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 805
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 811
    :try_start_0
    const-string v1, "locksettings"

    const-string v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    const-string v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 814
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 818
    return-void

    .line 816
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 801
    return-void
.end method


# virtual methods
.method public checkBackupPin(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1234
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1235
    const/4 v6, 0x0

    .line 1238
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1239
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v8, v10, [B

    .line 1240
    .local v8, "stored":[B
    const/4 v10, 0x0

    array-length v11, v8

    invoke-virtual {v7, v8, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1241
    .local v1, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1242
    if-gtz v1, :cond_0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    move v5, v9

    .line 1264
    .end local v1    # "got":I
    .end local v8    # "stored":[B
    :goto_0
    return v5

    .line 1246
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "stored":[B
    :cond_0
    iget-object v10, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1247
    .local v2, "hash":[B
    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    .line 1248
    .local v5, "matched":Z
    if-eqz v5, :cond_1

    .line 1249
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->resetHard(I)Z

    .line 1250
    const-string v10, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v11, 0x0

    invoke-virtual {p0, v10, v11, v12, p2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    move-object v6, v7

    .line 1252
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1253
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v5    # "matched":Z
    .end local v8    # "stored":[B
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 1255
    goto :goto_0

    .line 1256
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1257
    .local v3, "ioe":Ljava/io/IOException;
    :goto_2
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    if-eqz v6, :cond_2

    .line 1260
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    move v5, v9

    .line 1264
    goto :goto_0

    .line 1261
    :catch_2
    move-exception v4

    .line 1262
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot close file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1256
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 1253
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1170
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1173
    if-nez p1, :cond_1

    .line 1174
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkFingerprintPasswordForKeystore(I)V

    .line 1203
    :cond_0
    :goto_0
    return v4

    .line 1181
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 1183
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1184
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1185
    if-gtz v1, :cond_2

    move v4, v7

    .line 1186
    goto :goto_0

    .line 1189
    :cond_2
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1190
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 1191
    .local v4, "matched":Z
    if-eqz v4, :cond_0

    .line 1192
    const-string v8, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v8, v9, v10, p2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1194
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkFingerprintPasswordForKeystore(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1198
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    move v4, v7

    .line 1203
    goto :goto_0

    .line 1200
    :catch_1
    move-exception v3

    .line 1201
    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkParentControlPassword([BI)Z
    .locals 9
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 695
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 699
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .local v3, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 702
    .local v4, "stored":[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 703
    .local v1, "got":I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 704
    if-gtz v1, :cond_0

    .line 714
    .end local v1    # "got":I
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .end local v4    # "stored":[B
    :goto_0
    return v5

    .line 708
    .restart local v1    # "got":I
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "stored":[B
    :cond_0
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 709
    .end local v1    # "got":I
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .end local v4    # "stored":[B
    :catch_0
    move-exception v0

    .line 710
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 713
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 620
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 623
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 624
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->checkPassword(Ljava/lang/String;I)Z

    move-result v5

    .line 661
    .local v5, "matched":Z
    :goto_0
    if-eqz v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 662
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 663
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    .line 668
    .end local v5    # "matched":Z
    :cond_0
    :goto_1
    return v5

    .line 627
    :cond_1
    const/4 v6, 0x0

    .line 630
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "r"

    invoke-direct {v7, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v8, v9, [B

    .line 632
    .local v8, "stored":[B
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 633
    .local v1, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 634
    if-lez v1, :cond_0

    .line 640
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordHashSize(I)I

    move-result v9

    sget v10, Lcom/android/server/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    if-ne v9, v10, :cond_2

    .line 641
    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;)[B

    move-result-object v2

    .line 645
    .local v2, "hash":[B
    :goto_2
    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    .restart local v5    # "matched":Z
    goto :goto_0

    .line 643
    .end local v2    # "hash":[B
    .end local v5    # "matched":Z
    :cond_2
    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .restart local v2    # "hash":[B
    goto :goto_2

    .line 646
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "stored":[B
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 649
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 650
    .local v3, "ioe":Ljava/io/IOException;
    :goto_4
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    if-eqz v6, :cond_0

    .line 653
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 654
    :catch_2
    move-exception v4

    .line 655
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 665
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "matched":Z
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 649
    .end local v5    # "matched":Z
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 646
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 592
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 595
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 597
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 598
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 599
    if-gtz v1, :cond_1

    move v4, v7

    .line 615
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :cond_0
    :goto_0
    return v4

    .line 603
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_1
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 605
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 606
    .local v4, "matched":Z
    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 610
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 611
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    move v4, v7

    .line 615
    goto :goto_0

    .line 612
    :catch_1
    move-exception v3

    .line 613
    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1527
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1530
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 1532
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1533
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1534
    if-gtz v1, :cond_0

    .line 1546
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 1538
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1539
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1540
    .local v4, "matched":Z
    goto :goto_0

    .line 1541
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1544
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1545
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1577
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1581
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 1583
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1584
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1585
    if-gtz v1, :cond_0

    .line 1597
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 1589
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1590
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1591
    .local v4, "matched":Z
    goto :goto_0

    .line 1592
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1594
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1595
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1420
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1423
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 1425
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1426
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1427
    if-gtz v1, :cond_0

    .line 1439
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 1431
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1432
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1433
    .local v4, "matched":Z
    goto :goto_0

    .line 1434
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1437
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1438
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1477
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1480
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 1482
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1483
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1484
    if-gtz v1, :cond_0

    .line 1497
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 1488
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 1490
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1491
    .local v4, "matched":Z
    goto :goto_0

    .line 1492
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1495
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1496
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1370
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1373
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 1375
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1376
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1377
    if-gtz v1, :cond_0

    .line 1389
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 1381
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1382
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1383
    .local v4, "matched":Z
    goto :goto_0

    .line 1384
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1387
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1388
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkSKTPassword(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1298
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1299
    const/4 v6, 0x0

    .line 1302
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockSKTPasswordFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "r"

    invoke-direct {v7, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1303
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v8, v9, [B

    .line 1304
    .local v8, "stored":[B
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1305
    .local v1, "got":I
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1306
    if-gtz v1, :cond_1

    move-object v6, v7

    .line 1324
    .end local v1    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "stored":[B
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return v5

    .line 1310
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "stored":[B
    :cond_1
    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1311
    .local v2, "hash":[B
    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v5

    .local v5, "matched":Z
    move-object v6, v7

    .line 1312
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1313
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v5    # "matched":Z
    .end local v8    # "stored":[B
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1316
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1317
    .local v3, "ioe":Ljava/io/IOException;
    :goto_2
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    if-eqz v6, :cond_0

    .line 1320
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1321
    :catch_2
    move-exception v4

    .line 1322
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1316
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 1313
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public checkSignatureBackupPin([BI)Z
    .locals 11
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1041
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1042
    const/4 v4, 0x0

    .line 1045
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1046
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 1047
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1048
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1049
    if-gtz v1, :cond_1

    move-object v4, v5

    .line 1065
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return v7

    .line 1053
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_1
    invoke-static {v6, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1054
    .end local v1    # "got":I
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1057
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 1058
    .local v2, "ioe":Ljava/io/IOException;
    :goto_2
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    if-eqz v4, :cond_0

    .line 1061
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1062
    :catch_2
    move-exception v3

    .line 1063
    .local v3, "ioeClose":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot close file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1057
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 1054
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 414
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getLockPasswordHashSize(I)I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 957
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 958
    const/4 v4, 0x0

    .line 961
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 962
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v3, v7

    .line 963
    .local v3, "length":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 976
    .end local v3    # "length":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    return v3

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 967
    goto :goto_0

    .line 968
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 969
    .local v1, "ioe":Ljava/io/IOException;
    :goto_2
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-eqz v4, :cond_0

    .line 972
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_3
    move v3, v6

    .line 976
    goto :goto_0

    .line 973
    :catch_2
    move-exception v2

    .line 974
    .local v2, "ioeClose":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot close file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 968
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 965
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 423
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getParentControlPasswordHashSize(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v4, -0x1

    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 729
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .local v3, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v2, v5

    .line 732
    .local v2, "length":I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 739
    .end local v2    # "length":I
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    return v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 736
    goto :goto_0

    .line 737
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 738
    .local v1, "ioe":Ljava/io/IOException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 739
    goto :goto_0
.end method

.method public getSignatureInfo(I)[B
    .locals 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSignatureInfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1073
    const/4 v6, 0x0

    .line 1076
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1077
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    if-eqz v7, :cond_5

    .line 1078
    const/16 v10, 0x58

    :try_start_1
    new-array v9, v10, [B

    .line 1079
    .local v9, "settings":[B
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v8, v10

    .line 1084
    .local v8, "savedSettingsLength":I
    const/16 v10, 0x54

    if-ne v8, v10, :cond_2

    .line 1085
    const-string v10, "LockSettingsService"

    const-string v11, "Read old signature lock settings"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    new-array v5, v8, [B

    .line 1088
    .local v5, "prev":[B
    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1091
    .local v1, "got":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v10, 0x24

    if-ge v2, v10, :cond_0

    .line 1092
    aget-byte v10, v5, v2

    aput-byte v10, v9, v2

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    :cond_0
    const/16 v2, 0x24

    :goto_1
    const/16 v10, 0x28

    if-ge v2, v10, :cond_1

    .line 1096
    const/4 v10, 0x0

    aput-byte v10, v9, v2

    .line 1095
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1098
    :cond_1
    const/16 v2, 0x28

    :goto_2
    const/16 v10, 0x58

    if-ge v2, v10, :cond_3

    .line 1099
    add-int/lit8 v10, v2, -0x4

    aget-byte v10, v5, v10

    aput-byte v10, v9, v2

    .line 1098
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1102
    .end local v1    # "got":I
    .end local v2    # "i":I
    .end local v5    # "prev":[B
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1104
    .restart local v1    # "got":I
    :cond_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1105
    if-gtz v1, :cond_4

    .line 1106
    const/4 v9, 0x0

    .end local v9    # "settings":[B
    move-object v6, v7

    .line 1122
    .end local v1    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    return-object v9

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "savedSettingsLength":I
    .restart local v9    # "settings":[B
    :cond_4
    move-object v6, v7

    .line 1108
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 1110
    .end local v1    # "got":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .end local v9    # "settings":[B
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_5
    const/4 v9, 0x0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_4
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v9, 0x0

    goto :goto_3

    .line 1114
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1115
    .local v3, "ioe":Ljava/io/IOException;
    :goto_5
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    if-eqz v6, :cond_6

    .line 1118
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1122
    :cond_6
    :goto_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1119
    :catch_2
    move-exception v4

    .line 1120
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot close file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1114
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1111
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 431
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveBackupPin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1291
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveFingerprintPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1210
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveParentControlPassword(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 721
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 465
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    .local v0, "result":Z
    :goto_0
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    .line 466
    goto :goto_0

    .line 469
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .restart local v0    # "result":Z
    :goto_1
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public havePattern(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModeBackupPin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1565
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModeFingerprintPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1604
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModePassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1458
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModePattern(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1516
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePersonalModePin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1409
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSKTPassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1352
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockSKTPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSignature(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1004
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSignatureBackupPin(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 384
    invoke-static {}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    move-result-object v0

    .line 385
    .local v0, "keyStore":Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->isUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->lock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 748
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 750
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 754
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 758
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 760
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 763
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 764
    const-string v2, "locksettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 765
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 769
    return-void

    .line 767
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 393
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    return-void

    .line 393
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1270
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1271
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1272
    return-void
.end method

.method public setLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1152
    if-nez p1, :cond_1

    .line 1153
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    .line 1158
    :goto_0
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "password == null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_1
    return-void

    .line 1156
    :cond_0
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_0

    .line 1162
    :cond_1
    const-string v0, "LockSettingsService"

    const-string v1, "setLockFingerprintPassword"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1165
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public setLockParentControlPassword([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 688
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 690
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 691
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 569
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 570
    .local v1, "versionInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 572
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    invoke-virtual {v0, p2, p1}, Landroid/os/PersonaManager;->savePasswordInTima(ILjava/lang/String;)Z

    .line 579
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->updateKeystore(Ljava/lang/String;I)V

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 584
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 536
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLockPattern : maybeUpdateKeystore(pattern = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 538
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : maybeUpdateKeystore()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 542
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : PERSONA_SERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 545
    .local v1, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v1, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : savePasswordInTima"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v1, p2, p1}, Landroid/os/PersonaManager;->savePasswordInTima(ILjava/lang/String;)Z

    .line 551
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :cond_0
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern : patternToHash"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 555
    .local v0, "hash":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 556
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern :pattern.length(0) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 562
    :goto_0
    return-void

    .line 559
    :cond_1
    const-string v3, "LockSettingsService"

    const-string v4, "setLockPattern :keyStore.reset() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setLockSKTPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1330
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1332
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockSKTPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1333
    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 400
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 401
    return-void
.end method

.method public setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1571
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1572
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1573
    return-void
.end method

.method public setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1522
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1523
    return-void
.end method

.method public setPersonalModeLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1414
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1415
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1416
    return-void
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1463
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1465
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 1468
    .local v0, "hash":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1469
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1473
    :goto_0
    return-void

    .line 1471
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setPersonalModeLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1364
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1365
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1366
    return-void
.end method

.method public setSignatureBackupPin([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1036
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1037
    return-void
.end method

.method public setSignatureInfo([BI)V
    .locals 3
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1014
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignatureInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1017
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSignatureFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 1018
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 407
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 300
    return-void
.end method
