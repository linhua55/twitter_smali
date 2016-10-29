.class Lark;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Lbul;

.field private final d:Lcom/twitter/model/core/TwitterUser;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/dm;Lcom/twitter/library/client/bd;Lbul;Lcom/twitter/model/core/TwitterUser;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lark;->a:Lcom/twitter/library/provider/dm;

    .line 77
    iput-object p2, p0, Lark;->b:Lcom/twitter/library/client/bd;

    .line 78
    iput-object p3, p0, Lark;->c:Lbul;

    .line 79
    iput-object p4, p0, Lark;->d:Lcom/twitter/model/core/TwitterUser;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lark;->a:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lark;->d:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/dm;->f(J)I

    move-result v0

    .line 85
    invoke-virtual {p1}, Lrx/ao;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lark;->b:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lark;->c:Lbul;

    new-instance v2, Larl;

    invoke-direct {v2, p0, p1}, Larl;-><init>(Lark;Lrx/ao;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 98
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lark;->a(Lrx/ao;)V

    return-void
.end method
