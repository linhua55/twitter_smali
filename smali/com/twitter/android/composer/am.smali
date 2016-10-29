.class Lcom/twitter/android/composer/am;
.super Lcom/twitter/android/composer/ar;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/twitter/android/composer/am;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ar;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/twitter/android/composer/am;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->v()V

    .line 737
    iget-object v0, p0, Lcom/twitter/android/composer/am;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->f(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->e()V

    .line 738
    return-void
.end method
