.class Lrx/internal/operators/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/s;


# instance fields
.field final synthetic a:Lrx/internal/operators/n;

.field final synthetic b:Lrx/internal/operators/j;


# direct methods
.method constructor <init>(Lrx/internal/operators/j;Lrx/internal/operators/n;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lrx/internal/operators/k;->b:Lrx/internal/operators/j;

    iput-object p2, p0, Lrx/internal/operators/k;->a:Lrx/internal/operators/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lrx/internal/operators/k;->a:Lrx/internal/operators/n;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/n;->b(J)V

    .line 90
    return-void
.end method
