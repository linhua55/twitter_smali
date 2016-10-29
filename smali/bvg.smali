.class public Lbvg;
.super Lbky;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbky",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/core/cv;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/model/core/TwitterUser;

.field public b:Lcom/twitter/model/core/cj;

.field private final c:J

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 66
    new-instance v3, Lcom/twitter/library/service/ab;

    invoke-direct {v3, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lbvg;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 76
    const-class v0, Lbvg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lbky;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 77
    iput-wide p3, p0, Lbvg;->c:J

    .line 78
    iput-object p5, p0, Lbvg;->h:Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lbvg;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lbvg;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId must be non-zero or screenName must be non-null. userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lbvg;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", screenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbvg;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/cv;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/twitter/model/core/cv;

    .line 113
    if-eqz v11, :cond_3

    .line 114
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/twitter/model/core/cv;->d(J)Lcom/twitter/model/core/cv;

    .line 115
    invoke-virtual {v11}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/twitter/model/core/TwitterUser;

    .line 117
    invoke-virtual {p0}, Lbvg;->T()Lcom/twitter/library/provider/b;

    move-result-object v10

    .line 118
    invoke-virtual {p0}, Lbvg;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    invoke-static {v12}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;ZLcom/twitter/library/provider/b;)I

    .line 120
    invoke-virtual {v10}, Lcom/twitter/library/provider/b;->a()V

    .line 122
    invoke-virtual {p0}, Lbvg;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/library/service/ab;->c:J

    iget-wide v2, v12, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lbul;

    iget-object v1, p0, Lbvg;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lbvg;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbul;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 124
    iget-wide v2, v12, Lcom/twitter/model/core/TwitterUser;->c:J

    iput-wide v2, v0, Lbul;->a:J

    .line 125
    invoke-virtual {v0}, Lbul;->P()Lcom/twitter/library/service/aa;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget v0, v0, Lbul;->b:I

    invoke-virtual {v11, v0}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    .line 130
    :cond_0
    iget-boolean v0, v12, Lcom/twitter/model/core/TwitterUser;->s:Z

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Lbug;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    :cond_1
    new-instance v0, Lbuk;

    iget-object v1, p0, Lbvg;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lbvg;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbuk;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 133
    iput-object v12, v0, Lbuk;->a:Lcom/twitter/model/core/TwitterUser;

    .line 135
    invoke-virtual {v0}, Lbuk;->P()Lcom/twitter/library/service/aa;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v0, v0, Lbuk;->b:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v11, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/core/cv;

    .line 140
    :cond_2
    invoke-virtual {v11}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lbvg;->a:Lcom/twitter/model/core/TwitterUser;

    .line 145
    :cond_3
    :goto_0
    return-void

    .line 143
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/library/api/t;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    iput-object v0, p0, Lbvg;->b:Lcom/twitter/model/core/cj;

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 30
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lbvg;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/service/e;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-virtual {p0}, Lbvg;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "users"

    aput-object v3, v1, v2

    const-string/jumbo v2, "show"

    aput-object v2, v1, v4

    .line 89
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_media_features"

    .line 90
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_user_entities"

    .line 91
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "send_error_codes"

    .line 92
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->d()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->c()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 95
    iget-wide v2, p0, Lbvg;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v1, "screen_name"

    iget-object v2, p0, Lbvg;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 100
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const-string/jumbo v1, "user_id"

    iget-wide v2, p0, Lbvg;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    goto :goto_0
.end method

.method protected e()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/cv;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const-class v0, Lcom/twitter/model/core/cv;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lbvg;->e()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method
