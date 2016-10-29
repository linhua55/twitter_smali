.class public Lcom/twitter/android/widget/ed;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:Lcom/twitter/model/core/Tweet;

.field private final c:Z

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/nq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/twitter/model/core/Tweet;ZLcom/twitter/android/nq;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 225
    iput-wide p1, p0, Lcom/twitter/android/widget/ed;->a:J

    .line 226
    iput-object p3, p0, Lcom/twitter/android/widget/ed;->b:Lcom/twitter/model/core/Tweet;

    .line 227
    iput-boolean p4, p0, Lcom/twitter/android/widget/ed;->c:Z

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/widget/ed;->d:Ljava/lang/ref/WeakReference;

    .line 229
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/ed;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 7

    .prologue
    .line 241
    iget-object v0, p0, Lcom/twitter/android/widget/ed;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/nq;

    .line 242
    if-eqz v1, :cond_0

    .line 244
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 246
    instance-of v0, p1, Lbti;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lbti;

    .line 247
    invoke-virtual {v0}, Lbti;->s()J

    move-result-wide v2

    .line 251
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v4

    iget-boolean v5, p0, Lcom/twitter/android/widget/ed;->c:Z

    .line 253
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->isCancelled()Z

    move-result v6

    .line 249
    invoke-interface/range {v1 .. v6}, Lcom/twitter/android/nq;->a(JZZZ)V

    .line 256
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/ed;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->q:J

    goto :goto_0
.end method

.method public bridge synthetic b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/ed;->b(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public b(Lcom/twitter/library/service/x;)V
    .locals 5

    .prologue
    .line 233
    iget-object v0, p0, Lcom/twitter/android/widget/ed;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/nq;

    .line 234
    if-eqz v0, :cond_0

    .line 235
    iget-wide v2, p0, Lcom/twitter/android/widget/ed;->a:J

    iget-object v1, p0, Lcom/twitter/android/widget/ed;->b:Lcom/twitter/model/core/Tweet;

    iget-boolean v4, p0, Lcom/twitter/android/widget/ed;->c:Z

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/twitter/android/nq;->a(JLcom/twitter/model/core/Tweet;Z)V

    .line 237
    :cond_0
    return-void
.end method
