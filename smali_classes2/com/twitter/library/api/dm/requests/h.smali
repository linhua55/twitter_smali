.class Lcom/twitter/library/api/dm/requests/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/api/dm/requests/g;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/dm/requests/g;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/twitter/library/api/dm/requests/h;->a:Lcom/twitter/library/api/dm/requests/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/h;->a:Lcom/twitter/library/api/dm/requests/g;

    invoke-static {v0}, Lcom/twitter/library/api/dm/requests/g;->a(Lcom/twitter/library/api/dm/requests/g;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbof;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lbof;->a(JJ)V

    .line 90
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/dm/requests/h;->a(Landroid/util/Pair;)V

    return-void
.end method
