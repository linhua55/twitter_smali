.class Lcom/twitter/android/composer/y;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/twitter/android/composer/y;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1554
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/twitter/android/composer/y;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->A(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1556
    iget-object v0, p0, Lcom/twitter/android/composer/y;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->f(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/y;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/bi;->a(Landroid/content/Context;)V

    .line 1558
    :cond_0
    return-void
.end method
