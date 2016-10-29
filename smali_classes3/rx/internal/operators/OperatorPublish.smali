.class public final Lrx/internal/operators/OperatorPublish;
.super Ldkv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldkv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final c:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/cd",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/p;Lrx/o;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/p",
            "<TT;>;",
            "Lrx/o",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/cd",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Ldkv;-><init>(Lrx/p;)V

    .line 168
    iput-object p2, p0, Lrx/internal/operators/OperatorPublish;->c:Lrx/o;

    .line 169
    iput-object p3, p0, Lrx/internal/operators/OperatorPublish;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    return-void
.end method

.method public static a(Lrx/o;Ldjj;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<+TT;>;",
            "Ldjj",
            "<-",
            "Lrx/o",
            "<TT;>;+",
            "Lrx/o",
            "<TR;>;>;)",
            "Lrx/o",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lrx/internal/operators/OperatorPublish;->a(Lrx/o;Ldjj;Z)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/o;Ldjj;Z)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<+TT;>;",
            "Ldjj",
            "<-",
            "Lrx/o",
            "<TT;>;+",
            "Lrx/o",
            "<TR;>;>;Z)",
            "Lrx/o",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lrx/internal/operators/cb;

    invoke-direct {v0, p2, p1, p0}, Lrx/internal/operators/cb;-><init>(ZLdjj;Lrx/o;)V

    invoke-static {v0}, Lrx/internal/operators/OperatorPublish;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public static j(Lrx/o;)Ldkv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<+TT;>;)",
            "Ldkv",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    new-instance v1, Lrx/internal/operators/ca;

    invoke-direct {v1, v0}, Lrx/internal/operators/ca;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 116
    new-instance v2, Lrx/internal/operators/OperatorPublish;

    invoke-direct {v2, v1, p0, v0}, Lrx/internal/operators/OperatorPublish;-><init>(Lrx/p;Lrx/o;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v2
.end method


# virtual methods
.method public d(Ldjf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjf",
            "<-",
            "Lrx/ap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    .line 179
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/cd;

    .line 181
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrx/internal/operators/cd;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    :cond_1
    new-instance v1, Lrx/internal/operators/cd;

    iget-object v4, p0, Lrx/internal/operators/OperatorPublish;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v4}, Lrx/internal/operators/cd;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 185
    invoke-virtual {v1}, Lrx/internal/operators/cd;->d()V

    .line 187
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 196
    :cond_2
    iget-object v1, v0, Lrx/internal/operators/cd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lrx/internal/operators/cd;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 212
    :goto_0
    invoke-interface {p1, v0}, Ldjf;->call(Ljava/lang/Object;)V

    .line 213
    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish;->c:Lrx/o;

    invoke-virtual {v1, v0}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 216
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 196
    goto :goto_0
.end method
