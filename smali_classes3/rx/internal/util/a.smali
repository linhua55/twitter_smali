.class public final Lrx/internal/util/a;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ldjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjf",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ldjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjf",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ldje;


# direct methods
.method public constructor <init>(Ldjf;Ldjf;Ldje;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjf",
            "<-TT;>;",
            "Ldjf",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ldje;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lrx/ao;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/util/a;->a:Ldjf;

    .line 33
    iput-object p2, p0, Lrx/internal/util/a;->b:Ldjf;

    .line 34
    iput-object p3, p0, Lrx/internal/util/a;->c:Ldje;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lrx/internal/util/a;->b:Ldjf;

    invoke-interface {v0, p1}, Ldjf;->call(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lrx/internal/util/a;->a:Ldjf;

    invoke-interface {v0, p1}, Ldjf;->call(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lrx/internal/util/a;->c:Ldje;

    invoke-interface {v0}, Ldje;->a()V

    .line 50
    return-void
.end method
