.class public Lbrt;
.super Lbrm;
.source "Twttr"


# instance fields
.field private final b:J

.field private c:Lcss;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V
    .locals 11

    .prologue
    .line 42
    new-instance v3, Lcom/twitter/library/service/ab;

    invoke-direct {v3, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    .line 43
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v8

    const-class v0, Lcom/twitter/model/core/cs;

    .line 44
    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    .line 42
    invoke-direct/range {v1 .. v9}, Lbrt;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JJLcom/twitter/library/provider/dm;Lcom/twitter/library/api/t;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JJLcom/twitter/library/provider/dm;Lcom/twitter/library/api/t;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/service/ab;",
            "JJ",
            "Lcom/twitter/library/provider/dm;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/cs;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lbrm;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JZLcom/twitter/library/provider/dm;Lcom/twitter/library/api/t;)V

    .line 51
    iput-wide p5, p0, Lbrt;->b:J

    .line 52
    new-instance v0, Lcom/twitter/library/service/t;

    invoke-direct {v0}, Lcom/twitter/library/service/t;-><init>()V

    invoke-virtual {p0, v0}, Lbrt;->a(Lcom/twitter/library/service/f;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lcss;)Lbrt;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lbrt;->c:Lcss;

    .line 77
    return-object p0
.end method

.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-virtual {p0}, Lbrt;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 59
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "favorites"

    aput-object v3, v1, v2

    const-string/jumbo v2, "destroy"

    aput-object v2, v1, v4

    .line 60
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lbrt;->b:J

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->d()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->c()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lbrt;->c:Lcss;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbrt;->c:Lcss;

    iget-object v1, v1, Lcss;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "impression_id"

    iget-object v2, p0, Lbrt;->c:Lcss;

    iget-object v2, v2, Lcss;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 67
    iget-object v1, p0, Lbrt;->c:Lcss;

    invoke-virtual {v1}, Lcss;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "earned"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "app:twitter_service:favorite:delete"

    return-object v0
.end method
