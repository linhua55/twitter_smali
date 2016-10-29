.class public Lcom/twitter/library/util/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;
.implements Lcom/twitter/library/client/bf;


# static fields
.field private static a:Lcom/twitter/library/util/x;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/library/client/bk;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/util/x;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bk;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bk;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/twitter/library/util/x;->b:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/twitter/library/util/x;->c:Lcom/twitter/library/client/bk;

    .line 62
    invoke-static {}, Lcal;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/util/x;->d:Z

    .line 63
    invoke-static {p0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 64
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/library/util/x;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcom/twitter/library/util/x;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/util/x;->a:Lcom/twitter/library/util/x;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/twitter/library/util/x;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/util/x;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/util/x;->a:Lcom/twitter/library/util/x;

    .line 52
    :cond_0
    sget-object v0, Lcom/twitter/library/util/x;->a:Lcom/twitter/library/util/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v1, "Write migrated UserSettings to Server"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/twitter/library/util/x;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 241
    invoke-static {v0, p1, p2, v2, v1}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)Lblv;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/twitter/library/service/t;

    invoke-direct {v1}, Lcom/twitter/library/service/t;-><init>()V

    invoke-virtual {v0, v1}, Lblv;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 243
    iget-object v1, p0, Lcom/twitter/library/util/x;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 244
    return-void
.end method

.method private a(Lcom/twitter/library/client/l;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    invoke-virtual {p1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "people_i_follow_migrated"

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "quality_filter_migrated"

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 255
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v1, "Migrated UserSettings written to Server"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/twitter/library/util/x;->d:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcal;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/twitter/library/util/x;->b()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/util/x;->d:Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/library/util/x;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcal;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/twitter/library/util/x;->c()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/util/x;->d:Z

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method a(Lcom/twitter/library/client/l;Lcom/twitter/model/account/UserSettings;J)Z
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    const-string/jumbo v2, "people_i_follow_migrated"

    invoke-virtual {p1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const-string/jumbo v1, "NotifSettingsMigrator"

    const-string/jumbo v2, "PeopleIFollow already migrated"

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return v0

    .line 156
    :cond_0
    const-string/jumbo v2, "notifications_follow_only"

    invoke-virtual {p1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 158
    iget-object v3, p2, Lcom/twitter/model/account/UserSettings;->A:Ljava/lang/String;

    const-string/jumbo v4, "following"

    invoke-static {v3, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 162
    invoke-virtual {p1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v4

    .line 163
    const-string/jumbo v5, "old_notification_tab_following_only"

    invoke-virtual {v4, v5, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    .line 166
    if-eqz v3, :cond_2

    .line 167
    if-nez v2, :cond_1

    .line 168
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v5, "notification_settings_migration:notifications_timeline:notification_timeline_settings:following_filter_enabled:skip"

    aput-object v5, v3, v0

    .line 169
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 170
    const-string/jumbo v2, "NotifSettingsMigrator"

    const-string/jumbo v3, "PeopleIFollow: Server ON, Local OFF"

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    const-string/jumbo v2, "notifications_follow_only"

    invoke-virtual {v4, v2, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    .line 173
    const-string/jumbo v2, "people_i_follow_migrated"

    invoke-virtual {v4, v2, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    .line 183
    :goto_1
    invoke-virtual {v4}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0

    .line 174
    :cond_2
    if-eqz v2, :cond_3

    .line 175
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v5, "notification_settings_migration:notifications_timeline:notification_timeline_settings:following_filter_enabled:on"

    aput-object v5, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 176
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v2, "PeopleIFollow: Server OFF, Local ON"

    invoke-static {v0, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "following"

    iput-object v0, p2, Lcom/twitter/model/account/UserSettings;->A:Ljava/lang/String;

    move v0, v1

    .line 178
    goto :goto_1

    .line 181
    :cond_3
    const-string/jumbo v2, "people_i_follow_migrated"

    invoke-virtual {v4, v2, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    goto :goto_1
.end method

.method public b()V
    .locals 6

    .prologue
    .line 70
    invoke-static {}, Lcal;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v1, "Migrate"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/twitter/library/util/x;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    new-instance v2, Lcom/twitter/library/client/l;

    iget-object v3, p0, Lcom/twitter/library/util/x;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 78
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 77
    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/twitter/library/util/x;->a(Lcom/twitter/library/client/l;Lcom/twitter/model/account/UserSettings;J)Z

    move-result v3

    .line 80
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 79
    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/twitter/library/util/x;->b(Lcom/twitter/library/client/l;Lcom/twitter/model/account/UserSettings;J)Z

    move-result v2

    .line 81
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/twitter/library/util/x;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    .line 86
    :cond_1
    return-void
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    .line 266
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 267
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 269
    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 270
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v1, "User has changed"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    new-instance v1, Lcom/twitter/library/client/l;

    iget-object v2, p0, Lcom/twitter/library/util/x;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-direct {p0, v1}, Lcom/twitter/library/util/x;->a(Lcom/twitter/library/client/l;)V

    goto :goto_0

    .line 277
    :cond_1
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v1, "Failed attempt to write UserSettings to Server"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Lcom/twitter/library/client/l;Lcom/twitter/model/account/UserSettings;J)Z
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 202
    const-string/jumbo v2, "quality_filter_migrated"

    invoke-virtual {p1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string/jumbo v1, "NotifSettingsMigrator"

    const-string/jumbo v2, "QualityFilter already migrated"

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return v0

    .line 207
    :cond_0
    const-string/jumbo v2, "quality_filter"

    invoke-virtual {p1, v2, v1}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 209
    iget-object v3, p2, Lcom/twitter/model/account/UserSettings;->z:Ljava/lang/String;

    const-string/jumbo v4, "enabled"

    invoke-static {v3, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 213
    invoke-virtual {p1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v4

    .line 214
    const-string/jumbo v5, "old_notifications_quality_filter"

    invoke-virtual {v4, v5, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    .line 217
    if-eqz v3, :cond_2

    .line 218
    if-nez v2, :cond_1

    .line 219
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v5, "notification_settings_migration:notifications_timeline:notification_timeline_settings:quality_filter_enabled:skip"

    aput-object v5, v3, v0

    .line 220
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 219
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 221
    const-string/jumbo v2, "NotifSettingsMigrator"

    const-string/jumbo v3, "QualityFilter: Server ON, Local OFF"

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_1
    const-string/jumbo v2, "quality_filter"

    invoke-virtual {v4, v2, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    .line 224
    const-string/jumbo v2, "quality_filter_migrated"

    invoke-virtual {v4, v2, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    .line 234
    :goto_1
    invoke-virtual {v4}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0

    .line 225
    :cond_2
    if-eqz v2, :cond_3

    .line 226
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v5, "notification_settings_migration:notifications_timeline:notification_timeline_settings:quality_filter_enabled:on"

    aput-object v5, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 227
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v2, "QualityFilter: Server OFF, Local ON"

    invoke-static {v0, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "enabled"

    iput-object v0, p2, Lcom/twitter/model/account/UserSettings;->z:Ljava/lang/String;

    move v0, v1

    .line 229
    goto :goto_1

    .line 232
    :cond_3
    const-string/jumbo v2, "quality_filter_migrated"

    invoke-virtual {v4, v2, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    goto :goto_1
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v0, p0, Lcom/twitter/library/util/x;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/twitter/library/client/l;

    iget-object v2, p0, Lcom/twitter/library/util/x;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 96
    invoke-virtual {p0}, Lcom/twitter/library/util/x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "NotifSettingsMigrator"

    const-string/jumbo v2, "Reset migration"

    invoke-static {v0, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "old_notification_tab_following_only"

    .line 100
    invoke-virtual {v1, v0, v6}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    const-string/jumbo v2, "old_notifications_quality_filter"

    .line 102
    invoke-virtual {v1, v2, v6}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 103
    invoke-virtual {v1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v1

    const-string/jumbo v3, "notifications_follow_only"

    .line 104
    invoke-virtual {v1, v3, v0}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "quality_filter"

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "people_i_follow_migrated"

    .line 106
    invoke-virtual {v0, v1, v6}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "quality_filter_migrated"

    .line 107
    invoke-virtual {v0, v1, v6}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "old_notification_tab_following_only"

    .line 108
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "old_notifications_quality_filter"

    .line 109
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 111
    iput-boolean v6, p0, Lcom/twitter/library/util/x;->d:Z

    .line 113
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/twitter/library/util/x;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 117
    new-instance v2, Lcom/twitter/library/client/l;

    iget-object v3, p0, Lcom/twitter/library/util/x;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 119
    const-string/jumbo v1, "people_i_follow_migrated"

    invoke-virtual {v2, v1, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "quality_filter_migrated"

    .line 120
    invoke-virtual {v2, v1, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :cond_0
    return v0
.end method
