.class public Lcom/twitter/android/pr;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lbli;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/SecuritySettingsActivity;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/android/SecuritySettingsActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 833
    iput-object p2, p0, Lcom/twitter/android/pr;->b:Landroid/content/Context;

    .line 834
    iput-object p3, p0, Lcom/twitter/android/pr;->c:Ljava/lang/String;

    .line 835
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lbli;
    .locals 4

    .prologue
    .line 844
    iget-object v0, p0, Lcom/twitter/android/pr;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/SecuritySettingsActivity;->m(Lcom/twitter/android/SecuritySettingsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lblf;->a(Landroid/content/Context;J)Lbli;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbli;)V
    .locals 5

    .prologue
    .line 849
    if-nez p1, :cond_1

    .line 850
    iget-object v0, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SecuritySettingsActivity;->a()V

    .line 851
    iget-object v0, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    const-string/jumbo v1, "login_verification"

    invoke-virtual {v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 852
    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 853
    iget-object v0, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SecuritySettingsActivity;->n(Lcom/twitter/android/SecuritySettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    new-instance v1, Lbkv;

    iget-object v2, p0, Lcom/twitter/android/pr;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    .line 859
    invoke-virtual {v3}, Lcom/twitter/android/SecuritySettingsActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/pr;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lbkv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lbli;)V

    const/4 v2, 0x1

    .line 858
    invoke-static {v0, v1, v2}, Lcom/twitter/android/SecuritySettingsActivity;->b(Lcom/twitter/android/SecuritySettingsActivity;Lcom/twitter/library/service/x;I)Z

    goto :goto_0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 826
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/pr;->a([Ljava/lang/Void;)Lbli;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 826
    check-cast p1, Lbli;

    invoke-virtual {p0, p1}, Lcom/twitter/android/pr;->a(Lbli;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 839
    iget-object v0, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/pr;->a:Lcom/twitter/android/SecuritySettingsActivity;

    const v2, 0x7f0a04e9

    invoke-virtual {v1, v2}, Lcom/twitter/android/SecuritySettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->a(Ljava/lang/String;)V

    .line 840
    return-void
.end method
