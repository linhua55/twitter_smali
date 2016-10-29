.class Lcom/twitter/library/provider/ax;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 37

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    invoke-static {v2}, Lcom/twitter/library/provider/au;->f(Lcom/twitter/library/provider/au;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 319
    const-class v2, Lbdn;

    new-instance v3, Lcom/twitter/database/model/a;

    const-string/jumbo v4, "push_flags"

    sget-object v5, Lcom/twitter/database/model/ColumnDefinition$Type;->a:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v3, v4, v5}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    sget v4, Lcso;->a:I

    .line 322
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;)Lcom/twitter/database/model/a;

    move-result-object v3

    .line 323
    invoke-virtual {v3}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v3

    .line 319
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/twitter/library/provider/au;->e(Lcom/twitter/library/provider/au;Z)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    invoke-static {v2}, Lcom/twitter/library/provider/au;->g(Lcom/twitter/library/provider/au;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const-class v2, Lbdn;

    new-instance v3, Lcom/twitter/database/model/a;

    const-string/jumbo v4, "account_id"

    sget-object v5, Lcom/twitter/database/model/ColumnDefinition$Type;->e:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v3, v4, v5}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    const-wide/16 v4, 0x0

    .line 331
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;Z)Lcom/twitter/database/model/a;

    move-result-object v3

    .line 332
    invoke-virtual {v3}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v3

    .line 328
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/twitter/library/provider/au;->d(Lcom/twitter/library/provider/au;Z)Z

    .line 335
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    const-string/jumbo v3, "account_settings"

    const-string/jumbo v4, "account_id"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/library/provider/au;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 339
    const-string/jumbo v3, "account_settings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 340
    if-eqz v23, :cond_11

    .line 342
    :try_start_0
    const-string/jumbo v2, "account_name"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 343
    const-string/jumbo v2, "notif_mention"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 345
    const-string/jumbo v2, "notif_message"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 347
    const-string/jumbo v2, "notif_tweet"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 348
    const-string/jumbo v2, "notif_experimental"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 350
    const-string/jumbo v2, "notif_lifeline_alerts"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 352
    const-string/jumbo v2, "notif_recommendations"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 354
    const-string/jumbo v2, "notif_news"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 355
    const-string/jumbo v2, "notif_vit_notable_event"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 357
    const-string/jumbo v2, "notif_offer_redemption"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 359
    const-string/jumbo v2, "notif_highlights"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 361
    const-string/jumbo v2, "notif_moments"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 363
    :cond_1
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 364
    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    invoke-static {v2}, Lcom/twitter/library/provider/au;->d(Lcom/twitter/library/provider/au;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 366
    if-eqz v2, :cond_1

    .line 369
    new-instance v3, Lcom/twitter/library/provider/cc;

    invoke-direct {v3}, Lcom/twitter/library/provider/cc;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    .line 370
    invoke-static {v4}, Lcom/twitter/library/provider/au;->e(Lcom/twitter/library/provider/au;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/twitter/library/provider/cc;->a(I)Lcom/twitter/library/provider/cc;

    move-result-object v6

    .line 374
    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_d

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 375
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 376
    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->b(I)Lcom/twitter/library/provider/cc;

    move v5, v3

    .line 381
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 382
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->m(I)Lcom/twitter/library/provider/cc;

    .line 384
    :cond_2
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_3

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 385
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->l(I)Lcom/twitter/library/provider/cc;

    .line 387
    :cond_3
    const/4 v3, -0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_4

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 388
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->n(I)Lcom/twitter/library/provider/cc;

    .line 390
    :cond_4
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_5

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 391
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->o(I)Lcom/twitter/library/provider/cc;

    .line 393
    :cond_5
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_6

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 394
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->p(I)Lcom/twitter/library/provider/cc;

    .line 396
    :cond_6
    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_7

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 397
    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->q(I)Lcom/twitter/library/provider/cc;

    .line 399
    :cond_7
    const/4 v3, -0x1

    move/from16 v0, v32

    if-eq v0, v3, :cond_8

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 400
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->r(I)Lcom/twitter/library/provider/cc;

    .line 402
    :cond_8
    const/4 v3, -0x1

    move/from16 v0, v33

    if-eq v0, v3, :cond_9

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 403
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->s(I)Lcom/twitter/library/provider/cc;

    .line 405
    :cond_9
    const/4 v3, -0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_a

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 406
    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->t(I)Lcom/twitter/library/provider/cc;

    .line 408
    :cond_a
    const/4 v3, -0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_b

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 409
    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->u(I)Lcom/twitter/library/provider/cc;

    .line 411
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    invoke-static {v3}, Lcom/twitter/library/provider/au;->h(Lcom/twitter/library/provider/au;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 412
    if-eqz v2, :cond_e

    .line 413
    invoke-static {v2}, Lcom/twitter/library/util/b;->c(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v3

    move-object v4, v3

    .line 414
    :goto_2
    and-int/lit8 v3, v5, 0x40

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    .line 417
    :goto_3
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    iget-boolean v3, v4, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v3, :cond_c

    .line 418
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/twitter/library/provider/cc;->k(I)Lcom/twitter/library/provider/cc;

    .line 421
    :cond_c
    invoke-virtual {v6}, Lcom/twitter/library/provider/cc;->a()Lcom/twitter/library/provider/ca;

    move-result-object v21

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    .line 423
    invoke-static {v3}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    .line 422
    invoke-static {v3, v4, v5}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v20

    .line 424
    move-object/from16 v0, v21

    iget v2, v0, Lcom/twitter/library/provider/ca;->m:I

    move-object/from16 v0, v21

    iget v3, v0, Lcom/twitter/library/provider/ca;->d:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/twitter/library/provider/ca;->e:I

    move-object/from16 v0, v21

    iget v5, v0, Lcom/twitter/library/provider/ca;->f:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/twitter/library/provider/ca;->h:I

    move-object/from16 v0, v21

    iget v7, v0, Lcom/twitter/library/provider/ca;->n:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/twitter/library/provider/ca;->i:I

    move-object/from16 v0, v21

    iget v9, v0, Lcom/twitter/library/provider/ca;->o:I

    move-object/from16 v0, v21

    iget v10, v0, Lcom/twitter/library/provider/ca;->p:I

    move-object/from16 v0, v21

    iget v11, v0, Lcom/twitter/library/provider/ca;->q:I

    move-object/from16 v0, v21

    iget v12, v0, Lcom/twitter/library/provider/ca;->r:I

    move-object/from16 v0, v21

    iget v13, v0, Lcom/twitter/library/provider/ca;->s:I

    move-object/from16 v0, v21

    iget v14, v0, Lcom/twitter/library/provider/ca;->j:I

    move-object/from16 v0, v21

    iget v15, v0, Lcom/twitter/library/provider/ca;->k:I

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->l:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->t:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->u:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->v:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->g:I

    move/from16 v21, v0

    invoke-static/range {v2 .. v21}, Lcom/twitter/library/provider/NotificationSetting;->a(IIIIIIIIIIIIIIIIIIZI)I

    move-result v2

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 437
    :catchall_0
    move-exception v2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v2

    .line 378
    :cond_d
    const/16 v3, 0x2755

    move v5, v3

    goto/16 :goto_1

    .line 413
    :cond_e
    const/4 v3, 0x0

    move-object v4, v3

    goto/16 :goto_2

    .line 414
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 437
    :cond_10
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_11
    new-instance v6, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 441
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 442
    const-string/jumbo v4, "push_flags"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    invoke-static {v3}, Lcom/twitter/library/provider/au;->d(Lcom/twitter/library/provider/au;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 445
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/ax;->b:Lcom/twitter/library/provider/au;

    .line 446
    invoke-static {v2}, Lcom/twitter/library/provider/au;->c(Lcom/twitter/library/provider/au;)Z

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p2

    .line 445
    invoke-static/range {v3 .. v8}, Lcom/twitter/library/provider/ar;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    goto :goto_4

    .line 449
    :cond_12
    return-void
.end method
