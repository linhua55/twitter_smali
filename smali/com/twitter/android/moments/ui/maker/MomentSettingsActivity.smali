.class public Lcom/twitter/android/moments/ui/maker/MomentSettingsActivity;
.super Lcom/twitter/android/settings/BaseAccountSettingsActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/MomentSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/MomentSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/dg;->a(Landroid/content/Intent;)Lcom/twitter/android/moments/ui/maker/dg;

    .line 22
    :goto_0
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/MomentSettingsActivity;->addPreferencesFromResource(I)V

    .line 23
    invoke-static {p0}, Lcom/twitter/android/moments/ui/maker/bg;->a(Landroid/preference/PreferenceActivity;)Lcom/twitter/android/moments/ui/maker/bg;

    .line 24
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/dg;->a()Lcom/twitter/android/moments/ui/maker/dg;

    goto :goto_0
.end method
