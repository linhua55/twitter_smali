.class Lcom/twitter/android/xr;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/xo;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/twitter/android/xo;J)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/twitter/android/xr;->a:Lcom/twitter/android/xo;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 384
    iput-wide p2, p0, Lcom/twitter/android/xr;->b:J

    .line 385
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 380
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/xr;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 4

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 390
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/twitter/android/xr;->a:Lcom/twitter/android/xo;

    iget-object v0, v0, Lcom/twitter/android/xo;->c:Lcom/twitter/library/util/FriendshipCache;

    iget-wide v2, p0, Lcom/twitter/android/xr;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 392
    iget-object v0, p0, Lcom/twitter/android/xr;->a:Lcom/twitter/android/xo;

    invoke-static {v0}, Lcom/twitter/android/xo;->c(Lcom/twitter/android/xo;)Lcom/twitter/android/yb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 394
    :cond_0
    return-void
.end method
