.class Lrx/internal/operators/ak;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lrx/internal/operators/aj;


# direct methods
.method constructor <init>(Lrx/internal/operators/aj;I)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lrx/internal/operators/ak;->b:Lrx/internal/operators/aj;

    iput p2, p0, Lrx/internal/operators/ak;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/operators/ak;->b:Lrx/internal/operators/aj;

    iget-object v0, v0, Lrx/internal/operators/aj;->a:Lrx/internal/operators/al;

    iget v1, p0, Lrx/internal/operators/ak;->a:I

    iget-object v2, p0, Lrx/internal/operators/ak;->b:Lrx/internal/operators/aj;

    iget-object v2, v2, Lrx/internal/operators/aj;->e:Ldle;

    iget-object v3, p0, Lrx/internal/operators/ak;->b:Lrx/internal/operators/aj;

    iget-object v3, v3, Lrx/internal/operators/aj;->b:Lrx/ao;

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/operators/al;->a(ILrx/ao;Lrx/ao;)V

    .line 80
    return-void
.end method
