.class public abstract Lcom/twitter/library/platform/notifications/PushRegistration;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final i:Landroid/os/Handler;

.field private static j:Z

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".c2dm.add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->a:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".c2dm.update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->b:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".c2dm.update_by_server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->c:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".c2dm.del"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->d:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".c2dm.registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->e:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".c2dm.error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->f:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->i:Landroid/os/Handler;

    .line 101
    sput-boolean v2, Lcom/twitter/library/platform/notifications/PushRegistration;->j:Z

    .line 102
    const-string/jumbo v0, ""

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->k:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;J)I
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/provider/ar;->a(J)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/google/android/gcm/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    sput-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->j:Z

    .line 365
    const-string/jumbo v0, ""

    sput-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->k:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;IZ)V
    .locals 11

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    invoke-static {v1, p1, p2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v6

    .line 173
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/twitter/library/platform/notifications/x;->a(Z)V

    .line 174
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 175
    new-instance v0, Lbqp;

    .line 176
    invoke-static {v1}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gcm/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lbqp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v10

    new-instance v2, Lcom/twitter/library/platform/notifications/z;

    move-object v3, v1

    move v4, v6

    move/from16 v5, p5

    move-object v6, p3

    move v7, p4

    move-wide v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/twitter/library/platform/notifications/z;-><init>(Landroid/content/Context;ZZLjava/lang/String;IJ)V

    invoke-virtual {v10, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 192
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 153
    new-instance v6, Lcom/twitter/library/platform/notifications/PushRegistration$DeviceLimitException;

    invoke-direct {v6, p4}, Lcom/twitter/library/platform/notifications/PushRegistration$DeviceLimitException;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/twitter/library/platform/notifications/ac;

    const/4 v5, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/platform/notifications/ac;-><init>(Landroid/content/Context;JLjava/lang/String;I)V

    .line 156
    invoke-virtual {v0, v6}, Lcom/twitter/library/platform/notifications/ac;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 157
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18

    .prologue
    .line 196
    sget-object v2, Lcom/twitter/library/platform/notifications/PushRegistration;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 200
    const-string/jumbo v2, "android_push_settings_check_in_success_interval_hours"

    const-wide/16 v6, 0x18

    invoke-static {v2, v6, v7}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v6, 0x36ee80

    mul-long v8, v2, v6

    .line 202
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v10

    .line 203
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 204
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v12

    .line 205
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v11

    .line 206
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 209
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v6

    .line 210
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-static {v5, v6, v7}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/x;->b()J

    move-result-wide v16

    add-long v16, v16, v8

    cmp-long v2, v16, v12

    if-ltz v2, :cond_2

    .line 213
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {v10, v6, v7}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 216
    new-instance v15, Lbqn;

    invoke-static {v5}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v15, v5, v2, v0, v1}, Lbqn;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/twitter/library/platform/notifications/aa;

    invoke-direct/range {v2 .. v7}, Lcom/twitter/library/platform/notifications/aa;-><init>(Ljava/util/Set;Ljava/lang/String;Landroid/content/Context;J)V

    .line 217
    invoke-virtual {v15, v2}, Lbqn;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/service/x;

    .line 230
    invoke-virtual {v2}, Lcom/twitter/library/service/x;->P()Lcom/twitter/library/service/aa;

    goto :goto_1

    .line 233
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 234
    invoke-static {v5, v8, v9}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;J)V

    .line 235
    const/4 v2, 0x1

    invoke-static {v5, v2}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;Z)V

    .line 237
    :cond_4
    sget-object v2, Lcom/twitter/library/platform/notifications/PushRegistration;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    .prologue
    .line 45
    invoke-static/range {p0 .. p6}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    sput-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->j:Z

    .line 360
    sput-object p0, Lcom/twitter/library/platform/notifications/PushRegistration;->k:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 301
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v6

    .line 302
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 303
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v7

    .line 304
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 305
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    .line 306
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v3, v4, v5}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v6, v4, v5}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 310
    new-instance v9, Lbqn;

    invoke-static {v3}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v0, v10, p1}, Lbqn;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/library/platform/notifications/ab;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/platform/notifications/ab;-><init>(Ljava/util/Set;Ljava/lang/String;Landroid/content/Context;J)V

    .line 311
    invoke-virtual {v9, v0}, Lbqn;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/x;

    .line 325
    invoke-virtual {v0}, Lcom/twitter/library/service/x;->P()Lcom/twitter/library/service/aa;

    goto :goto_0

    .line 327
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 331
    const-string/jumbo v0, "android_push_settings_check_in_success_interval_hours"

    const-wide/16 v4, 0x18

    invoke-static {v0, v4, v5}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    .line 334
    invoke-static {p0, v4, v5}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;J)V

    .line 335
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;Z)V

    .line 337
    :cond_2
    sget-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/twitter/library/platform/notifications/PushRegistration;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 339
    sget-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->j:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->k:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    sget-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->i:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/library/platform/notifications/ad;

    sget v2, Lbkb;->preference_notification_success:I

    invoke-direct {v1, v3, v2}, Lcom/twitter/library/platform/notifications/ad;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    invoke-static {}, Lcom/twitter/library/platform/notifications/PushRegistration;->a()V

    .line 343
    :cond_3
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "push_return_code"

    .line 376
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_toast_message"

    .line 377
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "account"

    .line 378
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "requested_push_flags"

    .line 379
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "applied_push_flags"

    .line 380
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 381
    sget-object v1, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 369
    sget-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->j:Z

    return v0
.end method

.method public static b(Landroid/content/Context;J)Z
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 241
    invoke-static {p0}, Lcom/google/android/gcm/b;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 242
    invoke-static {p0, p1, p2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/x;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 346
    sget-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 347
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/twitter/library/platform/notifications/PushRegistration;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/twitter/library/platform/notifications/PushRegistration;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->i:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/library/platform/notifications/ad;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbkb;->preference_notification_error:I

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/platform/notifications/ad;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    invoke-static {}, Lcom/twitter/library/platform/notifications/PushRegistration;->a()V

    .line 353
    :cond_0
    new-instance v0, Lcom/twitter/library/platform/notifications/ac;

    invoke-direct {v0}, Lcom/twitter/library/platform/notifications/ac;-><init>()V

    const-string/jumbo v1, "Error id"

    .line 354
    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/platform/notifications/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/platform/notifications/PushRegistration$DebugNotificationException;

    const-string/jumbo v2, "onError in PushService"

    invoke-direct {v1, v2}, Lcom/twitter/library/platform/notifications/PushRegistration$DebugNotificationException;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 356
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 130
    const-class v1, Lcom/twitter/library/platform/notifications/PushRegistration;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 132
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/google/android/gcm/b;->b(Landroid/content/Context;)V

    .line 136
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->m:Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->l:Z

    .line 142
    :cond_1
    sget-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const/4 v0, 0x0

    :try_start_3
    sput-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->m:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;J)Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/google/android/gcm/b;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p0, p1, p2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    sget-object v0, Lcom/twitter/library/platform/notifications/PushRegistration;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    sget-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->l:Z

    if-eqz v0, :cond_2

    .line 258
    sget-boolean v0, Lcom/twitter/library/platform/notifications/PushRegistration;->m:Z

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should not call PushService#register if PushService#isEnabled isn\'t true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "49625052041"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gcm/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 268
    :cond_1
    return-void

    .line 263
    :cond_2
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should call PushService#isEnabled before PushService#register"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;J)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/google/android/gcm/b;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-static {p0, p1, p2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/platform/notifications/x;->a(Z)V

    .line 284
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-static {v1}, Lcom/twitter/library/platform/notifications/PushRegistration;->d(Landroid/content/Context;)V

    .line 284
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/b;->c(Landroid/content/Context;)V

    .line 297
    return-void
.end method

.method public static e(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 291
    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    new-instance v3, Lbqo;

    .line 292
    invoke-static {v0}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lbqo;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 293
    return-void
.end method
