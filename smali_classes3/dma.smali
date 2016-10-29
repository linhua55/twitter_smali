.class public final Ldma;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/ap;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ldmb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ldmb;

    const/4 v2, 0x0

    invoke-static {}, Ldmc;->a()Lrx/ap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldmb;-><init>(ZLrx/ap;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldma;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Ldma;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmb;

    .line 60
    iget-boolean v2, v0, Ldmb;->a:Z

    if-eqz v2, :cond_1

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Ldmb;->a()Ldmb;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v0, v0, Ldmb;->b:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    goto :goto_0
.end method

.method public a(Lrx/ap;)V
    .locals 3

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subscription can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v1, p0, Ldma;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmb;

    .line 86
    iget-boolean v2, v0, Ldmb;->a:Z

    if-eqz v2, :cond_2

    .line 87
    invoke-interface {p1}, Lrx/ap;->R_()V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-virtual {v0, p1}, Ldmb;->a(Lrx/ap;)Ldmb;

    move-result-object v2

    .line 92
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v0, v0, Ldmb;->b:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ldma;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmb;

    iget-boolean v0, v0, Ldmb;->a:Z

    return v0
.end method

.method public c()Lrx/ap;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ldma;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmb;

    iget-object v0, v0, Ldmb;->b:Lrx/ap;

    return-object v0
.end method
