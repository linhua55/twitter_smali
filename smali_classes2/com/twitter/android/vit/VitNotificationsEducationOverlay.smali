.class public Lcom/twitter/android/vit/VitNotificationsEducationOverlay;
.super Lcom/twitter/android/dialog/TakeoverDialogFragment;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-static {p1}, Lcom/twitter/android/util/aj;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "vit_notifications_redesign_education_prompt_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/twitter/library/client/l;

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v2, "vit_notifications_edu"

    .line 74
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/android/vit/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/vit/b;-><init>(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 28
    invoke-virtual {v0, v1}, Lcom/twitter/android/vit/b;->a(Landroid/widget/ImageView$ScaleType;)Lcom/twitter/android/dialog/q;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a09a2

    .line 29
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->b(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a09a4

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->c(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a09a3

    .line 31
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->d(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f020343

    .line 32
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->a(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    .line 33
    invoke-virtual {v0}, Lcom/twitter/android/dialog/r;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;

    .line 34
    invoke-virtual {v0, p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 35
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->l()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 81
    invoke-virtual {v1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "vit_notifications_edu"

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 84
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->b()V

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "notifications::vit_edu_prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ":impression"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a([Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->c()V

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a()V

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "notifications::vit_edu_prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ":dismiss"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a([Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->d()V

    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a()V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "notifications::vit_edu_prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "button:click"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a([Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected k()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->k()V

    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a()V

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "notifications::vit_edu_prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "settings:click"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a([Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->m()V

    .line 59
    return-void
.end method

.method m()V
    .locals 6

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->l()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/android/settings/NotificationsTimelineSettingsActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
