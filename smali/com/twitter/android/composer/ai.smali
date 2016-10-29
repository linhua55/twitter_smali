.class Lcom/twitter/android/composer/ai;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/android/ao;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ay;

.field final synthetic b:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/android/composer/ay;)V
    .locals 0

    .prologue
    .line 2736
    iput-object p1, p0, Lcom/twitter/android/composer/ai;->b:Lcom/twitter/android/composer/ComposerActivity;

    iput-object p2, p0, Lcom/twitter/android/composer/ai;->a:Lcom/twitter/android/composer/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/ao;)V
    .locals 3

    .prologue
    .line 2739
    invoke-virtual {p1}, Lcom/twitter/android/ao;->a()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 2741
    if-eqz v0, :cond_0

    .line 2742
    iget-object v1, p0, Lcom/twitter/android/composer/ai;->b:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v1, v1, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v1

    .line 2744
    iget-object v2, p0, Lcom/twitter/android/composer/ai;->a:Lcom/twitter/android/composer/ay;

    invoke-virtual {v2, v0}, Lcom/twitter/android/composer/ay;->a(Lcom/twitter/model/av/o;)V

    .line 2745
    iget-object v2, p0, Lcom/twitter/android/composer/ai;->a:Lcom/twitter/android/composer/ay;

    invoke-virtual {v2, v1, v0}, Lcom/twitter/android/composer/ay;->a(Ljava/util/List;Lcom/twitter/model/av/o;)V

    .line 2747
    iget-object v0, p0, Lcom/twitter/android/composer/ai;->b:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v2, p0, Lcom/twitter/android/composer/ai;->a:Lcom/twitter/android/composer/ay;

    .line 2748
    invoke-virtual {v2, v1}, Lcom/twitter/android/composer/ay;->a(Ljava/util/List;)Lcom/twitter/model/av/o;

    move-result-object v1

    .line 2747
    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/model/av/o;)V

    .line 2751
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2736
    check-cast p1, Lcom/twitter/android/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/ai;->a(Lcom/twitter/android/ao;)V

    return-void
.end method
