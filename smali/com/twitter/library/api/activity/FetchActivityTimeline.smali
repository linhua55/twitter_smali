.class public Lcom/twitter/library/api/activity/FetchActivityTimeline;
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


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ldau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldau",
            "<",
            "Lcks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:I

.field private final i:Z

.field private final j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcks;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    const-class v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->a:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->b:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/twitter/library/api/activity/h;

    invoke-direct {v0}, Lcom/twitter/library/api/activity/h;-><init>()V

    sput-object v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->c:Ldau;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;IZ)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/twitter/library/service/ab;

    invoke-direct {v0, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/twitter/library/api/activity/FetchActivityTimeline;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;IZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;IZ)V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lbss;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->m:Z

    .line 88
    iput p3, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->h:I

    .line 89
    iput-boolean p4, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->i:Z

    .line 90
    const-string/jumbo v0, "notifications_tab_include_generic_activities_enabled"

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    iput v0, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->j:I

    .line 93
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/api/activity/b;)Ljava/util/List;
    .locals 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/provider/dm;",
            "Lcom/twitter/library/api/activity/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-wide v0, p1, Lcom/twitter/library/api/activity/b;->e:J

    iget v2, p1, Lcom/twitter/library/api/activity/b;->c:I

    iget-object v3, p1, Lcom/twitter/library/api/activity/b;->h:Lcom/twitter/library/provider/b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/library/provider/dm;->c(JILcom/twitter/library/provider/b;)Z

    move-result v0

    .line 333
    iget-object v1, p1, Lcom/twitter/library/api/activity/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-boolean v1, p1, Lcom/twitter/library/api/activity/b;->a:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 337
    iget v0, p1, Lcom/twitter/library/api/activity/b;->c:I

    iget-object v1, p1, Lcom/twitter/library/api/activity/b;->h:Lcom/twitter/library/provider/b;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/provider/dm;->a(ILcom/twitter/library/provider/b;)V

    .line 339
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 342
    :cond_1
    invoke-virtual {p0, p1}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/library/api/activity/b;)Ljava/util/List;

    move-result-object v10

    .line 343
    invoke-static {v10}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcks;

    .line 344
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/twitter/library/api/activity/b;->b:Z

    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {v0}, Lcks;->d()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/twitter/library/api/activity/b;->f:J

    iget-wide v6, v0, Lcks;->a:J

    iget v8, p1, Lcom/twitter/library/api/activity/b;->c:I

    iget-object v9, p1, Lcom/twitter/library/api/activity/b;->h:Lcom/twitter/library/provider/b;

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/library/provider/dm;->a(JJJILcom/twitter/library/provider/b;)V

    :cond_2
    move-object v0, v10

    .line 350
    goto :goto_0
.end method

.method static synthetic t()Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/twitter/library/api/activity/FetchActivityTimeline;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "scribe_event"

    invoke-virtual {p0, v0, p1}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;

    return-object v0
.end method

.method public a(Z)Lcom/twitter/library/api/activity/FetchActivityTimeline;
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->m:Z

    .line 101
    return-object p0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V
    .locals 16

    .prologue
    .line 164
    const/4 v3, 0x0

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->h:I

    invoke-static {v2}, Lckr;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Lcom/twitter/library/api/activity/i;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/twitter/library/api/activity/i;-><init>(Lcom/twitter/library/api/activity/FetchActivityTimeline;)V

    invoke-static {v2, v3}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ldau;)Ljava/util/List;

    move-result-object v2

    .line 180
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->N()Lcom/twitter/library/service/ab;

    move-result-object v3

    .line 181
    iget-wide v12, v3, Lcom/twitter/library/service/ab;->c:J

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->G()J

    move-result-wide v6

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->F()I

    move-result v3

    int-to-long v4, v3

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->E()J

    move-result-wide v8

    .line 187
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_4

    const/4 v3, 0x1

    move v10, v3

    .line 191
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-lez v3, :cond_6

    .line 192
    new-instance v3, Lcom/twitter/library/api/activity/j;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lcom/twitter/library/api/activity/j;-><init>(Lcom/twitter/library/api/activity/FetchActivityTimeline;J)V

    invoke-static {v2, v3}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ldau;)Ljava/util/List;

    move-result-object v3

    .line 200
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v11, v2, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v14, v2

    cmp-long v2, v14, v4

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v4, v2

    .line 206
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->S()Lcom/twitter/library/provider/dm;

    move-result-object v2

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->T()Lcom/twitter/library/provider/b;

    move-result-object v5

    .line 209
    sget-object v11, Lcom/twitter/library/api/activity/FetchActivityTimeline;->c:Ldau;

    invoke-static {v3, v11}, Lczz;->b(Ljava/lang/Iterable;Ldau;)Z

    move-result v11

    .line 210
    new-instance v14, Lcom/twitter/library/api/activity/c;

    invoke-direct {v14}, Lcom/twitter/library/api/activity/c;-><init>()V

    .line 211
    invoke-virtual {v14, v4}, Lcom/twitter/library/api/activity/c;->b(Z)Lcom/twitter/library/api/activity/c;

    move-result-object v4

    .line 212
    invoke-virtual {v4, v10}, Lcom/twitter/library/api/activity/c;->a(Z)Lcom/twitter/library/api/activity/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->h:I

    .line 213
    invoke-virtual {v4, v14}, Lcom/twitter/library/api/activity/c;->a(I)Lcom/twitter/library/api/activity/c;

    move-result-object v4

    .line 214
    invoke-virtual {v4, v12, v13}, Lcom/twitter/library/api/activity/c;->a(J)Lcom/twitter/library/api/activity/c;

    move-result-object v4

    .line 215
    invoke-virtual {v4, v8, v9}, Lcom/twitter/library/api/activity/c;->b(J)Lcom/twitter/library/api/activity/c;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v6, v7}, Lcom/twitter/library/api/activity/c;->c(J)Lcom/twitter/library/api/activity/c;

    move-result-object v4

    .line 217
    invoke-virtual {v4, v3}, Lcom/twitter/library/api/activity/c;->a(Ljava/util/List;)Lcom/twitter/library/api/activity/c;

    move-result-object v3

    .line 218
    invoke-virtual {v3, v5}, Lcom/twitter/library/api/activity/c;->a(Lcom/twitter/library/provider/b;)Lcom/twitter/library/api/activity/c;

    move-result-object v3

    .line 219
    invoke-static {}, Lcbv;->a()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/twitter/library/api/activity/c;->c(Z)Lcom/twitter/library/api/activity/c;

    move-result-object v4

    if-eqz v11, :cond_7

    const-string/jumbo v3, "notifications_tab_mentions_cleanup_4976"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "delete_mentions"

    aput-object v8, v6, v7

    .line 222
    invoke-static {v3, v6}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 220
    :goto_4
    invoke-virtual {v4, v3}, Lcom/twitter/library/api/activity/c;->d(Z)Lcom/twitter/library/api/activity/c;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lcom/twitter/library/api/activity/c;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/api/activity/b;

    .line 210
    invoke-static {v2, v3}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/api/activity/b;)Ljava/util/List;

    move-result-object v11

    .line 225
    invoke-virtual {v5}, Lcom/twitter/library/provider/b;->a()V

    .line 226
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->k:Ljava/util/List;

    .line 227
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 229
    const-wide/16 v4, 0x0

    .line 230
    const/4 v3, 0x0

    .line 231
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->m:Z

    if-eqz v6, :cond_1

    .line 232
    new-instance v3, Lcom/twitter/library/api/activity/g;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->p:Landroid/content/Context;

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->N()Lcom/twitter/library/service/ab;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/api/activity/g;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 234
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/twitter/library/api/activity/g;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/service/x;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/api/activity/g;

    .line 235
    invoke-virtual {v3}, Lcom/twitter/library/api/activity/g;->P()Lcom/twitter/library/service/aa;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lcom/twitter/library/service/aa;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->p:Landroid/content/Context;

    iget-object v3, v3, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v5, "act_read_pos"

    .line 238
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 237
    invoke-static {v4, v12, v13, v6, v7}, Lcom/twitter/library/client/t;->a(Landroid/content/Context;JJ)V

    .line 242
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->p:Landroid/content/Context;

    invoke-static {v3, v12, v13}, Lcom/twitter/library/client/t;->a(Landroid/content/Context;J)J

    move-result-wide v4

    .line 243
    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->h:I

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->T()Lcom/twitter/library/provider/b;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/library/provider/dm;->a(IJLcom/twitter/library/provider/b;Z)I

    move-result v3

    .line 245
    if-lez v3, :cond_8

    const/4 v3, 0x1

    .line 248
    :cond_1
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->T()Lcom/twitter/library/provider/b;

    move-result-object v8

    .line 249
    if-nez v10, :cond_a

    if-lez v9, :cond_a

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->m:Z

    if-eqz v6, :cond_a

    .line 250
    const/4 v7, 0x1

    .line 251
    const/4 v3, 0x0

    .line 252
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v3

    :cond_2
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcks;

    .line 253
    instance-of v11, v3, Lcle;

    if-eqz v11, :cond_2

    .line 256
    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcle;

    .line 257
    iget-wide v14, v3, Lcle;->a:J

    cmp-long v11, v14, v4

    if-lez v11, :cond_2

    .line 260
    iget v3, v3, Lcle;->d:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v3, v6

    :goto_7
    move v6, v3

    .line 290
    goto :goto_6

    .line 178
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto/16 :goto_0

    .line 187
    :cond_4
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_1

    .line 200
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 203
    :cond_6
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    goto/16 :goto_3

    .line 222
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 245
    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    .line 263
    :pswitch_1
    or-int/lit8 v3, v6, 0x1

    .line 264
    goto :goto_7

    .line 267
    :pswitch_2
    or-int/lit8 v3, v6, 0x2

    .line 268
    goto :goto_7

    .line 271
    :pswitch_3
    or-int/lit8 v3, v6, 0x4

    .line 272
    goto :goto_7

    .line 275
    :pswitch_4
    or-int/lit8 v3, v6, 0x8

    .line 276
    goto :goto_7

    .line 279
    :pswitch_5
    or-int/lit8 v3, v6, 0x10

    .line 280
    goto :goto_7

    .line 283
    :pswitch_6
    or-int/lit16 v3, v6, 0x200

    .line 284
    goto :goto_7

    .line 291
    :cond_9
    move-object/from16 v0, p0

    iput v6, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->l:I

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->p:Landroid/content/Context;

    invoke-static {v3}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v3

    .line 293
    invoke-virtual {v3, v12, v13, v6, v8}, Lcom/twitter/library/provider/ar;->a(JILcom/twitter/library/provider/b;)I

    move v3, v7

    .line 296
    :cond_a
    if-eqz v3, :cond_b

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->p:Landroid/content/Context;

    invoke-static {v3}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v3

    const-string/jumbo v6, "unread_interactions"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->h:I

    .line 298
    invoke-virtual {v2, v4}, Lcom/twitter/library/provider/dm;->d(I)I

    move-result v7

    move-wide v4, v12

    .line 297
    invoke-virtual/range {v3 .. v8}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    .line 301
    :cond_b
    invoke-virtual {v8}, Lcom/twitter/library/provider/b;->a()V

    .line 302
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "scribe_item_count"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v2, v9

    .line 325
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->o:Landroid/os/Bundle;

    const-string/jumbo v4, "count"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    return-void

    .line 304
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v4

    .line 306
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->o:Landroid/os/Bundle;

    const-string/jumbo v6, "custom_errors"

    .line 307
    invoke-static {v4}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cj;

    invoke-static {v2}, Lcom/twitter/model/core/cj;->a(Lcom/twitter/model/core/cj;)[I

    move-result-object v2

    .line 306
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 323
    goto :goto_8

    .line 308
    :catch_0
    move-exception v2

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v5

    .line 311
    if-eqz v5, :cond_f

    .line 312
    new-instance v6, Lbiv;

    new-instance v7, Lcom/twitter/library/api/activity/FetchActivityTimeline$ActivityParsedObjectCastException;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lcom/twitter/library/api/activity/FetchActivityTimeline$ActivityParsedObjectCastException;-><init>(Lcom/twitter/library/api/activity/FetchActivityTimeline;Ljava/lang/Throwable;)V

    invoke-direct {v6, v7}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "status_code"

    iget v7, v5, Lcom/twitter/internal/network/k;->a:I

    .line 313
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    const-string/jumbo v6, "error_code"

    iget v7, v5, Lcom/twitter/internal/network/k;->j:I

    .line 314
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v6

    .line 315
    iget-object v2, v5, Lcom/twitter/internal/network/k;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 316
    const-string/jumbo v2, "reason_phrase"

    iget-object v5, v5, Lcom/twitter/internal/network/k;->b:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 318
    :cond_d
    instance-of v2, v4, Ljava/util/List;

    if-eqz v2, :cond_e

    .line 319
    const-string/jumbo v5, "result_size"

    invoke-static {v4}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 321
    :cond_e
    invoke-static {v6}, Lbix;->a(Lbiv;)V

    :cond_f
    move v2, v3

    goto :goto_8

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 47
    check-cast p3, Lcom/twitter/library/api/as;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->k:Ljava/util/List;

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->s()Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->l:I

    return v0
.end method

.method protected h()Lcom/twitter/library/service/e;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->G()J

    move-result-wide v0

    .line 116
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->E()J

    move-result-wide v2

    .line 117
    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    iget v1, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->h:I

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->b(I)J

    move-result-wide v0

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->c(J)Lbss;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->K()Lcom/twitter/library/service/e;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "activity"

    aput-object v5, v3, v4

    const-string/jumbo v4, "about_me"

    aput-object v4, v3, v6

    .line 123
    invoke-virtual {v2, v3}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v2

    .line 125
    iget v3, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->h:I

    packed-switch v3, :pswitch_data_0

    .line 152
    :cond_1
    :goto_0
    const-string/jumbo v3, "model_version"

    iget v4, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->j:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 153
    const-string/jumbo v3, "send_error_codes"

    invoke-virtual {v2, v3, v6}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 155
    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 156
    const-string/jumbo v0, "latest_results"

    invoke-virtual {v2, v0, v6}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 158
    :cond_2
    return-object v2

    .line 128
    :pswitch_0
    iget-boolean v3, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->i:Z

    if-eqz v3, :cond_1

    .line 129
    const-string/jumbo v3, "filters"

    const-string/jumbo v4, "filtered"

    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 136
    :pswitch_1
    const-string/jumbo v3, "filters"

    const-string/jumbo v4, "following"

    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 141
    :pswitch_2
    const-string/jumbo v3, "filters"

    const-string/jumbo v4, "verified"

    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected s()Lcom/twitter/library/api/as;
    .locals 2

    .prologue
    .line 356
    iget v0, p0, Lcom/twitter/library/api/activity/FetchActivityTimeline;->j:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1c

    :goto_0
    invoke-static {v0}, Lcom/twitter/library/api/as;->a(I)Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x1b

    goto :goto_0
.end method
