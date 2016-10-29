.class Lrx/internal/operators/dp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/s;


# instance fields
.field final synthetic a:Lrx/internal/operators/dr;

.field final synthetic b:Lrx/internal/operators/do;


# direct methods
.method constructor <init>(Lrx/internal/operators/do;Lrx/internal/operators/dr;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lrx/internal/operators/dp;->b:Lrx/internal/operators/do;

    iput-object p2, p0, Lrx/internal/operators/dp;->a:Lrx/internal/operators/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lrx/internal/operators/dp;->a:Lrx/internal/operators/dr;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/dr;->b(J)V

    .line 49
    return-void
.end method
