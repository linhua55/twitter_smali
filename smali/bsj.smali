.class public abstract Lbsj;
.super Lbss;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbss",
        "<",
        "Lcom/twitter/library/api/as;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/model/core/TwitterUser;

.field protected final b:J

.field protected final c:Ljava/lang/String;

.field protected final h:I

.field protected i:Lcom/twitter/model/timeline/ae;

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field private final k:J

.field private l:J

.field private m:Lcom/twitter/model/timeline/br;

.field private r:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;JI)V
    .locals 10

    .prologue
    .line 81
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lbsj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;JI)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;I)V
    .locals 9

    .prologue
    .line 76
    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lbsj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;JI)V

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;JI)V
    .locals 5

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lbss;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 87
    if-nez p4, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either timelineOwner or timelineOwnerId must be valid. timelineOwner: %s timelineOwnerId: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    .line 91
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 89
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-wide v0, p3, Lcom/twitter/library/service/ab;->c:J

    iput-wide v0, p0, Lbsj;->b:J

    .line 94
    iget-object v0, p3, Lcom/twitter/library/service/ab;->e:Ljava/lang/String;

    iput-object v0, p0, Lbsj;->c:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lbsj;->a:Lcom/twitter/model/core/TwitterUser;

    .line 96
    iput-wide p5, p0, Lbsj;->k:J

    .line 97
    iput p7, p0, Lbsj;->h:I

    .line 98
    return-void
.end method

.method static a(ILbst;)Lcom/twitter/model/timeline/ae;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 281
    packed-switch p0, :pswitch_data_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "Attempting to get the request cursor for an unsupported request type: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 311
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 310
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :pswitch_0
    new-instance v0, Lcom/twitter/model/timeline/ag;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ag;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/timeline/ag;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ae;

    .line 304
    :goto_0
    return-object v0

    .line 290
    :pswitch_1
    new-instance v0, Lcom/twitter/model/timeline/ag;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ag;-><init>()V

    .line 291
    invoke-interface {p1}, Lbst;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/ag;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/twitter/model/timeline/ag;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ae;

    goto :goto_0

    .line 297
    :pswitch_2
    new-instance v0, Lcom/twitter/model/timeline/ag;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ag;-><init>()V

    .line 298
    invoke-interface {p1}, Lbst;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/ag;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/twitter/model/timeline/ag;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ae;

    goto :goto_0

    .line 304
    :pswitch_3
    new-instance v0, Lcom/twitter/model/timeline/ag;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ag;-><init>()V

    .line 305
    invoke-interface {p1}, Lbst;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/ag;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;

    move-result-object v0

    .line 306
    invoke-interface {p1}, Lbst;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/ag;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/twitter/model/timeline/ag;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ae;

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/twitter/library/service/e;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    if-nez v0, :cond_0

    .line 165
    iget v0, p0, Lbsj;->h:I

    invoke-virtual {p0}, Lbsj;->C()Lbst;

    move-result-object v1

    invoke-static {v0, v1}, Lbsj;->a(ILbst;)Lcom/twitter/model/timeline/ae;

    move-result-object v0

    iput-object v0, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    .line 167
    :cond_0
    iget-object v0, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    iget-object v0, v0, Lcom/twitter/model/timeline/ae;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const-string/jumbo v0, "up_cursor"

    iget-object v1, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    iget-object v1, v1, Lcom/twitter/model/timeline/ae;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 170
    :cond_1
    iget-object v0, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    iget-object v0, v0, Lcom/twitter/model/timeline/ae;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const-string/jumbo v0, "down_cursor"

    iget-object v1, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    iget-object v1, v1, Lcom/twitter/model/timeline/ae;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 173
    :cond_2
    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lbsj;->j:Ljava/util/List;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lbsj;->r:Z

    return v0
.end method

.method protected C()Lbst;
    .locals 8

    .prologue
    .line 176
    new-instance v1, Lbsl;

    invoke-virtual {p0}, Lbsj;->S()Lcom/twitter/library/provider/dm;

    move-result-object v2

    .line 177
    invoke-virtual {p0}, Lbsj;->s()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/model/timeline/cq;->b(I)I

    move-result v3

    invoke-virtual {p0}, Lbsj;->D()J

    move-result-wide v4

    iget-wide v6, p0, Lbsj;->l:J

    invoke-direct/range {v1 .. v7}, Lbsl;-><init>(Lcom/twitter/library/provider/dm;IJJ)V

    .line 176
    return-object v1
.end method

.method protected D()J
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lbsj;->a:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsj;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lbsj;->k:J

    goto :goto_0
.end method

.method public a(J)Lbsj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbsj;",
            ">(J)TT;"
        }
    .end annotation

    .prologue
    .line 106
    iput-wide p1, p0, Lbsj;->l:J

    .line 107
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsj;

    return-object v0
.end method

.method public a(Lcom/twitter/model/timeline/ae;)Lbsj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbsj;",
            ">(",
            "Lcom/twitter/model/timeline/ae;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    .line 114
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsj;

    return-object v0
.end method

.method public final a(Lcom/twitter/model/timeline/br;)Lbsj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbsj;",
            ">(",
            "Lcom/twitter/model/timeline/br;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Lbsj;->m:Lcom/twitter/model/timeline/br;

    .line 133
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsj;

    return-object v0
.end method

.method protected a(Lcom/twitter/library/api/ai;)Lbsk;
    .locals 14

    .prologue
    const/4 v10, 0x4

    const/4 v13, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 218
    invoke-virtual {p0}, Lbsj;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 219
    iget-object v9, p1, Lcom/twitter/library/api/ai;->a:Ljava/util/List;

    .line 220
    invoke-virtual {p0}, Lbsj;->D()J

    move-result-wide v4

    .line 222
    invoke-virtual {p0}, Lbsj;->s()I

    move-result v1

    .line 224
    iget v2, p0, Lbsj;->h:I

    if-ne v2, v10, :cond_1

    iget-wide v2, p0, Lbsj;->l:J

    .line 225
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/provider/dm;->a(IJJ)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v7

    .line 226
    :goto_0
    iget v2, p0, Lbsj;->h:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v7

    .line 227
    :goto_1
    const-string/jumbo v2, "bottom"

    iget-object v9, p1, Lcom/twitter/library/api/ai;->b:Lcom/twitter/model/timeline/ai;

    iget-object v9, v9, Lcom/twitter/model/timeline/ai;->d:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 229
    iget v2, p0, Lbsj;->h:I

    if-eq v2, v13, :cond_0

    iget v2, p0, Lbsj;->h:I

    if-ne v2, v10, :cond_3

    :cond_0
    move v2, v7

    .line 230
    :goto_2
    if-eqz v9, :cond_4

    if-eqz v2, :cond_4

    move v9, v7

    .line 231
    :goto_3
    invoke-virtual {p0}, Lbsj;->O()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lbsj;->h:I

    if-ne v2, v13, :cond_5

    move v10, v7

    .line 233
    :goto_4
    new-instance v11, Lcom/twitter/library/api/aj;

    iget v12, p0, Lbsj;->h:I

    iget-object v2, p0, Lbsj;->i:Lcom/twitter/model/timeline/ae;

    .line 234
    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/timeline/ae;

    invoke-direct {v11, v12, v2}, Lcom/twitter/library/api/aj;-><init>(ILcom/twitter/model/timeline/ae;)V

    .line 235
    invoke-virtual {p1, v11}, Lcom/twitter/library/api/ai;->a(Lcom/twitter/library/api/aj;)V

    .line 237
    invoke-static {p1}, Lcom/twitter/library/provider/cm;->a(Lcom/twitter/library/api/ai;)Lcom/twitter/library/provider/cm;

    move-result-object v2

    .line 238
    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/provider/cm;->a(J)Lcom/twitter/library/provider/cm;

    move-result-object v2

    .line 239
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/cm;->a(I)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lbsj;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/provider/cm;->a(Ljava/lang/String;)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v3}, Lcom/twitter/library/provider/cm;->a(Z)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v9}, Lcom/twitter/library/provider/cm;->b(Z)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v10}, Lcom/twitter/library/provider/cm;->c(Z)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v7}, Lcom/twitter/library/provider/cm;->d(Z)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lbsj;->O()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/provider/cm;->e(Z)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Lbsj;->x()Lcom/twitter/model/timeline/bu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/provider/cm;->a(Lcom/twitter/model/timeline/bu;)Lcom/twitter/library/provider/cm;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/twitter/library/provider/cm;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/provider/ck;

    .line 236
    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/library/provider/ck;)I

    move-result v2

    .line 250
    if-lez v2, :cond_6

    iget v0, p0, Lbsj;->h:I

    if-ne v0, v13, :cond_6

    move v4, v7

    .line 251
    :goto_5
    new-instance v0, Lbsk;

    iget-object v5, p1, Lcom/twitter/library/api/ai;->d:Lcom/twitter/model/timeline/br;

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lbsk;-><init>(ZIZZLcom/twitter/model/timeline/br;)V

    return-object v0

    :cond_1
    move v6, v8

    .line 225
    goto/16 :goto_0

    :cond_2
    move v3, v8

    .line 226
    goto/16 :goto_1

    :cond_3
    move v2, v8

    .line 229
    goto :goto_2

    :cond_4
    move v9, v8

    .line 230
    goto :goto_3

    :cond_5
    move v10, v8

    .line 231
    goto :goto_4

    :cond_6
    move v4, v8

    .line 250
    goto :goto_5
.end method

.method protected a(IZZLcom/twitter/model/timeline/br;)V
    .locals 3

    .prologue
    .line 204
    if-gtz p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsj;->r:Z

    .line 206
    invoke-virtual {p0}, Lbsj;->y()V

    .line 207
    invoke-virtual {p0}, Lbsj;->s()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/library/provider/cn;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lbsj;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 210
    :cond_1
    invoke-virtual {p0, p1}, Lbsj;->d(I)Lbss;

    .line 211
    invoke-virtual {p0, p4}, Lbsj;->a(Lcom/twitter/model/timeline/br;)Lbsj;

    .line 212
    return-void
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 190
    invoke-virtual {p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/ai;

    .line 191
    iget-object v1, v0, Lcom/twitter/library/api/ai;->a:Ljava/util/List;

    iput-object v1, p0, Lbsj;->j:Ljava/util/List;

    .line 193
    invoke-virtual {p0, v0}, Lbsj;->a(Lcom/twitter/library/api/ai;)Lbsk;

    move-result-object v0

    .line 194
    iget v1, v0, Lbsk;->b:I

    iget-boolean v2, v0, Lbsk;->a:Z

    iget-boolean v3, v0, Lbsk;->c:Z

    iget-object v4, v0, Lbsk;->e:Lcom/twitter/model/timeline/br;

    invoke-virtual {p0, v1, v2, v3, v4}, Lbsj;->a(IZZLcom/twitter/model/timeline/br;)V

    .line 198
    iget-object v1, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "scribe_item_count"

    iget v0, v0, Lbsk;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 36
    check-cast p3, Lcom/twitter/library/api/as;

    invoke-virtual {p0, p1, p2, p3}, Lbsj;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V

    return-void
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lbsj;->g()Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcom/twitter/library/api/as;
    .locals 2

    .prologue
    .line 183
    const/16 v0, 0x2c

    iget-object v1, p0, Lbsj;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0, v1}, Lcom/twitter/library/api/as;->a(ILcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/twitter/library/service/e;
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lbsj;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Lbsj;->a(Lcom/twitter/library/service/e;)V

    .line 160
    return-object v0
.end method

.method protected abstract s()I
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method protected x()Lcom/twitter/model/timeline/bu;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/twitter/model/timeline/bu;->a:Lcom/twitter/model/timeline/bu;

    return-object v0
.end method

.method protected y()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public final z()Lcom/twitter/model/timeline/br;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lbsj;->m:Lcom/twitter/model/timeline/br;

    return-object v0
.end method
