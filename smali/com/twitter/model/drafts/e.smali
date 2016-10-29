.class public final Lcom/twitter/model/drafts/e;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/drafts/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:Z

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:Lcom/twitter/model/geo/g;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcss;

.field j:Lcom/twitter/model/core/ay;

.field k:Ljava/lang/String;

.field l:Lclp;

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/twitter/model/timeline/cx;

.field o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 172
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->e:Ljava/util/List;

    .line 185
    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/model/drafts/e;
    .locals 1

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/twitter/model/drafts/e;->a:J

    .line 231
    return-object p0
.end method

.method public a(Lclp;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->l:Lclp;

    .line 298
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/ay;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->j:Lcom/twitter/model/core/ay;

    .line 335
    return-object p0
.end method

.method public a(Lcom/twitter/model/drafts/d;)Lcom/twitter/model/drafts/e;
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p1, Lcom/twitter/model/drafts/d;->b:J

    iput-wide v0, p0, Lcom/twitter/model/drafts/e;->a:J

    .line 208
    iget-wide v0, p1, Lcom/twitter/model/drafts/d;->e:J

    iput-wide v0, p0, Lcom/twitter/model/drafts/e;->b:J

    .line 209
    invoke-virtual {p1}, Lcom/twitter/model/drafts/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/drafts/e;->c:J

    .line 210
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->f:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->e:Ljava/util/List;

    .line 212
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->g:Lcom/twitter/model/geo/g;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->g:Lcom/twitter/model/geo/g;

    .line 213
    invoke-virtual {p1}, Lcom/twitter/model/drafts/d;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->h:Ljava/util/List;

    .line 214
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->h:Lcss;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->i:Lcss;

    .line 215
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->i:Lcom/twitter/model/core/ay;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->j:Lcom/twitter/model/core/ay;

    .line 216
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->k:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->k:Lclp;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->l:Lclp;

    .line 218
    iget-boolean v0, p1, Lcom/twitter/model/drafts/d;->f:Z

    iput-boolean v0, p0, Lcom/twitter/model/drafts/e;->d:Z

    .line 219
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->m:Ljava/util/List;

    .line 220
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->m:Lcom/twitter/model/timeline/cx;

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->n:Lcom/twitter/model/timeline/cx;

    .line 221
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/g;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->g:Lcom/twitter/model/geo/g;

    .line 279
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->n:Lcom/twitter/model/timeline/cx;

    .line 351
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->i:Lcss;

    .line 309
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->f:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/drafts/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)",
            "Lcom/twitter/model/drafts/e;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->e:Ljava/util/List;

    .line 253
    return-object p0
.end method

.method public a(Ljava/util/List;J)Lcom/twitter/model/drafts/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/twitter/model/drafts/e;"
        }
    .end annotation

    .prologue
    .line 284
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->h:Ljava/util/List;

    .line 285
    iput-wide p2, p0, Lcom/twitter/model/drafts/e;->c:J

    .line 286
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/twitter/model/drafts/e;->d:Z

    .line 273
    return-object p0
.end method

.method public b(J)Lcom/twitter/model/drafts/e;
    .locals 1

    .prologue
    .line 262
    iput-wide p1, p0, Lcom/twitter/model/drafts/e;->b:J

    .line 263
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->k:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/twitter/model/drafts/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/model/drafts/e;"
        }
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->m:Ljava/util/List;

    .line 341
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/drafts/e;
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/twitter/model/drafts/e;->o:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/twitter/model/drafts/e;->l()Lcom/twitter/model/drafts/d;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 188
    iput-wide v2, p0, Lcom/twitter/model/drafts/e;->a:J

    .line 189
    iput-wide v2, p0, Lcom/twitter/model/drafts/e;->b:J

    .line 190
    iput-wide v2, p0, Lcom/twitter/model/drafts/e;->c:J

    .line 191
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/drafts/e;->e:Ljava/util/List;

    .line 192
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->f:Ljava/lang/String;

    .line 193
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->g:Lcom/twitter/model/geo/g;

    .line 194
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->h:Ljava/util/List;

    .line 195
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->i:Lcss;

    .line 196
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->j:Lcom/twitter/model/core/ay;

    .line 197
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->k:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->l:Lclp;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/model/drafts/e;->d:Z

    .line 200
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->m:Ljava/util/List;

    .line 201
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->n:Lcom/twitter/model/timeline/cx;

    .line 202
    iput-object v1, p0, Lcom/twitter/model/drafts/e;->o:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/twitter/model/drafts/e;->a:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/twitter/model/drafts/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/twitter/model/drafts/e;->b:J

    return-wide v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/twitter/model/drafts/e;->d:Z

    return v0
.end method

.method public j()Lclp;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/twitter/model/drafts/e;->l:Lclp;

    return-object v0
.end method

.method public k()Lcom/twitter/model/core/ay;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/twitter/model/drafts/e;->j:Lcom/twitter/model/core/ay;

    return-object v0
.end method

.method protected l()Lcom/twitter/model/drafts/d;
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/twitter/model/drafts/d;

    invoke-direct {v0, p0}, Lcom/twitter/model/drafts/d;-><init>(Lcom/twitter/model/drafts/e;)V

    return-object v0
.end method
