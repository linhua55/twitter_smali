.class Lcom/twitter/library/client/bl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bi;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/Session;

.field final synthetic b:Lcom/twitter/library/client/bk;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/twitter/library/client/bl;->b:Lcom/twitter/library/client/bk;

    iput-object p2, p0, Lcom/twitter/library/client/bl;->a:Lcom/twitter/library/client/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/twitter/library/client/bl;->b:Lcom/twitter/library/client/bk;

    iget-object v1, p0, Lcom/twitter/library/client/bl;->a:Lcom/twitter/library/client/Session;

    invoke-static {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;)V

    .line 585
    return-void
.end method
