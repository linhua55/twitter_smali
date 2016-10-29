.class Lcom/twitter/android/settings/r;
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
.field final synthetic a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/twitter/android/settings/r;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    iput-wide p2, p0, Lcom/twitter/android/settings/r;->b:J

    .line 231
    iput-object p4, p0, Lcom/twitter/android/settings/r;->c:Ljava/lang/String;

    .line 232
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/r;->d:Z

    .line 233
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    new-instance v0, Lcom/twitter/library/client/l;

    iget-object v1, p0, Lcom/twitter/android/settings/r;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    iget-wide v2, p0, Lcom/twitter/android/settings/r;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v1, "launcher_icon_badge_behavior"

    .line 238
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/r;->e:Ljava/lang/String;

    .line 240
    return-object v4
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/twitter/android/settings/r;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/r;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/twitter/android/settings/r;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/twitter/android/settings/r;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;->b(Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;)Lcom/twitter/android/settings/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/settings/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/ListPreference;->setValue(Ljava/lang/String;)V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/settings/r;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/settings/r;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;->a(Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/r;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/r;->a(Ljava/lang/Void;)V

    return-void
.end method
