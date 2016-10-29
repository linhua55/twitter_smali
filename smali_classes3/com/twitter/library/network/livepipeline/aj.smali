.class Lcom/twitter/library/network/livepipeline/aj;
.super Lcom/twitter/library/network/livepipeline/aa;
.source "Twttr"


# instance fields
.field final synthetic c:Lcom/twitter/library/network/livepipeline/StreamManager;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/StreamManager;Lrx/r;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/aj;->c:Lcom/twitter/library/network/livepipeline/StreamManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/twitter/library/network/livepipeline/aa;-><init>(Lrx/r;Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/network/livepipeline/ae;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/aj;->c:Lcom/twitter/library/network/livepipeline/StreamManager;

    sget-object v1, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->a:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/StreamManager;->a(Lcom/twitter/library/network/livepipeline/StreamManager;Lcom/twitter/library/network/livepipeline/StreamManager$Status;)Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 71
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/aj;->c:Lcom/twitter/library/network/livepipeline/StreamManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/library/network/livepipeline/StreamManager;->a:Lcom/twitter/library/network/livepipeline/aa;

    .line 72
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 61
    check-cast p3, Lcom/twitter/library/network/livepipeline/ae;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/network/livepipeline/aj;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/network/livepipeline/ae;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/aj;->c:Lcom/twitter/library/network/livepipeline/StreamManager;

    sget-object v1, Lcom/twitter/library/network/livepipeline/StreamManager$Status;->c:Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/StreamManager;->a(Lcom/twitter/library/network/livepipeline/StreamManager;Lcom/twitter/library/network/livepipeline/StreamManager$Status;)Lcom/twitter/library/network/livepipeline/StreamManager$Status;

    .line 65
    return-void
.end method
