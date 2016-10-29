.class public Lbuc;
.super Lcom/twitter/library/api/af;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/af",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:J

.field private final c:Lcss;

.field private g:I

.field private final h:Ljava/lang/String;

.field private final i:Lcom/twitter/library/provider/dm;

.field private final j:Lcom/twitter/library/api/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V
    .locals 7

    .prologue
    .line 50
    new-instance v3, Lcom/twitter/library/service/ab;

    invoke-direct {v3, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLcss;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLcss;)V
    .locals 9

    .prologue
    .line 55
    iget-wide v0, p2, Lcom/twitter/library/service/ab;->c:J

    invoke-static {p1, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v7

    const-class v0, Lcom/twitter/model/core/TwitterUser;

    .line 56
    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 55
    invoke-direct/range {v1 .. v8}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLcss;Lcom/twitter/library/provider/dm;Lcom/twitter/library/api/t;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLcss;Lcom/twitter/library/provider/dm;Lcom/twitter/library/api/t;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/service/ab;",
            "J",
            "Lcss;",
            "Lcom/twitter/library/provider/dm;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    const-class v0, Lbuc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 65
    iput-wide p3, p0, Lbuc;->b:J

    .line 66
    iput-object p5, p0, Lbuc;->c:Lcss;

    .line 69
    invoke-static {p3, p4, p2}, Lbtz;->a(JLcom/twitter/library/service/ab;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbuc;->h:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/twitter/library/service/t;

    invoke-direct {v0}, Lcom/twitter/library/service/t;-><init>()V

    invoke-virtual {p0, v0}, Lbuc;->a(Lcom/twitter/library/service/f;)V

    .line 72
    iput-object p6, p0, Lbuc;->i:Lcom/twitter/library/provider/dm;

    .line 73
    iput-object p7, p0, Lbuc;->j:Lcom/twitter/library/api/t;

    .line 74
    return-void
.end method

.method static synthetic a(Lbuc;)Lcom/twitter/library/provider/b;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lbuc;->T()Lcom/twitter/library/provider/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lbuc;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lbuc;->b:J

    return-wide v0
.end method

.method static synthetic c(Lbuc;)Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbuc;->i:Lcom/twitter/library/provider/dm;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lbuc;
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lbuc;->g:I

    .line 145
    return-object p0
.end method

.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 84
    invoke-virtual {p0}, Lbuc;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 85
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "friendships"

    aput-object v3, v1, v2

    const-string/jumbo v2, "destroy"

    aput-object v2, v1, v4

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    iget-wide v2, p0, Lbuc;->b:J

    .line 87
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lbuc;->c:Lcss;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lbuc;->c:Lcss;

    iget-object v1, v1, Lcss;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v1, "impression_id"

    iget-object v2, p0, Lbuc;->c:Lcss;

    iget-object v2, v2, Lcss;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 93
    :cond_0
    iget-object v1, p0, Lbuc;->c:Lcss;

    invoke-virtual {v1}, Lcss;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string/jumbo v1, "earned"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 97
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/internal/android/service/ab;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 123
    invoke-super {p0, p1}, Lcom/twitter/library/api/af;->a(Lcom/twitter/internal/android/service/ab;)V

    .line 124
    invoke-virtual {p0}, Lbuc;->T()Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 125
    invoke-virtual {p0}, Lbuc;->U()Z

    move-result v0

    .line 126
    invoke-virtual {p0}, Lbuc;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v6, v1, Lcom/twitter/library/service/ab;->c:J

    .line 127
    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lbuc;->i:Lcom/twitter/library/provider/dm;

    iget-wide v1, p0, Lbuc;->b:J

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/provider/dm;->b(JILcom/twitter/library/provider/b;ZJ)V

    .line 129
    iget-object v5, p0, Lbuc;->i:Lcom/twitter/library/provider/dm;

    iget-wide v8, p0, Lbuc;->b:J

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/library/provider/dm;->b(JJLcom/twitter/library/provider/b;)V

    .line 130
    invoke-static {}, Lbug;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lbuc;->i:Lcom/twitter/library/provider/dm;

    iget-wide v2, p0, Lbuc;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(J)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 132
    new-instance v1, Lbuk;

    iget-object v2, p0, Lbuc;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lbuc;->N()Lcom/twitter/library/service/ab;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbuk;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 133
    iput-object v0, v1, Lbuk;->a:Lcom/twitter/model/core/TwitterUser;

    .line 134
    invoke-virtual {p0, v1}, Lbuc;->b(Lcom/twitter/internal/android/service/AsyncOperation;)V

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    .line 141
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lbuc;->i:Lcom/twitter/library/provider/dm;

    iget-wide v1, p0, Lbuc;->b:J

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/provider/dm;->a(JILcom/twitter/library/provider/b;ZJ)V

    goto :goto_0
.end method

.method protected b()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lbuc;->j:Lcom/twitter/library/api/t;

    return-object v0
.end method

.method public c(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/service/AsyncOperation;->cancel(Z)Z

    .line 108
    :cond_0
    new-instance v0, Lbud;

    invoke-direct {v0, p0}, Lbud;-><init>(Lbuc;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "app:twitter_service:follow:delete"

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lbuc;->b()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lbuc;->b:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lbuc;->g:I

    return v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lbuc;->h:Ljava/lang/String;

    return-object v0
.end method
