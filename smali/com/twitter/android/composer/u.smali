.class Lcom/twitter/android/composer/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/composer/geotag/e;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lcom/twitter/android/composer/ar;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;Ljava/lang/Runnable;)Lcom/twitter/android/composer/ar;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/geo/GeoTagState;)V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->h()V

    .line 1382
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1374
    if-nez p1, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->z(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/bq;->b()V

    .line 1377
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->y(Lcom/twitter/android/composer/ComposerActivity;)Lwo;

    move-result-object v0

    invoke-virtual {v0}, Lwo;->a()Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1386
    if-eqz p1, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZZ)V

    .line 1391
    :goto_0
    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/twitter/android/composer/u;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->j(Lcom/twitter/android/composer/ComposerActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
