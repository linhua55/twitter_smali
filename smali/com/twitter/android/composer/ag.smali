.class final Lcom/twitter/android/composer/ag;
.super Lcom/twitter/util/concurrent/o;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/concurrent/o",
        "<",
        "Lcom/twitter/android/composer/ComposerActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 2694
    invoke-direct {p0, p1}, Lcom/twitter/util/concurrent/o;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2697
    invoke-interface {p1}, Lcom/twitter/app/common/util/s;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2717
    :cond_0
    :goto_0
    return-void

    .line 2701
    :cond_1
    invoke-static {p1}, Lcom/twitter/android/composer/ComposerActivity;->k(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/media/widget/MediaAttachmentsView;

    move-result-object v0

    const v1, 0x7f130285

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2702
    if-eqz v0, :cond_0

    .line 2705
    invoke-static {p1}, Lcom/twitter/android/composer/ComposerActivity;->F(Lcom/twitter/android/composer/ComposerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2708
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2709
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2710
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 2711
    invoke-static {p1}, Lcom/twitter/android/composer/ComposerActivity;->F(Lcom/twitter/android/composer/ComposerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2712
    aget v1, v1, v3

    if-gt v0, v1, :cond_0

    .line 2714
    invoke-static {p1}, Lcom/twitter/android/composer/ComposerActivity;->z(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bq;

    move-result-object v0

    const-string/jumbo v1, "stickers_composer_tooltip"

    .line 2715
    invoke-virtual {p1}, Lcom/twitter/android/composer/ComposerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 2714
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/bq;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2694
    check-cast p1, Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/ag;->a(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method
