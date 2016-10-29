.class Lcom/twitter/android/util/as;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/util/an;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/an;)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/twitter/android/util/as;->a:Lcom/twitter/android/util/an;

    .line 473
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 468
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/util/as;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/twitter/android/util/as;->a:Lcom/twitter/android/util/an;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/twitter/android/util/as;->a:Lcom/twitter/android/util/an;

    check-cast p1, Lbnj;

    .line 479
    invoke-virtual {p1}, Lbnj;->g()Lcom/twitter/library/api/y;

    move-result-object v1

    .line 478
    invoke-interface {v0, v1}, Lcom/twitter/android/util/an;->a(Lcom/twitter/library/api/y;)V

    .line 481
    :cond_0
    return-void
.end method
