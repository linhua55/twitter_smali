.class final Ldlh;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;


# direct methods
.method constructor <init>(Lrx/ao;Lrx/ao;)V
    .locals 0

    .prologue
    .line 221
    iput-object p2, p0, Ldlh;->a:Lrx/ao;

    invoke-direct {p0, p1}, Lrx/ao;-><init>(Lrx/ao;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Ldlh;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 231
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
    .line 235
    iget-object v0, p0, Ldlh;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ldlh;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 226
    return-void
.end method
