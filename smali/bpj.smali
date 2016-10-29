.class public Lbpj;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/api/v",
        "<",
        "Lcom/twitter/model/core/cm;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLjava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lbpj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 34
    iput-wide p3, p0, Lbpj;->a:J

    .line 35
    iput-wide p5, p0, Lbpj;->b:J

    .line 36
    iput-object p7, p0, Lbpj;->c:Ljava/lang/String;

    .line 37
    iput-boolean p8, p0, Lbpj;->h:Z

    .line 38
    iput-object p9, p0, Lbpj;->g:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLjava/lang/String;ZLjava/lang/String;)Lbpj;
    .locals 12

    .prologue
    .line 49
    new-instance v1, Lbpj;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lbpj;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLjava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;ZLjava/lang/String;)Lbpj;
    .locals 12

    .prologue
    .line 43
    new-instance v1, Lbpj;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lbpj;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLjava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-virtual {p0}, Lbpj;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lbpj;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v1

    .line 59
    iget-wide v2, p0, Lbpj;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 60
    new-array v0, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "lists"

    aput-object v2, v0, v6

    const-string/jumbo v2, "create"

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    .line 65
    :goto_0
    const-string/jumbo v2, "mode"

    iget-boolean v0, p0, Lbpj;->h:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "private"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 66
    iget-object v0, p0, Lbpj;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "description"

    iget-object v2, p0, Lbpj;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 69
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    new-array v0, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "lists"

    aput-object v2, v0, v6

    const-string/jumbo v2, "update"

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "list_id"

    iget-wide v4, p0, Lbpj;->a:J

    .line 63
    invoke-virtual {v0, v2, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 65
    :cond_2
    const-string/jumbo v0, "public"

    goto :goto_1
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/v",
            "<",
            "Lcom/twitter/model/core/cm;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p3}, Lcom/twitter/library/api/v;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/twitter/model/core/cm;

    .line 83
    invoke-virtual {p0}, Lbpj;->T()Lcom/twitter/library/provider/b;

    move-result-object v7

    .line 84
    invoke-virtual {p0}, Lbpj;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lbpj;->b:J

    const/4 v5, 0x0

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JILjava/lang/String;ZLcom/twitter/library/provider/b;)V

    .line 86
    invoke-virtual {v7}, Lcom/twitter/library/provider/b;->a()V

    .line 88
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 23
    check-cast p3, Lcom/twitter/library/api/v;

    invoke-virtual {p0, p1, p2, p3}, Lbpj;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/v;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/v",
            "<",
            "Lcom/twitter/model/core/cm;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-class v0, Lcom/twitter/model/core/cm;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lbpj;->b()Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method
