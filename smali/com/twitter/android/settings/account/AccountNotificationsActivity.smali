.class public Lcom/twitter/android/settings/account/AccountNotificationsActivity;
.super Lcom/twitter/android/settings/BaseAccountSettingsActivity;
.source "Twttr"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Larn;


# instance fields
.field private b:Lcom/twitter/android/settings/ListPreference;

.field private c:Larf;

.field private f:Lcom/twitter/model/core/TwitterUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcss;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/account/AccountNotificationsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string/jumbo v1, "extra_account_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "AccountNotificationActivity_profile_account_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "AccountNotificationActivity_profile_username"

    invoke-virtual {p1}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "pc"

    invoke-static {p2}, Lcss;->a(Lcss;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method private a(ZI)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    const-string/jumbo v1, "AccountNotificationActivity_notifications_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string/jumbo v1, "AccountNotificationActivity_profile_account_user"

    iget-object v2, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->f:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "AccountNotificationActivity_friendship"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/model/core/TwitterUser;Lcss;JI)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcss;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->b:Lcom/twitter/android/settings/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/ListPreference;->setValue(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->b:Lcom/twitter/android/settings/ListPreference;

    invoke-virtual {v0, p1}, Lcom/twitter/android/settings/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->b:Lcom/twitter/android/settings/ListPreference;

    invoke-virtual {v0, p2}, Lcom/twitter/android/settings/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method protected al_()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->al_()V

    .line 99
    const-string/jumbo v0, "account_notif_presenter"

    iget-object v1, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    const-string/jumbo v0, "AccountNotificationActivity_profile_account_user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->f:Lcom/twitter/model/core/TwitterUser;

    .line 66
    const-string/jumbo v0, "AccountNotificationActivity_profile_username"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->addPreferencesFromResource(I)V

    .line 73
    const-string/jumbo v0, "account_notif"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/settings/ListPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->b:Lcom/twitter/android/settings/ListPreference;

    .line 74
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->b:Lcom/twitter/android/settings/ListPreference;

    invoke-virtual {v0, p0}, Lcom/twitter/android/settings/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string/jumbo v0, "account_notif_presenter"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larf;

    .line 77
    if-eqz v0, :cond_1

    .line 78
    iput-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-interface {v0, p0}, Larf;->a(Larn;)V

    .line 93
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-interface {v0, p0}, Larf;->a(Landroid/content/Context;)V

    .line 94
    return-void

    .line 80
    :cond_1
    const-string/jumbo v0, "pc"

    .line 81
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcss;->a([B)Lcss;

    move-result-object v0

    .line 82
    iget-wide v2, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->I:J

    invoke-static {p0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    .line 84
    new-instance v3, Larj;

    iget-object v4, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->f:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v3, v1, v2, v4, v0}, Larj;-><init>(Lcom/twitter/library/provider/dm;Lcom/twitter/library/client/bd;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    .line 87
    new-instance v0, Lare;

    invoke-direct {v0, v3}, Lare;-><init>(Lari;)V

    .line 89
    new-instance v1, Larg;

    invoke-direct {v1, v0}, Larg;-><init>(Lard;)V

    iput-object v1, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 129
    const-string/jumbo v1, "account_notif"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    iget-object v1, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-interface {v1, v2}, Larf;->a(I)Z

    move-result v1

    .line 133
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    iget-object v3, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->f:Lcom/twitter/model/core/TwitterUser;

    invoke-interface {v2, v3}, Larf;->a(Lcom/twitter/model/core/TwitterUser;)I

    move-result v2

    .line 135
    const/4 v3, -0x1

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->a(ZI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->setResult(ILandroid/content/Intent;)V

    move v0, v1

    .line 139
    :cond_1
    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onStart()V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-interface {v0, p0}, Larf;->a(Larn;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-virtual {p0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Larf;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onStop()V

    .line 112
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-virtual {p0}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Larf;->b(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 113
    iget-object v0, p0, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->c:Larf;

    invoke-interface {v0}, Larf;->a()V

    .line 114
    return-void
.end method
