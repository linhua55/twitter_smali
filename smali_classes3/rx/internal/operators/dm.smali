.class Lrx/internal/operators/dm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/s;


# instance fields
.field final synthetic a:Lrx/internal/operators/dn;

.field final synthetic b:Lrx/internal/operators/dl;


# direct methods
.method constructor <init>(Lrx/internal/operators/dl;Lrx/internal/operators/dn;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lrx/internal/operators/dm;->b:Lrx/internal/operators/dl;

    iput-object p2, p0, Lrx/internal/operators/dm;->a:Lrx/internal/operators/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lrx/internal/operators/dm;->a:Lrx/internal/operators/dn;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/dn;->b(J)V

    .line 52
    return-void
.end method
