.class Lcom/twitter/library/network/as;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lnr;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/twitter/library/network/ar;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/ar;JLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    iput-wide p2, p0, Lcom/twitter/library/network/as;->a:J

    iput-object p4, p0, Lcom/twitter/library/network/as;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    invoke-static {v0}, Lcom/twitter/library/network/ar;->a(Lcom/twitter/library/network/ar;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    iget-object v1, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    invoke-static {v1}, Lcom/twitter/library/network/ar;->b(Lcom/twitter/library/network/ar;)Lcom/twitter/platform/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/platform/u;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/twitter/library/network/as;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/twitter/library/network/ar;->a(Lcom/twitter/library/network/ar;J)J

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    iget-object v1, p0, Lcom/twitter/library/network/as;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    invoke-static {v4}, Lcom/twitter/library/network/ar;->a(Lcom/twitter/library/network/ar;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/network/ar;->a(Landroid/content/Context;ZIJ)V

    .line 72
    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    invoke-static {v0}, Lcom/twitter/library/network/ar;->a(Lcom/twitter/library/network/ar;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    iget-object v1, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    invoke-static {v1}, Lcom/twitter/library/network/ar;->b(Lcom/twitter/library/network/ar;)Lcom/twitter/platform/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/platform/u;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/twitter/library/network/as;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/twitter/library/network/ar;->a(Lcom/twitter/library/network/ar;J)J

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    iget-object v1, p0, Lcom/twitter/library/network/as;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/network/as;->c:Lcom/twitter/library/network/ar;

    invoke-static {v3}, Lcom/twitter/library/network/ar;->a(Lcom/twitter/library/network/ar;)J

    move-result-wide v4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/network/ar;->a(Landroid/content/Context;ZIJ)V

    .line 80
    return-void
.end method
