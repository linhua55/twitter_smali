.class public final Lrx/internal/operators/OperatorReplay;
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


# static fields
.field static final f:Ldji;


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
            "Lrx/internal/operators/cj",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final e:Ldji;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldji",
            "<+",
            "Lrx/internal/operators/ci",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/cf;

    invoke-direct {v0}, Lrx/internal/operators/cf;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorReplay;->f:Ldji;

    return-void
.end method

.method private constructor <init>(Lrx/p;Lrx/o;Ljava/util/concurrent/atomic/AtomicReference;Ldji;)V
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
            "Lrx/internal/operators/cj",
            "<TT;>;>;",
            "Ldji",
            "<+",
            "Lrx/internal/operators/ci",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, Ldkv;-><init>(Lrx/p;)V

    .line 252
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay;->c:Lrx/o;

    .line 253
    iput-object p3, p0, Lrx/internal/operators/OperatorReplay;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay;->e:Ldji;

    .line 255
    return-void
.end method

.method static a(Lrx/o;Ldji;)Ldkv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<+TT;>;",
            "Ldji",
            "<+",
            "Lrx/internal/operators/ci",
            "<TT;>;>;)",
            "Ldkv",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    new-instance v1, Lrx/internal/operators/ch;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/ch;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ldji;)V

    .line 246
    new-instance v2, Lrx/internal/operators/OperatorReplay;

    invoke-direct {v2, v1, p0, v0, p1}, Lrx/internal/operators/OperatorReplay;-><init>(Lrx/p;Lrx/o;Ljava/util/concurrent/atomic/AtomicReference;Ldji;)V

    return-object v2
.end method

.method public static b(Lrx/o;I)Ldkv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<+TT;>;I)",
            "Ldkv",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 146
    invoke-static {p0}, Lrx/internal/operators/OperatorReplay;->j(Lrx/o;)Ldkv;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/cg;

    invoke-direct {v0, p1}, Lrx/internal/operators/cg;-><init>(I)V

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->a(Lrx/o;Ldji;)Ldkv;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(Lrx/o;)Ldkv;
    .locals 1
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
    .line 132
    sget-object v0, Lrx/internal/operators/OperatorReplay;->f:Ldji;

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->a(Lrx/o;Ldji;)Ldkv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d(Ldjf;)V
    .locals 6
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 259
    .line 264
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/cj;

    .line 266
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrx/internal/operators/cj;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    :cond_1
    new-instance v2, Lrx/internal/operators/cj;

    iget-object v5, p0, Lrx/internal/operators/OperatorReplay;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay;->e:Ldji;

    invoke-interface {v1}, Ldji;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/ci;

    invoke-direct {v2, v5, v1}, Lrx/internal/operators/cj;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/ci;)V

    .line 270
    invoke-virtual {v2}, Lrx/internal/operators/cj;->d()V

    .line 272
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 281
    :cond_2
    iget-object v1, v0, Lrx/internal/operators/cj;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lrx/internal/operators/cj;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 297
    :goto_0
    invoke-interface {p1, v0}, Ldjf;->call(Ljava/lang/Object;)V

    .line 298
    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay;->c:Lrx/o;

    invoke-virtual {v1, v0}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    .line 301
    :cond_3
    return-void

    :cond_4
    move v1, v4

    .line 281
    goto :goto_0
.end method
