.class Lcom/twitter/android/settings/t;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/NotificationsActivity;

.field private final b:J

.field private final c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/NotificationsActivity;J)V
    .locals 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    iput-wide p2, p0, Lcom/twitter/android/settings/t;->b:J

    .line 142
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/t;->c:Z

    .line 143
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->b:Z

    if-eqz v0, :cond_0

    .line 155
    new-array v0, v7, [Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-wide v4, p0, Lcom/twitter/android/settings/t;->b:J

    invoke-static {v1, v4, v5}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/t;->publishProgress([Ljava/lang/Object;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NotificationsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/GlobalDatabaseProvider;->c:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/settings/t;->b:J

    .line 159
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "interval"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 157
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 162
    const/16 v0, 0x5a0

    .line 164
    if-eqz v1, :cond_2

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 170
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_2
    iput v0, p0, Lcom/twitter/android/settings/t;->e:I

    .line 176
    iget-wide v0, p0, Lcom/twitter/android/settings/t;->b:J

    invoke-static {v0, v1}, Lcom/twitter/library/util/b;->a(J)Lcom/twitter/app/common/account/a;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/t;->d:Z

    .line 178
    new-instance v0, Lcom/twitter/library/client/l;

    iget-object v1, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-wide v4, p0, Lcom/twitter/android/settings/t;->b:J

    invoke-direct {v0, v1, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v1, "launcher_icon_badge_behavior"

    .line 179
    invoke-virtual {v0, v1, v3}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/t;->f:Ljava/lang/String;

    .line 181
    return-object v3
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NotificationsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->h:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/settings/t;->d:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-boolean v0, p0, Lcom/twitter/android/settings/t;->c:Z

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->h:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a07fb

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->i:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/twitter/android/settings/t;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-boolean v1, p0, Lcom/twitter/android/settings/t;->d:Z

    iput-boolean v1, v0, Lcom/twitter/android/settings/NotificationsActivity;->c:Z

    .line 201
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget v1, p0, Lcom/twitter/android/settings/t;->e:I

    iput v1, v0, Lcom/twitter/android/settings/NotificationsActivity;->f:I

    .line 205
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->g:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/twitter/android/settings/t;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->j:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/twitter/android/settings/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v1, p0, Lcom/twitter/android/settings/t;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/settings/NotificationsActivity;->a(Lcom/twitter/android/settings/NotificationsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/t;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/t;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/android/settings/t;->a:Lcom/twitter/android/settings/NotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/NotificationsActivity;->h:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/twitter/android/settings/t;->c:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 150
    return-void
.end method
