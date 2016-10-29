.class public Lcom/twitter/model/core/cs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/core/w;


# static fields
.field public static final a:Lcom/twitter/model/core/cs;


# instance fields
.field public final A:Lcom/twitter/model/core/cc;

.field public final B:Lcom/twitter/model/core/cf;

.field public final C:I

.field public final D:Z

.field public E:Lcom/twitter/model/core/TwitterUser;

.field public F:Z

.field public G:I

.field public H:Lcom/twitter/model/core/cs;

.field public I:J

.field public J:Z

.field public K:Lcom/twitter/model/search/m;

.field public L:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public d:Z

.field public final e:Lcom/twitter/model/core/bm;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:J

.field public final l:Ljava/lang/String;

.field public final m:Z

.field public final n:J

.field public final o:Lcom/twitter/model/core/cs;

.field public final p:I

.field public final q:J

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Ljava/lang/String;

.field public final w:Lcss;

.field public final x:Lcom/twitter/model/geo/d;

.field public final y:Lcom/twitter/model/geo/TwitterPlace;

.field public final z:Lclw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/twitter/model/core/ct;

    invoke-direct {v0}, Lcom/twitter/model/core/ct;-><init>()V

    const-wide/16 v2, 0x1

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/ct;->a(J)Lcom/twitter/model/core/ct;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/TwitterUser;->b:Lcom/twitter/model/core/TwitterUser;

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/ct;->b(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/ct;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/twitter/model/core/ct;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    sput-object v0, Lcom/twitter/model/core/cs;->a:Lcom/twitter/model/core/cs;

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/twitter/model/core/ct;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-wide v0, p1, Lcom/twitter/model/core/ct;->a:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->b:J

    .line 101
    iget-object v0, p1, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    .line 102
    iget-object v0, p1, Lcom/twitter/model/core/ct;->g:Lcom/twitter/model/core/bm;

    sget-object v1, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    .line 103
    iget-wide v0, p1, Lcom/twitter/model/core/ct;->h:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->h:J

    .line 104
    iget-object v0, p1, Lcom/twitter/model/core/ct;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->i:Ljava/lang/String;

    .line 105
    iget-wide v0, p1, Lcom/twitter/model/core/ct;->j:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->j:J

    .line 106
    iget-wide v0, p1, Lcom/twitter/model/core/ct;->k:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->k:J

    .line 107
    iget-object v0, p1, Lcom/twitter/model/core/ct;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->l:Ljava/lang/String;

    .line 108
    iget-boolean v0, p1, Lcom/twitter/model/core/ct;->m:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->m:Z

    .line 109
    iget-wide v0, p1, Lcom/twitter/model/core/ct;->n:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->n:J

    .line 110
    iget-object v0, p1, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    .line 111
    iget-boolean v0, p1, Lcom/twitter/model/core/ct;->p:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->F:Z

    .line 112
    iget v0, p1, Lcom/twitter/model/core/ct;->q:I

    iput v0, p0, Lcom/twitter/model/core/cs;->p:I

    .line 113
    iget v0, p1, Lcom/twitter/model/core/ct;->r:I

    iput v0, p0, Lcom/twitter/model/core/cs;->G:I

    .line 114
    iget-wide v0, p1, Lcom/twitter/model/core/ct;->s:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->q:J

    .line 115
    iget-object v0, p1, Lcom/twitter/model/core/ct;->t:Ljava/lang/String;

    const-string/jumbo v1, "und"

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->r:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/twitter/model/core/ct;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->v:Ljava/lang/String;

    .line 117
    iget-boolean v0, p1, Lcom/twitter/model/core/ct;->v:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->s:Z

    .line 118
    iget-boolean v0, p1, Lcom/twitter/model/core/ct;->w:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->t:Z

    .line 119
    iget-boolean v0, p1, Lcom/twitter/model/core/ct;->x:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->u:Z

    .line 120
    iget-object v0, p1, Lcom/twitter/model/core/ct;->y:Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->w:Lcss;

    .line 121
    iget-object v0, p1, Lcom/twitter/model/core/ct;->z:Lcom/twitter/model/geo/d;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->x:Lcom/twitter/model/geo/d;

    .line 122
    iget-object v0, p1, Lcom/twitter/model/core/ct;->A:Lcom/twitter/model/geo/TwitterPlace;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->y:Lcom/twitter/model/geo/TwitterPlace;

    .line 123
    iget-object v0, p1, Lcom/twitter/model/core/ct;->B:Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->H:Lcom/twitter/model/core/cs;

    .line 124
    iget-wide v0, p1, Lcom/twitter/model/core/ct;->C:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->I:J

    .line 125
    iget-boolean v0, p1, Lcom/twitter/model/core/ct;->D:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->J:Z

    .line 127
    iget-object v0, p1, Lcom/twitter/model/core/ct;->E:Lclw;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->z:Lclw;

    :goto_0
    iput-object v0, p0, Lcom/twitter/model/core/cs;->z:Lclw;

    .line 129
    iget-object v0, p1, Lcom/twitter/model/core/ct;->F:Lcom/twitter/model/search/m;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    .line 130
    invoke-virtual {p0}, Lcom/twitter/model/core/cs;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/cs;->w:Lcss;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/model/core/cs;->w:Lcss;

    invoke-virtual {v0}, Lcss;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    :cond_0
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->L:J

    .line 135
    :goto_1
    iget-object v0, p1, Lcom/twitter/model/core/ct;->G:Lcom/twitter/model/core/cc;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->A:Lcom/twitter/model/core/cc;

    .line 136
    iget-object v0, p1, Lcom/twitter/model/core/ct;->H:Lcom/twitter/model/core/cf;

    iput-object v0, p0, Lcom/twitter/model/core/cs;->B:Lcom/twitter/model/core/cf;

    .line 137
    iget v0, p1, Lcom/twitter/model/core/ct;->I:I

    iput v0, p0, Lcom/twitter/model/core/cs;->C:I

    .line 138
    iget-boolean v0, p1, Lcom/twitter/model/core/ct;->J:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->D:Z

    .line 140
    iget-object v0, p1, Lcom/twitter/model/core/ct;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cs;->c:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/model/core/cs;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    invoke-static {v0, v1}, Lcom/twitter/model/core/bm;->a(Ljava/lang/StringBuilder;Lcom/twitter/model/core/bm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cs;->f:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/twitter/model/core/cs;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    invoke-static {v0, v1}, Lcom/twitter/model/core/bm;->b(Ljava/lang/CharSequence;Lcom/twitter/model/core/bm;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/core/cs;->g:Z

    .line 145
    return-void

    .line 127
    :cond_1
    iget-object v0, p1, Lcom/twitter/model/core/ct;->E:Lclw;

    goto :goto_0

    .line 133
    :cond_2
    iget-wide v0, p0, Lcom/twitter/model/core/cs;->h:J

    iput-wide v0, p0, Lcom/twitter/model/core/cs;->L:J

    goto :goto_1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    iget-wide v0, v0, Lcom/twitter/model/core/cs;->b:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/twitter/model/core/cs;->b:J

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/cs;)Z
    .locals 4

    .prologue
    .line 153
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/cs;->b:J

    iget-wide v2, p1, Lcom/twitter/model/core/cs;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/twitter/model/core/cs;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/twitter/model/core/cs;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    :cond_0
    return-object p0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "popular"

    iget-object v1, p0, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    iget-object v1, v1, Lcom/twitter/model/search/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "news"

    iget-object v1, p0, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    iget-object v1, v1, Lcom/twitter/model/search/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 149
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/core/cs;

    invoke-virtual {p0, p1}, Lcom/twitter/model/core/cs;->a(Lcom/twitter/model/core/cs;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/twitter/model/core/cs;->w:Lcss;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/core/cs;->n:J

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

.method public h()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/model/core/cs;->B:Lcom/twitter/model/core/cf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/twitter/model/core/cs;->b:J

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v0

    return v0
.end method
