.class Lbua;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbtz;


# direct methods
.method constructor <init>(Lbtz;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lbua;->a:Lbtz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 203
    iget-object v0, p0, Lbua;->a:Lbtz;

    invoke-static {v0}, Lbtz;->a(Lbtz;)Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 205
    iget-object v0, p0, Lbua;->a:Lbtz;

    invoke-static {v0}, Lbtz;->b(Lbtz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/16 v3, 0x4000

    .line 210
    :goto_0
    iget-object v0, p0, Lbua;->a:Lbtz;

    invoke-static {v0}, Lbtz;->e(Lbtz;)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iget-object v1, p0, Lbua;->a:Lbtz;

    invoke-static {v1}, Lbtz;->d(Lbtz;)J

    move-result-wide v1

    iget-object v6, p0, Lbua;->a:Lbtz;

    invoke-virtual {v6}, Lbtz;->N()Lcom/twitter/library/service/ab;

    move-result-object v6

    iget-wide v6, v6, Lcom/twitter/library/service/ab;->c:J

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/provider/dm;->a(JILcom/twitter/library/provider/b;ZJ)V

    .line 211
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    .line 212
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lbua;->a:Lbtz;

    invoke-static {v0}, Lbtz;->c(Lbtz;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x100

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1
.end method
