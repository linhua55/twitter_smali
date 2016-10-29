.class Lcom/twitter/android/mx;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/RemoveAccountActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/RemoveAccountActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/twitter/android/mx;->a:Lcom/twitter/android/RemoveAccountActivity;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/mx;->a:Lcom/twitter/android/RemoveAccountActivity;

    iget-object v0, v0, Lcom/twitter/android/RemoveAccountActivity;->a:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string/jumbo v1, "booleanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    iget-object v1, p0, Lcom/twitter/android/mx;->a:Lcom/twitter/android/RemoveAccountActivity;

    iget-object v1, v1, Lcom/twitter/android/RemoveAccountActivity;->a:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 87
    :cond_0
    return-void
.end method
