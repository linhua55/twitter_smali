.class Lbtp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbto;


# direct methods
.method constructor <init>(Lbto;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lbtp;->a:Lbto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 96
    iget-object v0, p0, Lbtp;->a:Lbto;

    invoke-static {v0}, Lbto;->a(Lbto;)Lcom/twitter/library/provider/b;

    move-result-object v7

    .line 97
    iget-object v0, p0, Lbtp;->a:Lbto;

    invoke-static {v0}, Lbto;->c(Lbto;)Lcom/twitter/library/provider/dm;

    move-result-object v1

    iget-object v0, p0, Lbtp;->a:Lbto;

    invoke-virtual {v0}, Lbto;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    iget-object v0, p0, Lbtp;->a:Lbto;

    invoke-static {v0}, Lbto;->b(Lbto;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/provider/dm;->a(JJZLcom/twitter/library/provider/b;)I

    .line 98
    invoke-virtual {v7}, Lcom/twitter/library/provider/b;->a()V

    .line 99
    return-void
.end method
