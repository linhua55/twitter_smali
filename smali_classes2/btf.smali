.class public Lbtf;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbtf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    .line 18
    invoke-virtual {p0}, Lbtf;->s()Lcom/twitter/library/provider/dm;

    move-result-object v1

    invoke-virtual {p0}, Lbtf;->h()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    const/16 v4, 0xe

    const/4 v5, 0x0

    .line 19
    invoke-virtual {p0}, Lbtf;->t()Lcom/twitter/library/provider/b;

    move-result-object v6

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Lcom/twitter/library/provider/b;)I

    .line 20
    return-void
.end method
