.class public Lcle;
.super Lcks;
.source "Twttr"


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Lckj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckj",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:I

.field public final j:Lckj;

.field public final k:I

.field public final l:I

.field public final m:Lckj;


# direct methods
.method private constructor <init>(Lclg;)V
    .locals 8

    .prologue
    .line 38
    invoke-static {p1}, Lclg;->a(Lclg;)J

    move-result-wide v2

    invoke-static {p1}, Lclg;->b(Lclg;)J

    move-result-wide v4

    invoke-static {p1}, Lclg;->c(Lclg;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcks;-><init>(JJJ)V

    .line 39
    invoke-static {p1}, Lclg;->d(Lclg;)I

    move-result v0

    iput v0, p0, Lcle;->d:I

    .line 40
    invoke-static {p1}, Lclg;->e(Lclg;)I

    move-result v0

    iput v0, p0, Lcle;->e:I

    .line 41
    invoke-static {p1}, Lclg;->f(Lclg;)I

    move-result v0

    iput v0, p0, Lcle;->f:I

    .line 42
    invoke-static {p1}, Lclg;->g(Lclg;)I

    move-result v0

    iput v0, p0, Lcle;->h:I

    .line 43
    invoke-static {p1}, Lclg;->h(Lclg;)I

    move-result v0

    iput v0, p0, Lcle;->i:I

    .line 44
    invoke-static {p1}, Lclg;->i(Lclg;)I

    move-result v0

    iput v0, p0, Lcle;->k:I

    .line 45
    invoke-static {p1}, Lclg;->j(Lclg;)I

    move-result v0

    iput v0, p0, Lcle;->l:I

    .line 46
    iget v0, p0, Lcle;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 48
    new-instance v0, Lckj;

    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lckj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcle;->g:Lckj;

    .line 49
    new-instance v0, Lckj;

    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lckj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcle;->j:Lckj;

    .line 54
    :goto_0
    invoke-static {p1}, Lclg;->m(Lclg;)Lckj;

    move-result-object v0

    iput-object v0, p0, Lcle;->m:Lckj;

    .line 55
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lclg;->k(Lclg;)Lckj;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckj;

    iput-object v0, p0, Lcle;->g:Lckj;

    .line 52
    invoke-static {p1}, Lclg;->l(Lclg;)Lckj;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckj;

    iput-object v0, p0, Lcle;->j:Lckj;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lclg;Lclf;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcle;-><init>(Lclg;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcle;->b:J

    return-wide v0
.end method

.method public a(Lcle;)Z
    .locals 4

    .prologue
    .line 63
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcle;->a:J

    iget-wide v2, p1, Lcle;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcle;->d:I

    iget v1, p1, Lcle;->d:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcle;->b:J

    iget-wide v2, p1, Lcle;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcle;->c:J

    iget-wide v2, p1, Lcle;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcle;->f:I

    iget v1, p1, Lcle;->f:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcle;->e:I

    iget v1, p1, Lcle;->e:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcle;->l:I

    iget v1, p1, Lcle;->l:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcle;->k:I

    iget v1, p1, Lcle;->k:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcle;->i:I

    iget v1, p1, Lcle;->i:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcle;->h:I

    iget v1, p1, Lcle;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcle;->g:Lckj;

    iget-object v1, p1, Lcle;->g:Lckj;

    .line 74
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcle;->j:Lckj;

    iget-object v1, p1, Lcle;->j:Lckj;

    .line 75
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcle;->m:Lckj;

    iget-object v1, p1, Lcle;->m:Lckj;

    .line 76
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcle;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcle;->b:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcle;->b:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcle;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 59
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcle;

    if-eqz v0, :cond_1

    check-cast p1, Lcle;

    invoke-virtual {p0, p1}, Lcle;->a(Lcle;)Z

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

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcle;->g:Lckj;

    iget-object v0, v0, Lckj;->a:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 81
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcle;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcle;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcle;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcle;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcle;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcle;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcle;->g:Lckj;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcle;->h:I

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcle;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcle;->j:Lckj;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcle;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcle;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcle;->m:Lckj;

    aput-object v2, v0, v1

    .line 81
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcle;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcle;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcle;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcle;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sourcesSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcle;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcle;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcle;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcle;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetObjectsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcle;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcle;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
