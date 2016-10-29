.class Lcom/twitter/android/composer/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laum",
        "<",
        "Lcom/twitter/model/av/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/twitter/android/composer/a;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/twitter/model/av/o;)V
    .locals 3

    .prologue
    .line 579
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/twitter/android/composer/a;->a:Lcom/twitter/android/composer/ComposerActivity;

    .line 581
    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/ay;

    move-result-object v1

    .line 582
    iget-object v0, p0, Lcom/twitter/android/composer/a;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 583
    invoke-virtual {v0}, Lcom/twitter/android/composer/ba;->i()Ljava/util/List;

    move-result-object v2

    .line 584
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/o;

    .line 582
    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/composer/ay;->a(Ljava/util/List;Lcom/twitter/model/av/o;)V

    .line 585
    iget-object v0, p0, Lcom/twitter/android/composer/a;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0, p2}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;Lcom/twitter/model/av/o;)V

    .line 587
    :cond_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 575
    check-cast p2, Lcom/twitter/model/av/o;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/composer/a;->a(ILcom/twitter/model/av/o;)V

    return-void
.end method
