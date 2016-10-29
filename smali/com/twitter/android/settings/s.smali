.class Lcom/twitter/android/settings/s;
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
.field final synthetic a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/twitter/android/settings/s;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 269
    iput-wide p2, p0, Lcom/twitter/android/settings/s;->b:J

    .line 270
    iput-object p4, p0, Lcom/twitter/android/settings/s;->c:Ljava/lang/String;

    .line 271
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/twitter/android/settings/s;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/twitter/android/settings/s;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;->b(Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;)Lcom/twitter/android/settings/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/settings/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/settings/s;->d:Ljava/lang/String;

    .line 279
    new-instance v1, Lcom/twitter/library/client/l;

    iget-wide v2, p0, Lcom/twitter/android/settings/s;->b:J

    invoke-direct {v1, v0, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "launcher_icon_badge_behavior"

    iget-object v2, p0, Lcom/twitter/android/settings/s;->d:Ljava/lang/String;

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Lcom/twitter/badge/a;

    iget-object v1, p0, Lcom/twitter/android/settings/s;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    .line 288
    invoke-virtual {v1}, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/badge/a;-><init>([Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/twitter/android/settings/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/badge/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/twitter/android/settings/s;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->b(Landroid/content/Context;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/s;->a:Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/s;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/s;->a(Ljava/lang/Void;)V

    return-void
.end method
