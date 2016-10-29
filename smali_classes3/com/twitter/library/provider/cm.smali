.class public Lcom/twitter/library/provider/cm;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/provider/ck;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/twitter/library/api/ai;

.field final c:J

.field d:J

.field e:I

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:Z

.field j:Ljava/lang/String;

.field k:Z

.field l:Lcom/twitter/library/provider/b;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Z

.field p:Lcom/twitter/model/timeline/bu;


# direct methods
.method private constructor <init>(Lcom/twitter/library/api/ai;)V
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/library/provider/cm;->e:I

    .line 203
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->b:Lcom/twitter/library/api/ai;

    .line 204
    invoke-virtual {p1}, Lcom/twitter/library/api/ai;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/provider/cm;->c:J

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/provider/cm;->a:Ljava/util/List;

    .line 206
    return-void
.end method

.method private constructor <init>(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/model/timeline/ay;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/library/provider/cm;->e:I

    .line 197
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->a:Ljava/util/List;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/provider/cm;->b:Lcom/twitter/library/api/ai;

    .line 199
    iput-wide p2, p0, Lcom/twitter/library/provider/cm;->c:J

    .line 200
    return-void
.end method

.method public static a(Lcom/twitter/library/api/ai;)Lcom/twitter/library/provider/cm;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/twitter/library/provider/cm;

    invoke-direct {v0, p0}, Lcom/twitter/library/provider/cm;-><init>(Lcom/twitter/library/api/ai;)V

    return-object v0
.end method

.method public static a(Lcom/twitter/model/timeline/ap;)Lcom/twitter/library/provider/cm;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/twitter/library/provider/cm;

    iget-object v1, p0, Lcom/twitter/model/timeline/ap;->b:Ljava/util/List;

    iget-wide v2, p0, Lcom/twitter/model/timeline/ap;->a:J

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/provider/cm;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/twitter/library/provider/cm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/model/timeline/ay;",
            ">;)",
            "Lcom/twitter/library/provider/cm;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 192
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ay;

    iget-wide v0, v0, Lcom/twitter/model/timeline/ay;->e:J

    .line 193
    :goto_0
    new-instance v2, Lcom/twitter/library/provider/cm;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/library/provider/cm;-><init>(Ljava/util/List;J)V

    return-object v2

    .line 192
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcom/twitter/library/provider/cm;->e:I

    .line 217
    return-object p0
.end method

.method public a(J)Lcom/twitter/library/provider/cm;
    .locals 1

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/twitter/library/provider/cm;->d:J

    .line 211
    return-object p0
.end method

.method public a(Lcom/twitter/library/provider/b;)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->l:Lcom/twitter/library/provider/b;

    .line 259
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/bu;)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->p:Lcom/twitter/model/timeline/bu;

    .line 283
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->f:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/twitter/library/provider/cm;->g:Z

    .line 229
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->j:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public b(Z)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/twitter/library/provider/cm;->h:Z

    .line 235
    return-object p0
.end method

.method public bq_()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 288
    iget-object v1, p0, Lcom/twitter/library/provider/cm;->b:Lcom/twitter/library/api/ai;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/provider/cm;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/twitter/library/provider/cm;->b:Lcom/twitter/library/api/ai;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/library/provider/cm;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 299
    :cond_1
    :goto_0
    return v0

    .line 294
    :cond_2
    iget v1, p0, Lcom/twitter/library/provider/cm;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-wide v2, p0, Lcom/twitter/library/provider/cm;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 299
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->m:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public c(Z)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/twitter/library/provider/cm;->i:Z

    .line 241
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/twitter/library/provider/cm;->e()Lcom/twitter/library/provider/ck;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/twitter/library/provider/cm;->n:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public d(Z)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/twitter/library/provider/cm;->k:Z

    .line 253
    return-object p0
.end method

.method public e()Lcom/twitter/library/provider/ck;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/twitter/library/provider/ck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/provider/ck;-><init>(Lcom/twitter/library/provider/cm;Lcom/twitter/library/provider/cl;)V

    return-object v0
.end method

.method public e(Z)Lcom/twitter/library/provider/cm;
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/twitter/library/provider/cm;->o:Z

    .line 277
    return-object p0
.end method
