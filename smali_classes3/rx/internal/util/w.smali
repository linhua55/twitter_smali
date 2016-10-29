.class Lrx/internal/util/w;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ldje;",
        "Lrx/ap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/schedulers/h;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/h;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lrx/internal/util/w;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/w;->a:Lrx/internal/schedulers/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, Ldje;

    invoke-virtual {p0, p1}, Lrx/internal/util/w;->a(Ldje;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldje;)Lrx/ap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lrx/internal/util/w;->a:Lrx/internal/schedulers/h;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/h;->a(Ldje;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method
