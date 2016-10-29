.class Lcom/twitter/android/composer/w;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/y;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/twitter/android/composer/w;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/twitter/android/composer/w;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->x()V

    .line 681
    return-void
.end method

.method public a(Ljava/lang/String;Lsv;I)V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/twitter/android/composer/w;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/android/composer/ComposerActivity;->a(Ljava/lang/String;Lsv;I)V

    .line 675
    iget-object v0, p0, Lcom/twitter/android/composer/w;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->x()V

    .line 676
    return-void
.end method

.method public a(Lsv;Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsv;",
            "Lcmf",
            "<",
            "Lcom/twitter/android/provider/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/twitter/android/composer/w;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, p2, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcmf;Lsv;)V

    .line 669
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/twitter/android/composer/w;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->e(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/widget/DraggableDrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->getDrawerState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/twitter/android/composer/w;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->x()V

    .line 688
    :cond_0
    return-void
.end method
