.class Lcom/twitter/android/settings/p;
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
.field final synthetic a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Z

.field private f:I


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    iput-wide p2, p0, Lcom/twitter/android/settings/p;->b:J

    .line 76
    iput-object p4, p0, Lcom/twitter/android/settings/p;->c:Ljava/lang/String;

    .line 77
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/p;->d:Z

    .line 78
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 89
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->b(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-array v0, v7, [Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    iget-wide v4, p0, Lcom/twitter/android/settings/p;->b:J

    invoke-static {v1, v4, v5}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/p;->publishProgress([Ljava/lang/Object;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/GlobalDatabaseProvider;->c:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/settings/p;->b:J

    .line 95
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "interval"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    const/16 v0, 0x5a0

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 106
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_2
    iput v0, p0, Lcom/twitter/android/settings/p;->f:I

    .line 112
    iget-object v0, p0, Lcom/twitter/android/settings/p;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/p;->e:Z

    .line 114
    return-object v3
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/settings/p;->e:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    iget-boolean v0, p0, Lcom/twitter/android/settings/p;->d:Z

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f0a07fb

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->c(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Landroid/preference/ListPreference;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/settings/p;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    iget-boolean v1, p0, Lcom/twitter/android/settings/p;->e:Z

    invoke-static {v0, v1}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;Z)Z

    .line 134
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    iget v1, p0, Lcom/twitter/android/settings/p;->f:I

    invoke-static {v0, v1}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;I)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/p;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/p;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/settings/p;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/settings/p;->d:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 85
    return-void
.end method
