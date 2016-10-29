.class Lbrn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbrm;


# direct methods
.method constructor <init>(Lbrm;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lbrn;->a:Lbrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 72
    iget-object v0, p0, Lbrn;->a:Lbrm;

    invoke-static {v0}, Lbrm;->a(Lbrm;)Lcom/twitter/library/provider/b;

    move-result-object v7

    .line 73
    iget-object v0, p0, Lbrn;->a:Lbrm;

    iget-object v1, p0, Lbrn;->a:Lbrm;

    invoke-static {v1}, Lbrm;->d(Lbrm;)Lcom/twitter/library/provider/dm;

    move-result-object v1

    iget-object v2, p0, Lbrn;->a:Lbrm;

    invoke-virtual {v2}, Lbrm;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    iget-object v4, p0, Lbrn;->a:Lbrm;

    invoke-static {v4}, Lbrm;->b(Lbrm;)J

    move-result-wide v4

    iget-object v6, p0, Lbrn;->a:Lbrm;

    invoke-static {v6}, Lbrm;->c(Lbrm;)Z

    move-result v6

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/provider/dm;->b(JJZLcom/twitter/library/provider/b;)I

    move-result v1

    invoke-static {v0, v1}, Lbrm;->a(Lbrm;I)I

    .line 74
    invoke-virtual {v7}, Lcom/twitter/library/provider/b;->a()V

    .line 75
    return-void
.end method
