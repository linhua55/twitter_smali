.class public final Lrx/internal/operators/bh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/s;


# instance fields
.field final a:Lrx/internal/operators/bi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/bi",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/bi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/bi",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lrx/internal/operators/bh;->a:Lrx/internal/operators/bi;

    .line 87
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lrx/internal/operators/bh;->a:Lrx/internal/operators/bi;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/bi;->b(J)V

    .line 91
    return-void
.end method
