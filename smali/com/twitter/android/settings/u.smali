.class Lcom/twitter/android/settings/u;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/NotificationsActivity;

.field private final b:J

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/NotificationsActivity;J)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 224
    iput-wide p2, p0, Lcom/twitter/android/settings/u;->b:J

    .line 225
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NotificationsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 238
    iget-wide v4, p0, Lcom/twitter/android/settings/u;->b:J

    invoke-static {v4, v5}, Lcom/twitter/library/util/b;->a(J)Lcom/twitter/app/common/account/a;

    move-result-object v3

    .line 239
    if-nez v3, :cond_0

    .line 284
    :goto_0
    return-object v12

    .line 243
    :cond_0
    iget-boolean v9, p0, Lcom/twitter/android/settings/u;->c:Z

    .line 244
    iget-boolean v10, p0, Lcom/twitter/android/settings/u;->d:Z

    .line 246
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    const-string/jumbo v4, "polling_interval"

    .line 247
    invoke-virtual {v0, v4}, Lcom/twitter/android/settings/NotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 248
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->f:I

    if-eq v0, v11, :cond_4

    move v7, v1

    .line 250
    :goto_1
    if-eqz v10, :cond_1

    .line 251
    sget-object v0, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v3, v0, v9}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Ljava/lang/String;Z)V

    .line 253
    if-eqz v9, :cond_5

    .line 254
    const-string/jumbo v0, "settings::::enable_sync"

    .line 258
    :goto_2
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-static {v4}, Lcom/twitter/android/settings/NotificationsActivity;->a(Lcom/twitter/android/settings/NotificationsActivity;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-boolean v5, v0, Lcom/twitter/android/settings/NotificationsActivity;->b:Z

    .line 263
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 264
    const-string/jumbo v0, "interval"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    new-instance v6, Lcom/twitter/library/provider/b;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 268
    invoke-static {v8}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/settings/u;->b:J

    .line 269
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    .line 270
    invoke-virtual {v6}, Lcom/twitter/library/provider/b;->a()V

    .line 273
    if-nez v7, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    if-eqz v9, :cond_3

    .line 274
    invoke-static {v8}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iput-boolean v9, v0, Lcom/twitter/android/settings/NotificationsActivity;->c:Z

    .line 278
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iput v11, v0, Lcom/twitter/android/settings/NotificationsActivity;->f:I

    .line 280
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->j:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/u;->e:Ljava/lang/String;

    .line 281
    new-instance v0, Lcom/twitter/library/client/l;

    iget-wide v2, p0, Lcom/twitter/android/settings/u;->b:J

    invoke-direct {v0, v8, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "launcher_icon_badge_behavior"

    iget-object v2, p0, Lcom/twitter/android/settings/u;->e:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    goto/16 :goto_0

    :cond_4
    move v7, v2

    .line 248
    goto :goto_1

    .line 256
    :cond_5
    const-string/jumbo v0, "settings::::disable_sync"

    goto :goto_2
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 289
    new-instance v0, Lcom/twitter/badge/a;

    iget-object v1, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    .line 290
    invoke-virtual {v1}, Lcom/twitter/android/settings/NotificationsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/badge/a;-><init>([Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/twitter/android/settings/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/badge/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->b(Landroid/content/Context;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/u;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/u;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 230
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/u;->c:Z

    .line 231
    iget-object v0, p0, Lcom/twitter/android/settings/u;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->c:Z

    iget-boolean v1, p0, Lcom/twitter/android/settings/u;->c:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/settings/u;->d:Z

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
