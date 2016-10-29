.class Lcom/twitter/android/composer/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/card/q;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/twitter/android/composer/q;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/twitter/android/composer/q;->b()V

    .line 1248
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/twitter/android/composer/q;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->c(Lcom/twitter/android/composer/ComposerActivity;Z)Z

    .line 1259
    iget-object v0, p0, Lcom/twitter/android/composer/q;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->t(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1260
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/twitter/android/composer/q;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->c(Lcom/twitter/android/composer/ComposerActivity;Z)Z

    .line 1253
    iget-object v0, p0, Lcom/twitter/android/composer/q;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->t(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1254
    return-void
.end method
