.class Lcom/twitter/android/composer/r;
.super Lcom/twitter/android/composer/ar;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/twitter/android/composer/r;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ar;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/twitter/android/composer/r;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/twitter/android/composer/r;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->u(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/card/pollcompose/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/pollcompose/o;->a(Lclp;)V

    .line 1279
    :cond_0
    return-void
.end method
