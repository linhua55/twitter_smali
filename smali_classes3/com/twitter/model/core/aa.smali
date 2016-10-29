.class public Lcom/twitter/model/core/aa;
.super Lcom/twitter/model/core/cy;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/core/cy",
        "<",
        "Lcom/twitter/model/core/MediaEntity;",
        "Lcom/twitter/model/core/aa;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field e:J

.field f:J

.field g:Ljava/lang/String;

.field h:Lcom/twitter/model/core/MediaEntity$Type;

.field i:Lcom/twitter/util/math/Size;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bs;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/twitter/model/core/ap;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/am;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpb;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/twitter/model/av/VideoCta;

.field o:Ljava/lang/String;

.field p:Z

.field q:Ljava/lang/String;

.field r:Lcom/twitter/model/core/TwitterUser;

.field s:Z

.field t:Ljava/lang/String;

.field u:Lcom/twitter/model/core/ag;

.field v:Lcom/twitter/model/core/aj;

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/twitter/model/core/cy;-><init>()V

    .line 138
    sget-object v0, Lcom/twitter/model/core/MediaEntity$Type;->a:Lcom/twitter/model/core/MediaEntity$Type;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->h:Lcom/twitter/model/core/MediaEntity$Type;

    .line 140
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->i:Lcom/twitter/util/math/Size;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/model/core/aa;->p:Z

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/MediaEntity;)V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/twitter/model/core/cy;-><init>(Lcom/twitter/model/core/cx;)V

    .line 138
    sget-object v0, Lcom/twitter/model/core/MediaEntity$Type;->a:Lcom/twitter/model/core/MediaEntity$Type;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->h:Lcom/twitter/model/core/MediaEntity$Type;

    .line 140
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->i:Lcom/twitter/util/math/Size;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/model/core/aa;->p:Z

    .line 162
    iget-wide v0, p1, Lcom/twitter/model/core/MediaEntity;->c:J

    iput-wide v0, p0, Lcom/twitter/model/core/aa;->a:J

    .line 163
    iget-wide v0, p1, Lcom/twitter/model/core/MediaEntity;->i:J

    iput-wide v0, p0, Lcom/twitter/model/core/aa;->e:J

    .line 164
    iget-wide v0, p1, Lcom/twitter/model/core/MediaEntity;->j:J

    iput-wide v0, p0, Lcom/twitter/model/core/aa;->f:J

    .line 165
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->g:Ljava/lang/String;

    .line 166
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->h:Lcom/twitter/model/core/MediaEntity$Type;

    .line 167
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->i:Lcom/twitter/util/math/Size;

    .line 168
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->q:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->j:Ljava/util/List;

    .line 169
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->o:Lcom/twitter/model/core/ap;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->k:Lcom/twitter/model/core/ap;

    .line 170
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->l:Ljava/util/List;

    .line 171
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->m:Ljava/util/List;

    .line 172
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->s:Lcom/twitter/model/av/VideoCta;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->n:Lcom/twitter/model/av/VideoCta;

    .line 173
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->o:Ljava/lang/String;

    .line 174
    iget-boolean v0, p1, Lcom/twitter/model/core/MediaEntity;->u:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/aa;->p:Z

    .line 175
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->q:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->k:Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->r:Lcom/twitter/model/core/TwitterUser;

    .line 177
    iget-boolean v0, p1, Lcom/twitter/model/core/MediaEntity;->w:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/aa;->s:Z

    .line 178
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->t:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->y:Lcom/twitter/model/core/ag;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->u:Lcom/twitter/model/core/ag;

    .line 180
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->z:Lcom/twitter/model/core/aj;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->v:Lcom/twitter/model/core/aj;

    .line 181
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->A:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/core/aa;->w:Ljava/util/List;

    .line 182
    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/model/core/aa;
    .locals 1

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/twitter/model/core/aa;->a:J

    .line 187
    return-object p0
.end method

.method public a(Lcom/twitter/model/av/VideoCta;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/twitter/model/core/aa;->n:Lcom/twitter/model/av/VideoCta;

    .line 252
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/MediaEntity$Type;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/twitter/model/core/aa;->h:Lcom/twitter/model/core/MediaEntity$Type;

    .line 216
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/twitter/model/core/aa;->r:Lcom/twitter/model/core/TwitterUser;

    .line 276
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/ag;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/twitter/model/core/aa;->u:Lcom/twitter/model/core/ag;

    .line 294
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/aj;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/twitter/model/core/aa;->v:Lcom/twitter/model/core/aj;

    .line 300
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/ap;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/twitter/model/core/aa;->k:Lcom/twitter/model/core/ap;

    .line 234
    return-object p0
.end method

.method public a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/twitter/model/core/aa;->i:Lcom/twitter/util/math/Size;

    .line 222
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/twitter/model/core/aa;->g:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/core/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bs;",
            ">;)",
            "Lcom/twitter/model/core/aa;"
        }
    .end annotation

    .prologue
    .line 227
    iput-object p1, p0, Lcom/twitter/model/core/aa;->j:Ljava/util/List;

    .line 228
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/twitter/model/core/aa;->p:Z

    .line 264
    return-object p0
.end method

.method public b(J)Lcom/twitter/model/core/aa;
    .locals 1

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/twitter/model/core/aa;->e:J

    .line 193
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/twitter/model/core/aa;->o:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/twitter/model/core/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/am;",
            ">;)",
            "Lcom/twitter/model/core/aa;"
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/twitter/model/core/aa;->l:Ljava/util/List;

    .line 240
    return-object p0
.end method

.method public b(Z)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/twitter/model/core/aa;->s:Z

    .line 282
    return-object p0
.end method

.method public c(J)Lcom/twitter/model/core/aa;
    .locals 1

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/twitter/model/core/aa;->f:J

    .line 199
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/twitter/model/core/aa;->q:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/twitter/model/core/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpb;",
            ">;)",
            "Lcom/twitter/model/core/aa;"
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/twitter/model/core/aa;->m:Ljava/util/List;

    .line 246
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/twitter/model/core/aa;->e()Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/core/aa;
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/twitter/model/core/aa;->t:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/twitter/model/core/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;)",
            "Lcom/twitter/model/core/aa;"
        }
    .end annotation

    .prologue
    .line 305
    iput-object p1, p0, Lcom/twitter/model/core/aa;->w:Ljava/util/List;

    .line 306
    return-object p0
.end method

.method protected e()Lcom/twitter/model/core/MediaEntity;
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/twitter/model/core/MediaEntity;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/MediaEntity;-><init>(Lcom/twitter/model/core/aa;)V

    return-object v0
.end method
