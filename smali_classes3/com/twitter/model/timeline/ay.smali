.class public abstract Lcom/twitter/model/timeline/ay;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Lcom/twitter/model/timeline/al;

.field public final h:Lcom/twitter/model/moments/bg;

.field public final i:Lcom/twitter/model/timeline/l;

.field public final j:Lcom/twitter/model/core/TwitterSocialProof;

.field public final k:J

.field public final l:Z

.field public m:J


# direct methods
.method protected constructor <init>(Lcom/twitter/model/timeline/az;I)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Lcom/twitter/model/timeline/az;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/ay;->b:Ljava/lang/String;

    .line 66
    iget v0, p1, Lcom/twitter/model/timeline/az;->c:I

    iput v0, p0, Lcom/twitter/model/timeline/ay;->d:I

    .line 67
    iget-wide v0, p1, Lcom/twitter/model/timeline/az;->d:J

    iput-wide v0, p0, Lcom/twitter/model/timeline/ay;->e:J

    .line 68
    iget-wide v0, p1, Lcom/twitter/model/timeline/az;->e:J

    iput-wide v0, p0, Lcom/twitter/model/timeline/ay;->m:J

    .line 69
    iget-object v0, p1, Lcom/twitter/model/timeline/az;->g:Lcom/twitter/model/timeline/l;

    iput-object v0, p0, Lcom/twitter/model/timeline/ay;->i:Lcom/twitter/model/timeline/l;

    .line 70
    iget-object v0, p1, Lcom/twitter/model/timeline/az;->f:Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/timeline/ay;->g:Lcom/twitter/model/timeline/al;

    .line 71
    iget-object v0, p1, Lcom/twitter/model/timeline/az;->h:Lcom/twitter/model/core/TwitterSocialProof;

    iput-object v0, p0, Lcom/twitter/model/timeline/ay;->j:Lcom/twitter/model/core/TwitterSocialProof;

    .line 72
    iget-object v0, p1, Lcom/twitter/model/timeline/az;->i:Lcom/twitter/model/moments/bg;

    iput-object v0, p0, Lcom/twitter/model/timeline/ay;->h:Lcom/twitter/model/moments/bg;

    .line 73
    iget-object v0, p1, Lcom/twitter/model/timeline/az;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/ay;->f:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/twitter/model/timeline/ay;->c:I

    .line 75
    iget v0, p1, Lcom/twitter/model/timeline/az;->k:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/twitter/model/timeline/ay;->k:J

    .line 76
    iget-boolean v0, p1, Lcom/twitter/model/timeline/az;->l:Z

    iput-boolean v0, p0, Lcom/twitter/model/timeline/ay;->l:Z

    .line 77
    return-void
.end method

.method public static a(Lcom/twitter/model/timeline/ay;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/timeline/ay;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    instance-of v0, p0, Lcom/twitter/model/timeline/bc;

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/bc;

    .line 95
    invoke-interface {v0}, Lcom/twitter/model/timeline/bc;->a()Ljava/util/List;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/twitter/model/timeline/az;",
            ">(",
            "Ljava/util/List",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;I)Lcom/twitter/util/collection/ac;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    .line 140
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/az;->b(I)Lcom/twitter/model/timeline/az;

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    .line 144
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/az;->b(I)Lcom/twitter/model/timeline/az;

    goto :goto_1

    .line 146
    :cond_1
    return-void
.end method

.method public static b(Lcom/twitter/model/timeline/ay;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/timeline/ay;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    instance-of v0, p0, Lcom/twitter/model/timeline/bd;

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/bd;

    .line 104
    invoke-interface {v0}, Lcom/twitter/model/timeline/bd;->c()Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/twitter/model/timeline/ay;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/timeline/ay;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/topic/TwitterTopic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    instance-of v0, p0, Lcom/twitter/model/timeline/bb;

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/bb;

    .line 113
    invoke-interface {v0}, Lcom/twitter/model/timeline/bb;->a()Ljava/util/List;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Lcom/twitter/model/timeline/ay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    instance-of v0, p0, Lcom/twitter/model/timeline/be;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/be;

    .line 122
    invoke-interface {v0}, Lcom/twitter/model/timeline/be;->c()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/twitter/model/timeline/ay;)Lcss;
    .locals 1

    .prologue
    .line 129
    instance-of v0, p0, Lcom/twitter/model/timeline/ba;

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ba;

    .line 131
    invoke-interface {v0}, Lcom/twitter/model/timeline/ba;->b()Lcss;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bp_()Z
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "RecosTweet"

    iget-object v1, p0, Lcom/twitter/model/timeline/ay;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "ItlTweet"

    iget-object v1, p0, Lcom/twitter/model/timeline/ay;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "Moments"

    iget-object v1, p0, Lcom/twitter/model/timeline/ay;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
