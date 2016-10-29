.class public Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;
.super Lcom/twitter/android/settings/BaseAccountSettingsActivity;
.source "Twttr"


# instance fields
.field private b:Z

.field private c:Z

.field private f:I

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->f:I

    return p1
.end method

.method static synthetic a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->h:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->f:I

    return v0
.end method

.method static synthetic f(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->I:J

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->addPreferencesFromResource(I)V

    .line 43
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->b:Z

    .line 45
    const-string/jumbo v0, "sync_data"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    .line 46
    iget-object v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a07fd

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 47
    iget-object v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->g:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a07fc

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 49
    const-string/jumbo v0, "polling_interval"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->h:Landroid/preference/ListPreference;

    .line 50
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onStart()V

    .line 55
    new-instance v0, Lcom/twitter/android/settings/p;

    iget-wide v2, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->I:J

    iget-object v1, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/twitter/android/settings/p;-><init>(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onStop()V

    .line 61
    new-instance v0, Lcom/twitter/android/settings/q;

    iget-wide v2, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->I:J

    iget-object v1, p0, Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/twitter/android/settings/q;-><init>(Lcom/twitter/android/settings/NewNotificationsAdvancedSettingsActivity;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
