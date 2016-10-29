.class Lxr;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lcom/twitter/model/dms/cf;

.field public final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbnt;JLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p4, p0, Lxr;->i:Ljava/lang/String;

    .line 273
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbnt;->a()Lcom/twitter/model/dms/b;

    move-result-object v1

    .line 275
    :goto_0
    if-nez v1, :cond_2

    const-wide/16 v2, 0x0

    :goto_1
    iput-wide v2, p0, Lxr;->d:J

    .line 276
    iget-wide v2, p0, Lxr;->d:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_3

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lxr;->a:Z

    .line 277
    if-nez p1, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    iput-object v0, p0, Lxr;->c:Ljava/lang/String;

    .line 278
    if-nez v1, :cond_5

    const/4 v0, -0x1

    :goto_4
    iput v0, p0, Lxr;->b:I

    .line 279
    iget v0, p0, Lxr;->b:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/twitter/model/dms/eh;

    .line 280
    invoke-virtual {v0}, Lcom/twitter/model/dms/eh;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    iput-boolean v4, p0, Lxr;->f:Z

    .line 281
    invoke-direct {p0, v1}, Lxr;->a(Lcom/twitter/model/dms/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxr;->e:Ljava/lang/String;

    .line 283
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/twitter/model/dms/b;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 285
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twitter/model/dms/i;->a()I

    move-result v5

    :cond_0
    iput v5, p0, Lxr;->h:I

    .line 287
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/twitter/model/dms/cf;

    :goto_6
    iput-object v0, p0, Lxr;->g:Lcom/twitter/model/dms/cf;

    .line 292
    :goto_7
    return-void

    :cond_1
    move-object v1, v6

    .line 273
    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/model/dms/b;->f()J

    move-result-wide v2

    goto :goto_1

    :cond_3
    move v0, v5

    .line 276
    goto :goto_2

    .line 277
    :cond_4
    invoke-virtual {p1}, Lbnt;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 278
    :cond_5
    invoke-virtual {v1}, Lcom/twitter/model/dms/b;->i()I

    move-result v0

    goto :goto_4

    :cond_6
    move v4, v5

    .line 280
    goto :goto_5

    :cond_7
    move-object v0, v6

    .line 287
    goto :goto_6

    .line 289
    :cond_8
    iput v5, p0, Lxr;->h:I

    .line 290
    iput-object v6, p0, Lxr;->g:Lcom/twitter/model/dms/cf;

    goto :goto_7
.end method

.method private a(Lcom/twitter/model/dms/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string/jumbo v0, ""

    .line 318
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget v0, p0, Lxr;->b:I

    sparse-switch v0, :sswitch_data_0

    .line 318
    const-string/jumbo v0, ""

    goto :goto_0

    .line 302
    :sswitch_0
    const-string/jumbo v0, ", "

    check-cast p1, Lcom/twitter/model/dms/dp;

    invoke-virtual {p1}, Lcom/twitter/model/dms/dp;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :sswitch_1
    check-cast p1, Lcom/twitter/model/dms/eo;

    invoke-virtual {p1}, Lcom/twitter/model/dms/eo;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :sswitch_2
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 311
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v0, p0, Lxr;->i:Ljava/lang/String;

    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0, v0}, Lxr;->a(Lcom/twitter/model/dms/l;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Lcom/twitter/model/dms/l;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->v()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    :cond_1
    invoke-static {v0}, Lcom/twitter/util/aj;->c(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 335
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->o()Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/model/core/bm;->a(Ljava/lang/StringBuilder;Lcom/twitter/model/core/bm;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
