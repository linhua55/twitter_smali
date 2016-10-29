.class Lcom/twitter/android/media/stickers/data/f;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Lcpj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final g:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Lcom/twitter/library/provider/dm;Ljava/util/Set;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/provider/dm;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    const-string/jumbo v0, "load_stickers"

    invoke-direct {p0, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/twitter/android/media/stickers/data/f;->a:Lcom/twitter/library/provider/dm;

    .line 208
    iput-object p2, p0, Lcom/twitter/android/media/stickers/data/f;->b:Ljava/util/Set;

    .line 209
    iput-object p3, p0, Lcom/twitter/android/media/stickers/data/f;->c:Ljava/lang/String;

    .line 210
    iput-object p4, p0, Lcom/twitter/android/media/stickers/data/f;->g:Landroid/content/SharedPreferences;

    .line 211
    return-void
.end method

.method private static a(JLcom/twitter/database/model/j;)Lcph;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbif;",
            ">;)",
            "Lcph;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcph;

    invoke-direct {v0}, Lcph;-><init>()V

    .line 333
    invoke-virtual {v0, p0, p1}, Lcph;->c(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 334
    invoke-interface {v0}, Lbif;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcph;->a(Ljava/lang/String;)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 335
    invoke-interface {v0}, Lbif;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcph;->f(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 336
    invoke-interface {v0}, Lbif;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcph;->g(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 337
    invoke-interface {v0}, Lbif;->n()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcph;->h(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 338
    invoke-interface {v0}, Lbif;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcph;->b(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 339
    invoke-interface {v0}, Lbif;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcph;->a(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 340
    invoke-interface {v0}, Lbif;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcph;->e(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 341
    invoke-interface {v0}, Lbif;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcph;->d(J)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 342
    invoke-interface {v0}, Lbif;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcph;->c(Ljava/lang/String;)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 343
    invoke-interface {v0}, Lbif;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcph;->b(Ljava/lang/String;)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 344
    invoke-interface {v0}, Lbif;->p()Lcpu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcph;->a(Lcpu;)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 345
    invoke-interface {v0}, Lbif;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcph;->d(Ljava/lang/String;)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 346
    invoke-interface {v0}, Lbif;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcph;->e(Ljava/lang/String;)Lcph;

    move-result-object v1

    iget-object v0, p2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbif;

    .line 347
    invoke-interface {v0}, Lbif;->o()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcph;->a(Z)Lcph;

    move-result-object v0

    .line 332
    return-object v0
.end method


# virtual methods
.method protected a()Lcpj;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/media/stickers/data/f;->a:Lcom/twitter/library/provider/dm;

    invoke-virtual {v2}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v2

    .line 216
    const-class v3, Lbhs;

    invoke-interface {v2, v3}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v3

    .line 217
    invoke-interface {v3}, Lcom/twitter/database/model/p;->f()Lcom/twitter/database/model/q;

    move-result-object v3

    .line 219
    const-class v4, Lbie;

    invoke-interface {v2, v4}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v2

    .line 220
    invoke-interface {v2}, Lcom/twitter/database/model/p;->f()Lcom/twitter/database/model/q;

    move-result-object v15

    .line 222
    invoke-interface {v3}, Lcom/twitter/database/model/q;->c()Lcom/twitter/database/model/j;

    move-result-object v16

    .line 223
    invoke-virtual/range {v16 .. v16}, Lcom/twitter/database/model/j;->a()I

    move-result v2

    if-nez v2, :cond_0

    .line 224
    invoke-virtual/range {v16 .. v16}, Lcom/twitter/database/model/j;->close()V

    .line 225
    const/4 v2, 0x0

    .line 325
    :goto_0
    return-object v2

    .line 228
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v17

    .line 229
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v18

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/media/stickers/data/f;->b:Ljava/util/Set;

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 233
    new-instance v2, Lcom/twitter/database/model/i;

    invoke-direct {v2}, Lcom/twitter/database/model/i;-><init>()V

    const-string/jumbo v3, "stickers__id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/media/stickers/data/f;->b:Ljava/util/Set;

    .line 234
    invoke-static {v3, v4}, Lbar;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/database/model/i;->a(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v2

    const-string/jumbo v3, "stickers__id"

    .line 235
    invoke-virtual {v2, v3}, Lcom/twitter/database/model/i;->c(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/twitter/database/model/i;->a()Lcom/twitter/database/model/g;

    move-result-object v2

    .line 237
    invoke-interface {v15, v2}, Lcom/twitter/database/model/q;->a(Lcom/twitter/database/model/g;)Lcom/twitter/database/model/j;

    move-result-object v3

    .line 239
    :try_start_0
    new-instance v4, Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Lcom/twitter/database/model/j;->a()I

    move-result v2

    invoke-direct {v4, v2}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 240
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbif;

    invoke-interface {v2}, Lbif;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbif;

    invoke-interface {v2}, Lbif;->a()J

    move-result-wide v6

    .line 243
    invoke-static {v6, v7, v3}, Lcom/twitter/android/media/stickers/data/f;->a(JLcom/twitter/database/model/j;)Lcph;

    move-result-object v2

    invoke-virtual {v2}, Lcph;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpf;

    .line 244
    invoke-virtual {v4, v6, v7, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v2

    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    throw v2

    .line 247
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/media/stickers/data/f;->b:Ljava/util/Set;

    invoke-static {v4, v2}, Lcom/twitter/android/media/stickers/data/a;->a(Landroid/support/v4/util/LongSparseArray;Ljava/util/Set;)Lcpy;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    .line 254
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/media/stickers/data/f;->g:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/media/stickers/data/f;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/twitter/android/media/stickers/data/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v19

    .line 256
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/twitter/database/model/j;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 257
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    invoke-interface {v2}, Lbht;->b()J

    move-result-wide v4

    .line 259
    const-string/jumbo v2, "category_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lbar;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 260
    new-instance v2, Lcom/twitter/database/model/i;

    invoke-direct {v2}, Lcom/twitter/database/model/i;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "stickers_variant_item_id"

    .line 261
    invoke-static {v8}, Lbar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lbar;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/twitter/database/model/i;->a(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lcom/twitter/database/model/i;->a()Lcom/twitter/database/model/g;

    move-result-object v2

    .line 263
    invoke-interface {v15, v2}, Lcom/twitter/database/model/q;->a(Lcom/twitter/database/model/g;)Lcom/twitter/database/model/j;

    move-result-object v6

    .line 265
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 267
    :cond_4
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Lcom/twitter/database/model/j;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    iget-object v2, v6, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbif;

    invoke-interface {v2}, Lbif;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    iget-object v2, v6, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbif;

    invoke-interface {v2}, Lbif;->a()J

    move-result-wide v8

    .line 270
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 271
    invoke-static {v8, v9, v6}, Lcom/twitter/android/media/stickers/data/f;->a(JLcom/twitter/database/model/j;)Lcph;

    move-result-object v8

    invoke-virtual {v8}, Lcph;->q()Ljava/lang/Object;

    move-result-object v8

    .line 270
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 275
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v6}, Lcom/twitter/database/model/j;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 323
    :catchall_2
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lcom/twitter/database/model/j;->close()V

    throw v2

    .line 275
    :cond_5
    :try_start_5
    invoke-virtual {v6}, Lcom/twitter/database/model/j;->close()V

    .line 278
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string/jumbo v6, "stickers_variant_item_id"

    .line 279
    invoke-static {v6}, Lbar;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v2}, Lbar;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 278
    invoke-interface {v15, v2, v3}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v6

    .line 281
    new-instance v8, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v8}, Landroid/support/v4/util/LongSparseArray;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 283
    :cond_6
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Lcom/twitter/database/model/j;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 284
    iget-object v2, v6, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbif;

    invoke-interface {v2}, Lbif;->f()J

    move-result-wide v10

    .line 285
    invoke-virtual {v8, v10, v11}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 287
    if-nez v2, :cond_b

    .line 288
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 289
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v8, v10, v11, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v3, v2

    .line 292
    :goto_5
    iget-object v2, v6, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbif;

    invoke-interface {v2}, Lbif;->o()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    iget-object v2, v6, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbif;

    invoke-interface {v2}, Lbif;->a()J

    move-result-wide v10

    .line 294
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 295
    invoke-static {v10, v11, v6}, Lcom/twitter/android/media/stickers/data/f;->a(JLcom/twitter/database/model/j;)Lcph;

    move-result-object v9

    invoke-virtual {v9}, Lcph;->q()Ljava/lang/Object;

    move-result-object v9

    .line 294
    invoke-virtual {v3, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 299
    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {v6}, Lcom/twitter/database/model/j;->close()V

    throw v2

    :cond_7
    invoke-virtual {v6}, Lcom/twitter/database/model/j;->close()V

    .line 302
    move-object/from16 v0, v19

    invoke-static {v7, v8, v0}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/util/Map;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)Ljava/util/List;

    move-result-object v8

    .line 305
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    invoke-interface {v2}, Lbht;->h()Z

    move-result v20

    .line 306
    new-instance v3, Lcpy;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    .line 308
    invoke-interface {v2}, Lbht;->e()J

    move-result-wide v6

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    .line 310
    invoke-interface {v2}, Lbht;->d()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    .line 311
    invoke-interface {v2}, Lbht;->c()Lcpk;

    move-result-object v10

    if-eqz v20, :cond_8

    const/4 v11, 0x2

    :goto_6
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    .line 313
    invoke-interface {v2}, Lbht;->i()Z

    move-result v12

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    .line 314
    invoke-interface {v2}, Lbht;->j()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    .line 315
    invoke-interface {v2}, Lbht;->f()J

    move-result-wide v22

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v2, Lbht;

    invoke-interface {v2}, Lbht;->g()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lcqb;->a(JJ)Lcqb;

    move-result-object v14

    invoke-direct/range {v3 .. v14}, Lcpy;-><init>(JJLjava/util/List;Ljava/lang/String;Lcpk;IZLjava/lang/String;Lcqb;)V

    .line 316
    if-eqz v20, :cond_9

    .line 317
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto/16 :goto_2

    .line 311
    :cond_8
    const/4 v11, 0x0

    goto :goto_6

    .line 319
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_2

    .line 323
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/twitter/database/model/j;->close()V

    .line 325
    new-instance v4, Lcpj;

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual/range {v18 .. v18}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v4, v2, v3}, Lcpj;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v2, v4

    goto/16 :goto_0

    :cond_b
    move-object v3, v2

    goto/16 :goto_5
.end method

.method protected b()Lcpj;
    .locals 3

    .prologue
    .line 353
    new-instance v0, Lcpj;

    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v1

    .line 354
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcpj;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 353
    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/data/f;->b()Lcpj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/data/f;->a()Lcpj;

    move-result-object v0

    return-object v0
.end method
