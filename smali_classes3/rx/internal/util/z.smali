.class Lrx/internal/util/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldjj;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Ldjj;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lrx/internal/util/z;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/z;->a:Ldjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lrx/internal/util/z;->a:Ldjj;

    iget-object v1, p0, Lrx/internal/util/z;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iget-object v1, v1, Lrx/internal/util/ScalarSynchronousObservable;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ldjj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    .line 240
    instance-of v1, v0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    iget-object v0, v0, Lrx/internal/util/ScalarSynchronousObservable;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/internal/util/ScalarSynchronousObservable;->a(Lrx/ao;Ljava/lang/Object;)Lrx/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/s;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-static {p1}, Ldlf;->a(Lrx/ao;)Lrx/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/ao;)Lrx/ap;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lrx/internal/util/z;->a(Lrx/ao;)V

    return-void
.end method
