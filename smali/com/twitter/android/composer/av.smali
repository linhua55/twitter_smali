.class Lcom/twitter/android/composer/av;
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
    .line 3557
    invoke-direct {p0, p1}, Lcom/twitter/util/concurrent/o;-><init>(Ljava/lang/Object;)V

    .line 3558
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 1

    .prologue
    .line 3562
    invoke-interface {p1}, Lcom/twitter/app/common/util/s;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3563
    invoke-static {p1}, Lcom/twitter/android/composer/ComposerActivity;->B(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 3565
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3554
    check-cast p1, Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/av;->a(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method
