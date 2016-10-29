.class Lrx/internal/operators/cc;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lrx/internal/operators/OnSubscribePublishMulticast;

.field final synthetic c:Lrx/internal/operators/cb;


# direct methods
.method constructor <init>(Lrx/internal/operators/cb;Lrx/ao;Lrx/internal/operators/OnSubscribePublishMulticast;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lrx/internal/operators/cc;->c:Lrx/internal/operators/cb;

    iput-object p2, p0, Lrx/internal/operators/cc;->a:Lrx/ao;

    iput-object p3, p0, Lrx/internal/operators/cc;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lrx/internal/operators/cc;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->R_()V

    .line 140
    iget-object v0, p0, Lrx/internal/operators/cc;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 141
    return-void
.end method

.method public a(Lrx/s;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lrx/internal/operators/cc;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Lrx/s;)V

    .line 152
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lrx/internal/operators/cc;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lrx/internal/operators/cc;->b:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->R_()V

    .line 146
    iget-object v0, p0, Lrx/internal/operators/cc;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 147
    return-void
.end method
