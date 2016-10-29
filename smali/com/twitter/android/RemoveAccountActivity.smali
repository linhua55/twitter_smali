.class public Lcom/twitter/android/RemoveAccountActivity;
.super Lcom/twitter/android/client/TwitterPreferenceActivity;
.source "Twttr"


# instance fields
.field a:Landroid/accounts/AccountAuthenticatorResponse;

.field private b:Z

.field private c:Lcom/twitter/android/mx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountActivity;->finish()V

    .line 64
    iget-boolean v0, p0, Lcom/twitter/android/RemoveAccountActivity;->b:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/RemoveAccountActivity;->moveTaskToBack(Z)Z

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/twitter/android/RemoveAccountActivity;->c()V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/RemoveAccountActivity;->a:Landroid/accounts/AccountAuthenticatorResponse;

    .line 33
    iput-boolean v5, p0, Lcom/twitter/android/RemoveAccountActivity;->b:Z

    .line 35
    const-string/jumbo v0, "RemoveAccountActivity_account_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 36
    const-string/jumbo v0, "RemoveAccountActivity_account_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {p0, v4}, Lcom/twitter/android/RemoveAccountActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    const-string/jumbo v0, "authenticator_response"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, "authenticator_response"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lcom/twitter/android/RemoveAccountActivity;->a:Landroid/accounts/AccountAuthenticatorResponse;

    .line 43
    :cond_0
    const-string/jumbo v0, "from_system_settings"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string/jumbo v0, "from_system_settings"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/RemoveAccountActivity;->b:Z

    .line 47
    :cond_1
    new-instance v0, Lcom/twitter/android/mx;

    invoke-direct {v0, p0}, Lcom/twitter/android/mx;-><init>(Lcom/twitter/android/RemoveAccountActivity;)V

    iput-object v0, p0, Lcom/twitter/android/RemoveAccountActivity;->c:Lcom/twitter/android/mx;

    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/RemoveAccountActivity;->c:Lcom/twitter/android/mx;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/RemoveAccountDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "RemoveAccountDialogActivity_account_id"

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "RemoveAccountDialogActivity_account_name"

    .line 52
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/RemoveAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onDestroy()V

    .line 59
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/RemoveAccountActivity;->c:Lcom/twitter/android/mx;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 60
    return-void
.end method
