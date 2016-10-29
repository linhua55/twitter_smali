.class public Lcom/twitter/model/core/MediaEntity;
.super Lcom/twitter/model/core/cx;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/core/a;


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/ac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final i:J

.field public final j:J

.field public final k:Lcom/twitter/model/core/TwitterUser;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/twitter/model/core/MediaEntity$Type;

.field public final n:Lcom/twitter/util/math/Size;

.field public final o:Lcom/twitter/model/core/ap;

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/am;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bs;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpb;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/twitter/model/av/VideoCta;

.field public final t:Ljava/lang/String;

.field public final u:Z

.field public final v:Ljava/lang/String;

.field public final w:Z

.field public final x:Ljava/lang/String;

.field public final y:Lcom/twitter/model/core/ag;

.field public final z:Lcom/twitter/model/core/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/model/core/ab;

    invoke-direct {v0}, Lcom/twitter/model/core/ab;-><init>()V

    sput-object v0, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    .line 23
    sget-object v0, Lcom/twitter/model/core/ac;->a:Lcom/twitter/util/serialization/ah;

    sput-object v0, Lcom/twitter/model/core/MediaEntity;->b:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/aa;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/twitter/model/core/cx;-><init>(Lcom/twitter/model/core/cy;)V

    .line 85
    iget-wide v0, p1, Lcom/twitter/model/core/aa;->a:J

    iput-wide v0, p0, Lcom/twitter/model/core/MediaEntity;->c:J

    .line 86
    iget-wide v0, p1, Lcom/twitter/model/core/aa;->e:J

    iput-wide v0, p0, Lcom/twitter/model/core/MediaEntity;->i:J

    .line 87
    iget-object v0, p1, Lcom/twitter/model/core/aa;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/model/core/MediaEntity;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    .line 88
    iget-wide v0, p1, Lcom/twitter/model/core/aa;->f:J

    iput-wide v0, p0, Lcom/twitter/model/core/MediaEntity;->j:J

    .line 89
    iget-object v0, p1, Lcom/twitter/model/core/aa;->h:Lcom/twitter/model/core/MediaEntity$Type;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    .line 90
    iget-object v0, p1, Lcom/twitter/model/core/aa;->i:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    .line 91
    iget-object v0, p1, Lcom/twitter/model/core/aa;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->q:Ljava/util/List;

    .line 92
    iget-object v0, p1, Lcom/twitter/model/core/aa;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->p:Ljava/util/List;

    .line 93
    iget-object v0, p1, Lcom/twitter/model/core/aa;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    .line 94
    iget-object v0, p1, Lcom/twitter/model/core/aa;->k:Lcom/twitter/model/core/ap;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->o:Lcom/twitter/model/core/ap;

    .line 95
    iget-object v0, p1, Lcom/twitter/model/core/aa;->n:Lcom/twitter/model/av/VideoCta;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->s:Lcom/twitter/model/av/VideoCta;

    .line 96
    iget-object v0, p1, Lcom/twitter/model/core/aa;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->t:Ljava/lang/String;

    .line 97
    iget-boolean v0, p1, Lcom/twitter/model/core/aa;->p:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/MediaEntity;->u:Z

    .line 98
    iget-object v0, p1, Lcom/twitter/model/core/aa;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->v:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/twitter/model/core/aa;->r:Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->k:Lcom/twitter/model/core/TwitterUser;

    .line 100
    iget-boolean v0, p1, Lcom/twitter/model/core/aa;->s:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/MediaEntity;->w:Z

    .line 101
    iget-object v0, p1, Lcom/twitter/model/core/aa;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/twitter/model/core/aa;->u:Lcom/twitter/model/core/ag;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->y:Lcom/twitter/model/core/ag;

    .line 103
    iget-object v0, p1, Lcom/twitter/model/core/aa;->v:Lcom/twitter/model/core/aj;

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->z:Lcom/twitter/model/core/aj;

    .line 104
    iget-object v0, p1, Lcom/twitter/model/core/aa;->w:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/MediaEntity;->A:Ljava/util/List;

    .line 105
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;)Z
    .locals 4

    .prologue
    .line 119
    if-eq p0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/twitter/model/core/cx;->a(Lcom/twitter/model/core/cx;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/core/MediaEntity;->c:J

    iget-wide v2, p1, Lcom/twitter/model/core/MediaEntity;->c:J

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

.method public synthetic b()Lcom/twitter/model/core/f;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/model/core/MediaEntity;->d()Lcom/twitter/model/core/aa;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/twitter/model/core/aa;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/twitter/model/core/aa;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/aa;-><init>(Lcom/twitter/model/core/MediaEntity;)V

    return-object v0
.end method

.method public synthetic e()Lcom/twitter/model/core/cy;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/model/core/MediaEntity;->d()Lcom/twitter/model/core/aa;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 115
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/core/MediaEntity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/core/MediaEntity;

    invoke-virtual {p0, p1}, Lcom/twitter/model/core/MediaEntity;->a(Lcom/twitter/model/core/MediaEntity;)Z

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

.method public hashCode()I
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Lcom/twitter/model/core/cx;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
