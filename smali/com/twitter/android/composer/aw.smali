.class Lcom/twitter/android/composer/aw;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 3431
    iput-object p1, p0, Lcom/twitter/android/composer/aw;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/a;)V
    .locals 0

    .prologue
    .line 3431
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/aw;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 3431
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/aw;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 3435
    instance-of v0, p1, Lblv;

    if-eqz v0, :cond_1

    .line 3436
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3437
    iget-object v0, p0, Lcom/twitter/android/composer/aw;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->h(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/geotag/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/geotag/a;->c()V

    .line 3442
    :cond_0
    :goto_0
    return-void

    .line 3440
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/library/service/z;->a(Lcom/twitter/library/service/x;)V

    goto :goto_0
.end method
