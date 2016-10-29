.class public Lawb;
.super Lave;
.source "Twttr"


# instance fields
.field private final a:Lawe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lawe;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lave;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lawb;->a:Lawe;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lavh;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    iget-object v0, p0, Lawb;->a:Lawe;

    iget-boolean v0, v0, Lawe;->a:Z

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v1, "topics_ev_type=5 AND list_mapping_list_mapping_user_id=? AND list_mapping_list_mapping_type=?"

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lawb;->a:Lawe;

    iget-wide v2, v2, Lawe;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 35
    :goto_0
    new-instance v2, Lavj;

    invoke-direct {v2}, Lavj;-><init>()V

    sget-object v3, Lcom/twitter/library/provider/cz;->a:Landroid/net/Uri;

    iget-object v4, p0, Lawb;->a:Lawe;

    iget-wide v4, v4, Lawe;->d:J

    .line 36
    invoke-static {v3, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v1}, Lavj;->a(Ljava/lang/String;)Lavj;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Lavj;->b([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 35
    return-object v0

    .line 31
    :cond_0
    const-string/jumbo v1, "topics_ev_type=5 AND list_mapping_list_mapping_user_id=? AND list_mapping_list_mapping_type IN (0,2)"

    .line 32
    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lawb;->a:Lawe;

    iget-wide v2, v2, Lawe;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0
.end method
