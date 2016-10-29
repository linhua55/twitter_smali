.class Lcom/twitter/android/people/aa;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/twitter/android/people/adapters/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/people/z;


# direct methods
.method constructor <init>(Lcom/twitter/android/people/z;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/people/adapters/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/people/z;->a(Lcom/twitter/android/people/z;Z)Z

    .line 69
    iget-object v0, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/people/z;->b(Lcom/twitter/android/people/z;Z)Z

    .line 70
    iget-object v0, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    invoke-static {v0, p1}, Lcom/twitter/android/people/z;->a(Lcom/twitter/android/people/z;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    invoke-static {v0}, Lcom/twitter/android/people/z;->b(Lcom/twitter/android/people/z;)V

    .line 72
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/people/z;->a(Lcom/twitter/android/people/z;Z)Z

    .line 61
    iget-object v0, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/people/z;->b(Lcom/twitter/android/people/z;Z)Z

    .line 62
    iget-object v0, p0, Lcom/twitter/android/people/aa;->a:Lcom/twitter/android/people/z;

    invoke-static {v0}, Lcom/twitter/android/people/z;->a(Lcom/twitter/android/people/z;)Lcom/twitter/android/people/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/people/y;->a()V

    .line 63
    invoke-static {p1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/twitter/android/people/aa;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method public bt_()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
