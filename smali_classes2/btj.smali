.class Lbtj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbti;


# direct methods
.method constructor <init>(Lbti;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lbtj;->a:Lbti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 154
    iget-object v0, p0, Lbtj;->a:Lbti;

    invoke-static {v0}, Lbti;->a(Lbti;)Lcom/twitter/library/provider/b;

    move-result-object v7

    .line 155
    iget-object v0, p0, Lbtj;->a:Lbti;

    invoke-static {v0}, Lbti;->c(Lbti;)Lcom/twitter/library/provider/dm;

    move-result-object v1

    iget-object v0, p0, Lbtj;->a:Lbti;

    invoke-virtual {v0}, Lbti;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    iget-object v0, p0, Lbtj;->a:Lbti;

    invoke-static {v0}, Lbti;->b(Lbti;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/provider/dm;->a(JJZLcom/twitter/library/provider/b;)I

    .line 156
    invoke-virtual {v7}, Lcom/twitter/library/provider/b;->a()V

    .line 157
    return-void
.end method
