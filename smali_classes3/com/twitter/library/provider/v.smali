.class public Lcom/twitter/library/provider/v;
.super Lbam;
.source "Twttr"


# instance fields
.field private final b:Lbao;

.field private c:Z

.field private d:Z


# direct methods
.method protected constructor <init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lbam;-><init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    new-instance v0, Lcom/twitter/library/provider/w;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/provider/w;-><init>(Lcom/twitter/library/provider/v;I)V

    iput-object v0, p0, Lcom/twitter/library/provider/v;->b:Lbao;

    .line 49
    return-void
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 289
    :try_start_0
    const-string/jumbo v1, "drafts"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 291
    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 315
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 296
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    const/4 v0, 0x1

    .line 298
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v3, Lcom/twitter/model/media/EditableMedia;->j:Lcom/twitter/util/serialization/ah;

    invoke-static {v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 297
    invoke-static {v0, v3}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 299
    if-eqz v0, :cond_1

    .line 300
    sget-object v3, Lcom/twitter/model/drafts/DraftAttachment;->b:Lczn;

    invoke-static {v0, v3}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    .line 302
    const-string/jumbo v3, "media"

    sget-object v4, Lcom/twitter/model/drafts/DraftAttachment;->a:Lcom/twitter/util/serialization/ah;

    .line 303
    invoke-static {v4}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v4

    .line 302
    invoke-static {v0, v4}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 304
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 305
    const-string/jumbo v0, "drafts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 309
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 309
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 311
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 313
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/provider/v;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/twitter/library/provider/v;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/twitter/library/provider/v;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/twitter/library/provider/v;->c:Z

    return p1
.end method

.method static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 320
    :try_start_0
    const-string/jumbo v1, "drafts"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 322
    if-eqz v1, :cond_2

    .line 324
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 325
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 327
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/media/model/legacyeditablemedia/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v3, "media"

    sget-object v6, Lcom/twitter/model/media/EditableMedia;->j:Lcom/twitter/util/serialization/ah;

    .line 330
    invoke-static {v6}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v6

    .line 329
    invoke-static {v0, v6}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 331
    const-string/jumbo v0, "drafts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 335
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 342
    return-void
.end method

.method static b(Lcom/twitter/database/model/n;)V
    .locals 6

    .prologue
    .line 269
    const-class v0, Lcom/twitter/database/schema/DraftsSchema;

    invoke-static {v0}, Lcom/twitter/database/model/m;->a(Ljava/lang/Class;)Lcom/twitter/database/model/l;

    move-result-object v0

    .line 270
    const-string/jumbo v1, ", "

    const-class v2, Lcom/twitter/database/schema/a;

    .line 271
    invoke-interface {v0, v2}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/a;

    invoke-interface {v0}, Lcom/twitter/database/schema/a;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/m;

    invoke-virtual {v0}, Lcom/twitter/database/internal/m;->a()[Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v1, v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string/jumbo v1, "drafts_old"

    .line 273
    invoke-interface {p0}, Lcom/twitter/database/model/n;->a()Lcom/twitter/database/model/w;

    move-result-object v1

    .line 275
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ALTER TABLE drafts RENAME TO drafts_old;"

    aput-object v4, v2, v3

    invoke-interface {p0, v2}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 276
    const-class v2, Lcom/twitter/database/schema/a;

    invoke-interface {p0, v2}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 277
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INSERT INTO drafts SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " FROM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "drafts_old"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {p0, v2}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "DROP TABLE drafts_old;"

    aput-object v3, v0, v2

    invoke-interface {p0, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 280
    invoke-interface {v1}, Lcom/twitter/database/model/w;->a()Lcom/twitter/database/model/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/twitter/database/model/w;->close()V

    throw v0
.end method

.method static synthetic b(Lcom/twitter/library/provider/v;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/twitter/library/provider/v;->d:Z

    return p1
.end method

.method static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 347
    :try_start_0
    const-string/jumbo v1, "drafts"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "media_entities"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 349
    if-eqz v1, :cond_2

    .line 351
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 352
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 354
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/media/model/legacyentities/a;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 355
    if-eqz v0, :cond_0

    .line 356
    sget-object v3, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    invoke-static {v0, v3}, Lcom/twitter/library/media/model/legacyentities/a;->a(Ljava/util/List;Lcom/twitter/model/media/MediaSource;)Ljava/util/List;

    move-result-object v0

    .line 358
    const-string/jumbo v3, "media"

    sget-object v6, Lcom/twitter/model/media/EditableMedia;->j:Lcom/twitter/util/serialization/ah;

    .line 359
    invoke-static {v6}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v6

    .line 358
    invoke-static {v0, v6}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 360
    const-string/jumbo v0, "drafts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 369
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 364
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 371
    return-void
.end method

.method static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 374
    .line 375
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 377
    :try_start_0
    const-string/jumbo v1, "drafts"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "flags"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 379
    if-eqz v1, :cond_2

    .line 381
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 382
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 384
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 385
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_0

    .line 386
    const-string/jumbo v5, "flags"

    and-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string/jumbo v4, "sending_state"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string/jumbo v4, "drafts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 392
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 397
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 399
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x1c

    return v0
.end method

.method protected a(Lcom/twitter/database/model/n;)Lcom/twitter/database/model/l;
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/twitter/library/provider/v;->c:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1}, Lcom/twitter/library/provider/v;->b(Lcom/twitter/database/model/n;)V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lbam;->a(Lcom/twitter/database/model/n;)Lcom/twitter/database/model/l;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lbao;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 68
    new-instance v0, Lcom/twitter/library/provider/ah;

    invoke-direct {v0, p0, v4}, Lcom/twitter/library/provider/ah;-><init>(Lcom/twitter/library/provider/v;I)V

    const/16 v1, 0x1a

    new-array v1, v1, [Lbao;

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/library/provider/aj;

    invoke-direct {v3, p0, v5}, Lcom/twitter/library/provider/aj;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/twitter/library/provider/ak;

    invoke-direct {v3, p0, v6}, Lcom/twitter/library/provider/ak;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/twitter/library/provider/al;

    invoke-direct {v2, p0, v7}, Lcom/twitter/library/provider/al;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v2, v1, v4

    sget-object v2, Lcom/twitter/library/provider/v;->a:Lbao;

    aput-object v2, v1, v5

    sget-object v2, Lcom/twitter/library/provider/v;->a:Lbao;

    aput-object v2, v1, v6

    sget-object v2, Lcom/twitter/library/provider/v;->a:Lbao;

    aput-object v2, v1, v7

    const/4 v2, 0x6

    new-instance v3, Lcom/twitter/library/provider/am;

    invoke-direct {v3, p0, v8}, Lcom/twitter/library/provider/am;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/twitter/library/provider/an;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/an;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/twitter/library/provider/ao;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ao;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/twitter/library/provider/v;->b:Lbao;

    aput-object v2, v1, v8

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/twitter/library/provider/v;->b:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/twitter/library/provider/ap;

    const/16 v4, 0xe

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ap;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/twitter/library/provider/x;

    const/16 v4, 0xf

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/x;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/twitter/library/provider/v;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/twitter/library/provider/y;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/y;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/twitter/library/provider/z;

    const/16 v4, 0x12

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/z;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/twitter/library/provider/v;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/twitter/library/provider/aa;

    const/16 v4, 0x14

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/aa;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/twitter/library/provider/ab;

    const/16 v4, 0x15

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ab;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/twitter/library/provider/v;->b:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/twitter/library/provider/ac;

    const/16 v4, 0x17

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ac;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/twitter/library/provider/ad;

    const/16 v4, 0x18

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ad;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/twitter/library/provider/ae;

    const/16 v4, 0x19

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ae;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/twitter/library/provider/af;

    const/16 v4, 0x1a

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/af;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lcom/twitter/library/provider/ag;

    const/16 v4, 0x1b

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ag;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/twitter/library/provider/ai;

    const/16 v4, 0x1c

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ai;-><init>(Lcom/twitter/library/provider/v;I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
