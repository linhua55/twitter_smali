.class public Larj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lari;


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Lcom/twitter/model/core/TwitterUser;

.field private final d:Lcss;


# direct methods
.method public constructor <init>(Lcom/twitter/library/provider/dm;Lcom/twitter/library/client/bd;Lcom/twitter/model/core/TwitterUser;Lcss;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Larj;->a:Lcom/twitter/library/provider/dm;

    .line 34
    iput-object p2, p0, Larj;->b:Lcom/twitter/library/client/bd;

    .line 35
    iput-object p3, p0, Larj;->c:Lcom/twitter/model/core/TwitterUser;

    .line 36
    iput-object p4, p0, Larj;->d:Lcss;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            ")",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lbul;

    invoke-direct {v0, p1, p2}, Lbul;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 43
    iget-object v1, p0, Larj;->c:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    iput-wide v2, v0, Lbul;->a:J

    .line 44
    new-instance v1, Lark;

    iget-object v2, p0, Larj;->a:Lcom/twitter/library/provider/dm;

    iget-object v3, p0, Larj;->b:Lcom/twitter/library/client/bd;

    iget-object v4, p0, Larj;->c:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v1, v2, v3, v0, v4}, Lark;-><init>(Lcom/twitter/library/provider/dm;Lcom/twitter/library/client/bd;Lbul;Lcom/twitter/model/core/TwitterUser;)V

    invoke-static {v1}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/client/Session;Larm;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 51
    new-instance v0, Lbvb;

    iget-object v1, p0, Larj;->c:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, p0, Larj;->d:Lcss;

    invoke-direct {v0, p1, p2, v1, v2}, Lbvb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    .line 53
    invoke-virtual {p3}, Larm;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0, v5, v3}, Lbvb;->a(IZ)Lbvb;

    .line 55
    invoke-virtual {v0, v3}, Lbvb;->a(I)Lbvb;

    .line 56
    invoke-virtual {v0, v4}, Lbvb;->a(I)Lbvb;

    .line 64
    :goto_0
    iget-object v1, p0, Larj;->b:Lcom/twitter/library/client/bd;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 65
    return-void

    .line 59
    :cond_0
    invoke-virtual {p3}, Larm;->e()Z

    move-result v1

    .line 58
    invoke-virtual {v0, v3, v1}, Lbvb;->a(IZ)Lbvb;

    .line 61
    invoke-virtual {p3}, Larm;->c()Z

    move-result v1

    .line 60
    invoke-virtual {v0, v4, v1}, Lbvb;->a(IZ)Lbvb;

    .line 62
    invoke-virtual {v0, v5}, Lbvb;->a(I)Lbvb;

    goto :goto_0
.end method
