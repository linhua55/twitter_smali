.class public Lcom/twitter/android/AppGraphSettingsActivity;
.super Lcom/twitter/android/client/TwitterPreferenceActivity;
.source "Twttr"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;-><init>()V

    return-void
.end method

.method private a(ZZI)V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "allow_app_graph"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AppGraphSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 90
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 91
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    if-lez p3, :cond_0

    .line 93
    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/library/service/x;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/twitter/android/client/TwitterPreferenceActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 102
    if-ne p2, v7, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/twitter/android/AppGraphSettingsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 104
    new-instance v2, Lcom/twitter/library/client/l;

    .line 105
    invoke-virtual {p0}, Lcom/twitter/android/AppGraphSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 106
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    check-cast p1, Lbts;

    invoke-virtual {p1}, Lbts;->g()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v3, "app_graph_status"

    .line 110
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 109
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 113
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "undetermined"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    :cond_0
    const v0, 0x7f0a006a

    invoke-direct {p0, v6, v6, v0}, Lcom/twitter/android/AppGraphSettingsActivity;->a(ZZI)V

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 110
    :cond_2
    const-string/jumbo v0, "undetermined"

    goto :goto_0

    .line 117
    :cond_3
    const-string/jumbo v0, "optin"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    invoke-direct {p0, v7, v0, v6}, Lcom/twitter/android/AppGraphSettingsActivity;->a(ZZI)V

    goto :goto_1

    .line 121
    :cond_4
    const v0, 0x7f0a0069

    invoke-direct {p0, v6, v6, v0}, Lcom/twitter/android/AppGraphSettingsActivity;->a(ZZI)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AppGraphSettingsActivity;->e:Lcom/twitter/android/client/c;

    .line 35
    const v0, 0x7f0a0779

    invoke-virtual {p0, v0}, Lcom/twitter/android/AppGraphSettingsActivity;->setTitle(I)V

    .line 36
    invoke-virtual {p0}, Lcom/twitter/android/AppGraphSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "AppGraphSettingsActivity_account_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 39
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/twitter/android/AppGraphSettingsActivity;->addPreferencesFromResource(I)V

    .line 41
    new-instance v2, Lcom/twitter/library/client/l;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v0, "app_graph_status"

    const-string/jumbo v1, "undetermined"

    .line 42
    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "allow_app_graph"

    invoke-virtual {p0, v1}, Lcom/twitter/android/AppGraphSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    sget-object v1, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v1}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twitter/library/api/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const v0, 0x7f0a0068

    invoke-direct {p0, v4, v4, v0}, Lcom/twitter/android/AppGraphSettingsActivity;->a(ZZI)V

    .line 59
    :goto_0
    const-string/jumbo v0, "app_graph_learn_more"

    invoke-virtual {p0, v0}, Lcom/twitter/android/AppGraphSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/WebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f0a0b12

    .line 60
    invoke-virtual {p0, v2}, Lcom/twitter/android/AppGraphSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 61
    return-void

    .line 51
    :cond_0
    new-instance v1, Lbts;

    invoke-virtual {p0}, Lcom/twitter/android/AppGraphSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/AppGraphSettingsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbts;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    invoke-virtual {p0, v1, v5}, Lcom/twitter/android/AppGraphSettingsActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 53
    const-string/jumbo v1, "undetermined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const v0, 0x7f0a006a

    invoke-direct {p0, v4, v4, v0}, Lcom/twitter/android/AppGraphSettingsActivity;->a(ZZI)V

    goto :goto_0

    .line 56
    :cond_1
    const-string/jumbo v1, "optin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v5, v0, v4}, Lcom/twitter/android/AppGraphSettingsActivity;->a(ZZI)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    const-string/jumbo v2, "allow_app_graph"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "optin"

    .line 81
    :goto_1
    invoke-static {p0}, Lcom/twitter/library/client/v;->a(Landroid/content/Context;)Lcom/twitter/library/client/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/v;->a(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v0, "optout"

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/AppGraphSettingsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/twitter/android/AppGraphSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 70
    :cond_0
    return-void
.end method
