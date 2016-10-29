.class public Lbqu;
.super Lcom/twitter/library/service/x;
.source "Twttr"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:J

.field private final c:Lcom/twitter/model/account/OAuthToken;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbqu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;)V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lbqu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/service/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    iput-wide p2, p0, Lbqu;->b:J

    .line 39
    iput-object p5, p0, Lbqu;->c:Lcom/twitter/model/account/OAuthToken;

    .line 40
    iput-object p4, p0, Lbqu;->g:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method protected a_(Lcom/twitter/library/service/aa;)V
    .locals 15

    .prologue
    .line 47
    sget-object v10, Lbqu;->a:Ljava/lang/Object;

    monitor-enter v10

    .line 48
    :try_start_0
    iget-object v2, p0, Lbqu;->p:Landroid/content/Context;

    iget-wide v4, p0, Lbqu;->b:J

    .line 49
    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v2

    .line 50
    invoke-static {}, Lcom/twitter/library/api/PromotedEvent;->a()Ljava/util/Map;

    move-result-object v11

    .line 51
    invoke-virtual {v2}, Lcom/twitter/library/provider/dm;->g()Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/api/z;

    .line 53
    iget-object v3, v2, Lcom/twitter/library/api/z;->b:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/twitter/library/api/PromotedEvent;

    move-object v9, v0

    .line 54
    if-eqz v9, :cond_0

    .line 55
    new-instance v13, Lbqt;

    iget-object v14, p0, Lbqu;->p:Landroid/content/Context;

    new-instance v3, Lcom/twitter/library/service/ab;

    iget-wide v4, p0, Lbqu;->b:J

    iget-object v6, p0, Lbqu;->g:Ljava/lang/String;

    iget-object v7, p0, Lbqu;->c:Lcom/twitter/model/account/OAuthToken;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/twitter/library/service/ab;-><init>(JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Z)V

    invoke-direct {v13, v14, v3, v9}, Lbqt;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/library/api/PromotedEvent;)V

    iget-object v3, v2, Lcom/twitter/library/api/z;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {v13, v3}, Lbqt;->b(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-wide v4, v2, Lcom/twitter/library/api/z;->c:J

    .line 59
    invoke-virtual {v3, v4, v5}, Lbqt;->a(J)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->d:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v4}, Lbqt;->a(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-boolean v4, v2, Lcom/twitter/library/api/z;->e:Z

    .line 61
    invoke-virtual {v3, v4}, Lbqt;->a(Z)Lbqt;

    move-result-object v3

    const/4 v4, 0x1

    .line 62
    invoke-virtual {v3, v4}, Lbqt;->b(Z)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->g:Ljava/lang/String;

    .line 63
    invoke-virtual {v3, v4}, Lbqt;->c(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->h:Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v4}, Lbqt;->d(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->i:Ljava/lang/String;

    .line 65
    invoke-virtual {v3, v4}, Lbqt;->e(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->j:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v4}, Lbqt;->f(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->k:Ljava/lang/String;

    .line 67
    invoke-virtual {v3, v4}, Lbqt;->g(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->l:Ljava/lang/String;

    .line 68
    invoke-virtual {v3, v4}, Lbqt;->h(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/library/api/z;->m:Ljava/lang/String;

    .line 69
    invoke-virtual {v3, v4}, Lbqt;->i(Ljava/lang/String;)Lbqt;

    move-result-object v3

    iget-object v2, v2, Lcom/twitter/library/api/z;->n:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v2}, Lbqt;->j(Ljava/lang/String;)Lbqt;

    move-result-object v2

    .line 71
    invoke-virtual {v2, p0}, Lbqt;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/service/x;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/twitter/library/service/x;->P()Lcom/twitter/library/service/aa;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 74
    :cond_0
    :try_start_1
    new-instance v2, Lbiv;

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Unexpected promoted event stored"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v3, "event"

    .line 75
    invoke-virtual {v2, v3, v9}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lbix;->a(Lbiv;)V

    goto/16 :goto_0

    .line 78
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    return-void
.end method
