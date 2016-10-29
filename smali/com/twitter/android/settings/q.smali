.class Lcom/twitter/android/settings/q;
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
.field final synthetic a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 148
    iput-wide p2, p0, Lcom/twitter/android/settings/q;->b:J

    .line 149
    iput-object p4, p0, Lcom/twitter/android/settings/q;->c:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 163
    iget-object v0, p0, Lcom/twitter/android/settings/q;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v3

    .line 164
    if-nez v3, :cond_0

    .line 205
    :goto_0
    return-object v12

    .line 168
    :cond_0
    iget-boolean v9, p0, Lcom/twitter/android/settings/q;->d:Z

    .line 169
    iget-boolean v10, p0, Lcom/twitter/android/settings/q;->e:Z

    .line 171
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    const-string/jumbo v4, "polling_interval"

    .line 172
    invoke-virtual {v0, v4}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 173
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->e(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)I

    move-result v0

    if-eq v0, v11, :cond_4

    move v7, v1

    .line 175
    :goto_1
    if-eqz v10, :cond_1

    .line 176
    sget-object v0, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v3, v0, v9}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Ljava/lang/String;Z)V

    .line 178
    if-eqz v9, :cond_5

    .line 179
    const-string/jumbo v0, "settings::::enable_sync"

    .line 183
    :goto_2
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v4}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->f(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->b(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Z

    move-result v5

    .line 188
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 189
    const-string/jumbo v0, "interval"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    new-instance v6, Lcom/twitter/library/provider/b;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 193
    invoke-static {v8}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/settings/q;->b:J

    .line 194
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    .line 195
    invoke-virtual {v6}, Lcom/twitter/library/provider/b;->a()V

    .line 198
    if-nez v7, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    if-eqz v9, :cond_3

    .line 199
    invoke-static {v8}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0, v9}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;Z)Z

    .line 203
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0, v11}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;I)I

    goto/16 :goto_0

    :cond_4
    move v7, v2

    .line 173
    goto :goto_1

    .line 181
    :cond_5
    const-string/jumbo v0, "settings::::disable_sync"

    goto :goto_2
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/q;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/q;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/q;->d:Z

    .line 156
    iget-object v0, p0, Lcom/twitter/android/settings/q;->a:Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->d(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/twitter/android/settings/q;->d:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/settings/q;->e:Z

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
