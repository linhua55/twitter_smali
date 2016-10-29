.class public abstract Lcom/google/android/gcm/GCMBaseIntentService;
.super Landroid/app/IntentService;
.source "Twttr"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/Random;

.field private static final c:Ljava/lang/String;

.field private static d:I

.field private static e:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lcom/google/android/gcm/GCMBaseIntentService;

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->a:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/util/Random;

    .line 65
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/util/Random;

    .line 66
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->c:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->d:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "DynamicSenderIds"

    invoke-static {v0}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 96
    iput-object p2, p0, Lcom/google/android/gcm/GCMBaseIntentService;->f:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/android/gcm/GCMBaseIntentService;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GCMIntentService-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/gcm/GCMBaseIntentService;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/gcm/GCMBaseIntentService;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Intent service name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/android/gcm/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 250
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 253
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 254
    const/4 v2, 0x1

    const-string/jumbo v3, "GCM_LIB"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    .line 256
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v1, "Acquiring wakelock"

    invoke-static {v0, v1}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 259
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    return-void

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 264
    .line 266
    const-string/jumbo v0, "unregistered"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/gcm/c;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/c;

    move-result-object v0

    .line 269
    if-nez v2, :cond_2

    .line 270
    iget-object v3, p0, Lcom/google/android/gcm/GCMBaseIntentService;->f:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/gcm/c;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gcm/GCMScribeReporter;->a(Ljava/lang/String;)V

    .line 274
    invoke-static {p1}, Lcom/google/android/gcm/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-static {v3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 276
    invoke-static {v0, v3}, Lcom/google/android/gcm/GCMScribeReporter;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :cond_0
    :goto_0
    const-string/jumbo v3, "GCMBaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRegistration: registrationId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", unregistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz v0, :cond_3

    .line 291
    invoke-static {p1}, Lcom/google/android/gcm/b;->l(Landroid/content/Context;)V

    .line 292
    invoke-static {p1, v0}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    :cond_1
    :goto_1
    return-void

    .line 279
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/c;->a()V

    move-object v0, v1

    .line 280
    invoke-static {}, Lcom/google/android/gcm/GCMScribeReporter;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 283
    :goto_2
    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    .line 284
    invoke-static {}, Lcom/google/android/gcm/GCMScribeReporter;->b()V

    goto :goto_0

    .line 298
    :cond_3
    if-eqz v2, :cond_4

    .line 300
    invoke-static {p1}, Lcom/google/android/gcm/b;->l(Landroid/content/Context;)V

    .line 301
    invoke-static {p1}, Lcom/google/android/gcm/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_4
    const-string/jumbo v0, "GCMBaseIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Registration error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    invoke-static {p1}, Lcom/google/android/gcm/b;->m(Landroid/content/Context;)I

    move-result v1

    .line 311
    div-int/lit8 v0, v1, 0x2

    sget-object v3, Lcom/google/android/gcm/GCMBaseIntentService;->b:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 312
    const-string/jumbo v0, "GCMBaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling registration retry, backoff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    sget-object v4, Lcom/google/android/gcm/a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v4, "unregistered"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v2, "token"

    sget-object v4, Lcom/google/android/gcm/GCMBaseIntentService;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 318
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 319
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 321
    const v0, 0x36ee80

    if-ge v1, v0, :cond_1

    .line 322
    mul-int/lit8 v0, v1, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 326
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected a()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sender id not set on constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->f:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract b(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 240
    :goto_0
    return-void

    .line 181
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 183
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_2
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_1
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 232
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Releasing wakelock"

    invoke-static {v0, v2}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 238
    :goto_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 183
    :sswitch_0
    :try_start_2
    const-string/jumbo v3, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 185
    :pswitch_0
    invoke-static {v1}, Lcom/google/android/gcm/b;->e(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0, v1, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 229
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_3
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_a

    .line 232
    const-string/jumbo v2, "GCMBaseIntentService"

    const-string/jumbo v3, "Releasing wakelock"

    invoke-static {v2, v3}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 238
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    throw v0

    .line 190
    :pswitch_1
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 191
    if-nez v0, :cond_4

    .line 229
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_5
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 232
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Releasing wakelock"

    invoke-static {v0, v2}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 238
    :goto_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 236
    :cond_3
    :try_start_6
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Wakelock reference is null"

    invoke-static {v0, v2}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    .line 194
    :cond_4
    :try_start_7
    new-instance v2, Lcom/twitter/library/platform/notifications/f;

    invoke-direct {v2, v0}, Lcom/twitter/library/platform/notifications/f;-><init>(Landroid/os/Bundle;)V

    .line 195
    const-string/jumbo v3, "deleted_messages"

    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/f;->d()I

    move-result v0

    .line 197
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMScribeReporter;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 199
    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 204
    :pswitch_2
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 207
    const-string/jumbo v1, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received invalid token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 229
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_8
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    .line 232
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Releasing wakelock"

    invoke-static {v0, v2}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 238
    :goto_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 236
    :cond_6
    :try_start_9
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Wakelock reference is null"

    invoke-static {v0, v2}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    .line 211
    :cond_7
    :try_start_a
    invoke-static {v1}, Lcom/google/android/gcm/b;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    invoke-static {v1}, Lcom/google/android/gcm/b;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 214
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gcm/b;->b(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 236
    :cond_9
    :try_start_b
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Wakelock reference is null"

    invoke-static {v0, v2}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    :cond_a
    :try_start_c
    const-string/jumbo v2, "GCMBaseIntentService"

    const-string/jumbo v3, "Wakelock reference is null"

    invoke-static {v2, v3}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 238
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f07cc46 -> :sswitch_2
        0x15d8a480 -> :sswitch_1
        0x677b391c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
