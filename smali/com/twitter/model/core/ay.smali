.class public Lcom/twitter/model/core/ay;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/ay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/twitter/model/core/bm;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Lclw;

.field public l:Z

.field public m:Lcss;

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:J

.field public r:J

.field public s:Z

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/model/core/ba;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/ba;-><init>(Lcom/twitter/model/core/az;)V

    sput-object v0, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    .line 77
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->p:J

    iput-wide v0, p0, Lcom/twitter/model/core/ay;->e:J

    .line 78
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->o:J

    iput-wide v0, p0, Lcom/twitter/model/core/ay;->b:J

    .line 79
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    .line 84
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->m:J

    iput-wide v0, p0, Lcom/twitter/model/core/ay;->i:J

    .line 85
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->j:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/ay;->k:Lclw;

    .line 87
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->C()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->l:Z

    .line 88
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/ay;->m:Lcss;

    .line 89
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->n:Z

    .line 90
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->a:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->o:Z

    .line 91
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->p:Ljava/lang/String;

    .line 92
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->y:J

    iput-wide v0, p0, Lcom/twitter/model/core/ay;->q:J

    .line 93
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->A:J

    iput-wide v0, p0, Lcom/twitter/model/core/ay;->r:J

    .line 94
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->B:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->s:Z

    .line 95
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->H:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->t:Z

    .line 96
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/model/core/cs;)V
    .locals 6

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    .line 51
    invoke-virtual {p1}, Lcom/twitter/model/core/cs;->c()Lcom/twitter/model/core/cs;

    move-result-object v1

    .line 52
    iget-object v2, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    .line 53
    iget-wide v4, v1, Lcom/twitter/model/core/cs;->b:J

    iput-wide v4, p0, Lcom/twitter/model/core/ay;->e:J

    .line 54
    iget-wide v4, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    iput-wide v4, p0, Lcom/twitter/model/core/ay;->b:J

    .line 55
    invoke-virtual {v2}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    .line 56
    iget-object v0, v2, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    .line 57
    iget-object v0, v1, Lcom/twitter/model/core/cs;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    .line 58
    iget-object v0, v1, Lcom/twitter/model/core/cs;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    .line 59
    iget-object v0, v1, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    .line 60
    iget-wide v4, v1, Lcom/twitter/model/core/cs;->h:J

    iput-wide v4, p0, Lcom/twitter/model/core/ay;->i:J

    .line 61
    iget-object v0, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->j:Ljava/lang/String;

    .line 62
    iget-object v0, v1, Lcom/twitter/model/core/cs;->z:Lclw;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, v1, Lcom/twitter/model/core/cs;->z:Lclw;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->k:Lclw;

    .line 65
    :cond_0
    iget-boolean v0, v1, Lcom/twitter/model/core/cs;->s:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->l:Z

    .line 66
    iget-object v0, v1, Lcom/twitter/model/core/cs;->w:Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->m:Lcss;

    .line 67
    iget-boolean v0, v2, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->n:Z

    .line 68
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->F:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->o:Z

    .line 69
    iget-object v0, v1, Lcom/twitter/model/core/cs;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ay;->p:Ljava/lang/String;

    .line 70
    iget-wide v4, v1, Lcom/twitter/model/core/cs;->k:J

    iput-wide v4, p0, Lcom/twitter/model/core/ay;->q:J

    .line 71
    iget-wide v0, v1, Lcom/twitter/model/core/cs;->j:J

    iput-wide v0, p0, Lcom/twitter/model/core/ay;->r:J

    .line 72
    iget-boolean v0, v2, Lcom/twitter/model/core/TwitterUser;->m:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->s:Z

    .line 73
    iget-boolean v0, v2, Lcom/twitter/model/core/TwitterUser;->n:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ay;->t:Z

    .line 74
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/twitter/model/core/ay;->e:J

    iget-object v2, p0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/twitter/model/core/Tweet;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/model/core/bf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/twitter/model/core/ay;->b:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/twitter/model/core/bf;

    iget-object v1, p0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/model/core/ay;->b:J

    iget-object v4, p0, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/model/core/bf;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 167
    iget-wide v2, v0, Lcom/twitter/model/core/av;->c:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 168
    invoke-static {v0}, Lcom/twitter/model/core/bf;->a(Lcom/twitter/model/core/av;)Lcom/twitter/model/core/bf;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0}, Lcom/twitter/model/core/ac;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-static {v0}, Lcuk;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/am;

    .line 175
    iget-wide v2, v0, Lcom/twitter/model/core/am;->b:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    .line 176
    invoke-static {v0}, Lcom/twitter/model/core/bf;->a(Lcom/twitter/model/core/am;)Lcom/twitter/model/core/bf;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_4
    return-void
.end method

.method public a(Lcom/twitter/model/core/ay;)Z
    .locals 4

    .prologue
    .line 105
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/ay;->b:J

    iget-wide v2, p1, Lcom/twitter/model/core/ay;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    .line 107
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    .line 108
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/ay;->e:J

    iget-wide v2, p1, Lcom/twitter/model/core/ay;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    .line 110
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    .line 111
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    .line 112
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bm;->a(Lcom/twitter/model/core/bm;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/ay;->i:J

    iget-wide v2, p1, Lcom/twitter/model/core/ay;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->j:Ljava/lang/String;

    .line 114
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->k:Lclw;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->k:Lclw;

    .line 115
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->l:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/ay;->l:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->m:Lcss;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->m:Lcss;

    .line 117
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->n:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/ay;->n:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->o:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/ay;->o:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ay;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/ay;->p:Ljava/lang/String;

    .line 120
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/ay;->q:J

    iget-wide v2, p1, Lcom/twitter/model/core/ay;->q:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/ay;->r:J

    iget-wide v2, p1, Lcom/twitter/model/core/ay;->r:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->s:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/ay;->s:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->t:Z

    iget-boolean v1, p1, Lcom/twitter/model/core/ay;->t:Z

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/twitter/model/core/ay;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 100
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/core/ay;

    .line 101
    invoke-virtual {p0, p1}, Lcom/twitter/model/core/ay;->a(Lcom/twitter/model/core/ay;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    iget-wide v4, p0, Lcom/twitter/model/core/ay;->b:J

    invoke-static {v4, v5}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v0

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twitter/model/core/ay;->e:J

    invoke-static {v4, v5}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    invoke-virtual {v3}, Lcom/twitter/model/core/bm;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twitter/model/core/ay;->i:J

    invoke-static {v4, v5}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->k:Lclw;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 139
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->l:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->m:Lcss;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 141
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->n:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 142
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->o:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/model/core/ay;->p:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twitter/model/core/ay;->q:J

    invoke-static {v4, v5}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/twitter/model/core/ay;->r:J

    invoke-static {v4, v5}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 146
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/twitter/model/core/ay;->s:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/twitter/model/core/ay;->t:Z

    if-eqz v3, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 148
    return v0

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v0, v2

    .line 141
    goto :goto_1

    :cond_2
    move v0, v2

    .line 142
    goto :goto_2

    :cond_3
    move v0, v2

    .line 146
    goto :goto_3

    :cond_4
    move v1, v2

    .line 147
    goto :goto_4
.end method
