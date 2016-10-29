.class Lcom/twitter/android/composer/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/composer/cl;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->p()V

    .line 906
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(I)V

    .line 901
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ComposerActivity;->d(Z)V

    .line 916
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->i(Lcom/twitter/android/composer/ComposerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->j(Lcom/twitter/android/composer/ComposerActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 926
    iget-object v0, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->finish()V

    .line 927
    const/4 v0, 0x1

    .line 929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/twitter/android/composer/g;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->k()V

    .line 911
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 920
    return-void
.end method
