.class Lcom/twitter/android/composer/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2066
    iget-object v0, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->setResult(I)V

    .line 2067
    iget-object v0, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Z)V

    .line 2068
    iget-object v0, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->finish()V

    .line 2069
    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2047
    iget-object v0, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->l()Lcom/twitter/model/core/ay;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2048
    :goto_0
    const/4 v2, -0x2

    if-ne p3, v2, :cond_2

    .line 2049
    iget-object v2, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v2}, Lcom/twitter/android/composer/ComposerActivity;->k(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/media/widget/MediaAttachmentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/media/widget/MediaAttachmentsView;->b()V

    .line 2050
    iget-object v2, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v2, v2, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v2}, Lcom/twitter/android/composer/ba;->j()V

    .line 2051
    iget-object v2, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v2}, Lcom/twitter/android/composer/ComposerActivity;->C(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 2052
    iget-object v2, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/twitter/android/composer/ComposerActivity;->b(Lcom/twitter/android/composer/ComposerActivity;I)I

    .line 2053
    iget-object v2, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v2, v1}, Lcom/twitter/android/composer/ComposerActivity;->c(Lcom/twitter/android/composer/ComposerActivity;I)I

    .line 2054
    invoke-static {}, Lcom/twitter/android/composer/bo;->a()Lcom/twitter/android/composer/bo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/composer/bo;->c()J

    move-result-wide v2

    .line 2055
    iget-object v1, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v1}, Lcom/twitter/android/composer/ComposerActivity;->f(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bi;

    move-result-object v1

    iget-object v4, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v4}, Lcom/twitter/android/composer/ComposerActivity;->D(Lcom/twitter/android/composer/ComposerActivity;)Z

    move-result v4

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/twitter/android/composer/bi;->a(ZZJ)V

    .line 2056
    invoke-direct {p0}, Lcom/twitter/android/composer/ad;->a()V

    .line 2063
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2047
    goto :goto_0

    .line 2057
    :cond_2
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 2058
    iget-object v2, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/twitter/android/composer/ComposerActivity;->c(Lcom/twitter/android/composer/ComposerActivity;I)I

    .line 2059
    iget-object v2, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v2}, Lcom/twitter/android/composer/ComposerActivity;->f(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/bi;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v3}, Lcom/twitter/android/composer/ComposerActivity;->D(Lcom/twitter/android/composer/ComposerActivity;)Z

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/twitter/android/composer/bi;->a(ZZ)V

    .line 2060
    iget-object v0, p0, Lcom/twitter/android/composer/ad;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->d(Lcom/twitter/android/composer/ComposerActivity;Z)V

    .line 2061
    invoke-direct {p0}, Lcom/twitter/android/composer/ad;->a()V

    goto :goto_1
.end method
