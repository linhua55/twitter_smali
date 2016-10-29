.class Lbud;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbuc;


# direct methods
.method constructor <init>(Lbuc;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lbud;->a:Lbuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v0, p0, Lbud;->a:Lbuc;

    invoke-static {v0}, Lbuc;->a(Lbuc;)Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 115
    iget-object v0, p0, Lbud;->a:Lbuc;

    invoke-static {v0}, Lbuc;->c(Lbuc;)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iget-object v1, p0, Lbud;->a:Lbuc;

    invoke-static {v1}, Lbuc;->b(Lbuc;)J

    move-result-wide v1

    iget-object v5, p0, Lbud;->a:Lbuc;

    invoke-virtual {v5}, Lbuc;->N()Lcom/twitter/library/service/ab;

    move-result-object v5

    iget-wide v6, v5, Lcom/twitter/library/service/ab;->c:J

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/provider/dm;->b(JILcom/twitter/library/provider/b;ZJ)V

    .line 116
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    .line 117
    return-void
.end method
