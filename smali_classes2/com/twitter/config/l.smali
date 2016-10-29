.class Lcom/twitter/config/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lcom/twitter/config/k;


# direct methods
.method constructor <init>(Lcom/twitter/config/k;Lrx/ao;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/twitter/config/l;->b:Lcom/twitter/config/k;

    iput-object p2, p0, Lcom/twitter/config/l;->a:Lrx/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/config/l;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/twitter/config/l;->a:Lrx/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method
