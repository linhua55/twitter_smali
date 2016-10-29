.class final Lrx/internal/util/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/am",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/internal/schedulers/h;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/schedulers/h;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/schedulers/h;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/util/ah;->a:Lrx/internal/schedulers/h;

    .line 75
    iput-object p2, p0, Lrx/internal/util/ah;->b:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lrx/an;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/an",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lrx/internal/util/ah;->a:Lrx/internal/schedulers/h;

    new-instance v1, Lrx/internal/util/aj;

    iget-object v2, p0, Lrx/internal/util/ah;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/internal/util/aj;-><init>(Lrx/an;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/h;->a(Ldje;)Lrx/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/an;->a(Lrx/ap;)V

    .line 81
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Lrx/an;

    invoke-virtual {p0, p1}, Lrx/internal/util/ah;->a(Lrx/an;)V

    return-void
.end method
