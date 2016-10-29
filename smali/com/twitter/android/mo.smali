.class Lcom/twitter/android/mo;
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
    .line 2991
    invoke-direct {p0, p1}, Lcom/twitter/android/kj;-><init>(Ljava/util/List;)V

    .line 2992
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 2995
    iput-object p1, p0, Lcom/twitter/android/mo;->a:Ljava/util/List;

    .line 2996
    invoke-virtual {p0}, Lcom/twitter/android/mo;->a()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/mo;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2997
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/mo;->a(I)V

    .line 3001
    :goto_0
    return-void

    .line 2999
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/mo;->notifyDataSetChanged()V

    goto :goto_0
.end method
