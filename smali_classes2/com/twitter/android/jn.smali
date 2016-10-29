.class Lcom/twitter/android/jn;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/android/jm;


# direct methods
.method constructor <init>(Lcom/twitter/android/jm;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/twitter/android/jn;->b:Lcom/twitter/android/jm;

    iput-object p2, p0, Lcom/twitter/android/jn;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 419
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/jn;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 4

    .prologue
    .line 428
    .line 429
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 430
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/android/jn;->a:Landroid/content/Context;

    .line 431
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->isCancelled()Z

    move-result v3

    .line 428
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/MediaActionBarFragment;->a(ZZLandroid/content/Context;Z)V

    .line 432
    return-void
.end method

.method public bridge synthetic b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 419
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/jn;->b(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public b(Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method
