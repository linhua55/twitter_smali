.class Lcom/twitter/app/main/k;
.super Lcom/twitter/android/kj;
.source "Twttr"


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2062
    invoke-direct {p0, p1}, Lcom/twitter/android/kj;-><init>(Ljava/util/List;)V

    .line 2063
    return-void
.end method


# virtual methods
.method protected c()I
    .locals 1

    .prologue
    .line 2085
    const v0, 0x7f04018f

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/twitter/app/main/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 2078
    iget-boolean v0, v0, Lcom/twitter/library/client/ax;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/twitter/app/main/k;->b:I

    .line 2080
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/kj;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2078
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
