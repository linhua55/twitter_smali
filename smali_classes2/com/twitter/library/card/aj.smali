.class Lcom/twitter/library/card/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/provider/dm;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lclj;

.field final synthetic e:Lcom/twitter/library/card/ai;


# direct methods
.method constructor <init>(Lcom/twitter/library/card/ai;Lcom/twitter/library/provider/dm;JJLclj;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/library/card/aj;->e:Lcom/twitter/library/card/ai;

    iput-object p2, p0, Lcom/twitter/library/card/aj;->a:Lcom/twitter/library/provider/dm;

    iput-wide p3, p0, Lcom/twitter/library/card/aj;->b:J

    iput-wide p5, p0, Lcom/twitter/library/card/aj;->c:J

    iput-object p7, p0, Lcom/twitter/library/card/aj;->d:Lclj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/twitter/library/card/aj;->a:Lcom/twitter/library/provider/dm;

    iget-wide v2, p0, Lcom/twitter/library/card/aj;->b:J

    iget-wide v4, p0, Lcom/twitter/library/card/aj;->c:J

    iget-object v6, p0, Lcom/twitter/library/card/aj;->d:Lclj;

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/dm;->a(JJLclj;)V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/twitter/library/card/aj;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
