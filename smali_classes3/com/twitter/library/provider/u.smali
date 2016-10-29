.class final Lcom/twitter/library/provider/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<[J>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/twitter/library/provider/u;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/twitter/library/provider/u;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-[J>;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 204
    invoke-virtual {p1}, Lrx/ao;->c()V

    .line 205
    iget-object v0, p0, Lcom/twitter/library/provider/u;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/library/provider/u;->b:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/s;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/s;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/twitter/library/provider/s;->e()[J

    move-result-object v0

    .line 207
    array-length v1, v0

    if-lez v1, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Lrx/ao;->bt_()V

    .line 211
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/library/provider/u;->a(Lrx/ao;)V

    return-void
.end method
