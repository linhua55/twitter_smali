.class Lcom/twitter/library/client/bm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/Session;

.field final synthetic b:Lcom/twitter/library/client/Session;

.field final synthetic c:Lcom/twitter/library/client/bk;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/twitter/library/client/bm;->c:Lcom/twitter/library/client/bk;

    iput-object p2, p0, Lcom/twitter/library/client/bm;->a:Lcom/twitter/library/client/Session;

    iput-object p3, p0, Lcom/twitter/library/client/bm;->b:Lcom/twitter/library/client/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/twitter/library/client/bm;->c:Lcom/twitter/library/client/bk;

    iget-object v1, p0, Lcom/twitter/library/client/bm;->a:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/library/client/bm;->b:Lcom/twitter/library/client/Session;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V

    .line 699
    return-void
.end method
