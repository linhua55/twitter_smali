.class public Lcom/twitter/library/platform/TwitterDataSyncService;
.super Landroid/app/IntentService;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/twitter/library/platform/a;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".poll.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->a:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->b:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->c:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->d:Lcom/twitter/library/platform/a;

    .line 117
    sget-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->b:Ljava/util/Map;

    const-string/jumbo v1, "sync_account"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->b:Ljava/util/Map;

    const-string/jumbo v1, "on_poll_alarm_ev"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->b:Ljava/util/Map;

    const-string/jumbo v1, "update_alarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "SyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/library/platform/TwitterDataSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "update_alarm"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 305
    if-nez p3, :cond_0

    .line 313
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "instant_timeline_prefs"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "instant_timeline_prevent_home_sync"

    const/4 v2, 0x1

    .line 311
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 288
    invoke-static {p0}, Lcom/twitter/library/platform/TwitterDataSyncService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)Z

    .line 294
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 5

    .prologue
    .line 233
    invoke-static {p0, p1, p2}, Lcom/twitter/library/platform/TwitterDataSyncService;->c(Landroid/content/Context;J)J

    move-result-wide v0

    .line 234
    invoke-static {p0, p1, p2}, Lcom/twitter/library/platform/TwitterDataSyncService;->e(Landroid/content/Context;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    .line 210
    invoke-static {p3, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    .line 211
    invoke-static {p3, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 212
    invoke-static {p0}, Lcom/twitter/library/platform/TwitterDataSyncService;->c(Landroid/content/Context;)V

    .line 213
    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {p3, v1, p1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    :goto_0
    return v0

    .line 215
    :cond_0
    if-eqz p2, :cond_1

    .line 217
    invoke-static {p0}, Lcom/twitter/library/platform/TwitterDataSyncService;->c(Landroid/content/Context;)V

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/library/platform/TwitterDataSyncService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "sync_account"

    .line 219
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "account"

    .line 220
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "_data"

    .line 221
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 238
    const-string/jumbo v0, "last_activity_sync"

    invoke-static {p0, p1, p2, v0}, Lcom/twitter/library/platform/TwitterDataSyncService;->e(Landroid/content/Context;JLjava/lang/String;)V

    .line 239
    return-void
.end method

.method public static b(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 324
    if-nez p3, :cond_0

    .line 332
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "instant_timeline_prefs"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "instant_timeline_prevent_home_sync"

    .line 330
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 270
    sget-boolean v0, Lcom/twitter/library/platform/TwitterDataSyncService;->e:Z

    if-nez v0, :cond_0

    .line 271
    invoke-static {p0}, Lcom/twitter/library/platform/TwitterDataSyncService;->d(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;J)J
    .locals 3

    .prologue
    .line 242
    const-string/jumbo v0, "last_activity_sync"

    invoke-static {p0, p1, p2, v0}, Lcom/twitter/library/platform/TwitterDataSyncService;->d(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 275
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_sync"

    .line 277
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    return-void
.end method

.method public static c(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 344
    if-eqz p3, :cond_0

    new-instance v1, Lcom/twitter/library/client/l;

    const-string/jumbo v2, "instant_timeline_prefs"

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const-string/jumbo v2, "instant_timeline_prevent_home_sync"

    .line 346
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 344
    :cond_0
    return v0
.end method

.method private static d(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 282
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_sync"

    const-wide/16 v2, 0x0

    .line 283
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 282
    return-wide v0
.end method

.method private static d(Landroid/content/Context;JLjava/lang/String;)J
    .locals 5

    .prologue
    .line 254
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "activity_times"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 255
    const-wide/16 v2, 0x0

    invoke-virtual {v0, p3, v2, v3}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static d(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 246
    const-string/jumbo v0, "last_activity_push"

    invoke-static {p0, p1, p2, v0}, Lcom/twitter/library/platform/TwitterDataSyncService;->e(Landroid/content/Context;JLjava/lang/String;)V

    .line 247
    return-void
.end method

.method private static e(Landroid/content/Context;J)J
    .locals 3

    .prologue
    .line 250
    const-string/jumbo v0, "last_activity_push"

    invoke-static {p0, p1, p2, v0}, Lcom/twitter/library/platform/TwitterDataSyncService;->d(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static e(Landroid/content/Context;JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 259
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "activity_times"

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, p3, v2, v3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    .line 262
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 263
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->d:Lcom/twitter/library/platform/a;

    invoke-virtual {v0}, Lcom/twitter/library/platform/a;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 129
    sget-object v1, Lcom/twitter/library/platform/TwitterDataSyncService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->d:Lcom/twitter/library/platform/a;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/twitter/library/platform/a;

    invoke-virtual {p0}, Lcom/twitter/library/platform/TwitterDataSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/platform/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->d:Lcom/twitter/library/platform/a;

    .line 133
    :cond_0
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 143
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-object v0, Lcom/twitter/library/platform/TwitterDataSyncService;->b:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 148
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    new-instance v1, Lcom/twitter/library/platform/a;

    invoke-direct {v1, p0}, Lcom/twitter/library/platform/a;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    .line 156
    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 157
    const-string/jumbo v3, "_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 158
    invoke-virtual {v1, v0, v3, v2}, Lcom/twitter/library/platform/a;->a(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v1, Lcom/twitter/library/platform/a;

    invoke-direct {v1, p0}, Lcom/twitter/library/platform/a;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string/jumbo v0, "show_notif"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    const-string/jumbo v0, "fs_config"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    const-string/jumbo v0, "live_addressbook_sync"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string/jumbo v0, "messages"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    :cond_2
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 177
    invoke-virtual {v1, v0}, Lcom/twitter/library/platform/a;->a(Lcom/twitter/app/common/account/a;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    invoke-static {p0}, Lcom/twitter/library/platform/TwitterDataSyncService;->c(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v0

    sget-object v4, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 184
    :cond_4
    invoke-static {p0}, Lcom/twitter/library/platform/a;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 188
    :pswitch_2
    invoke-static {p0}, Lcom/twitter/library/platform/a;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
