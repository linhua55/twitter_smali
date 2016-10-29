.class public Lcom/twitter/library/provider/ar;
.super Lbak;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/provider/ar;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/twitter/database/schema/GlobalSchema;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "global.db"

    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lbak;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 84
    iput-object p1, p0, Lcom/twitter/library/provider/ar;->b:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->b()V

    .line 86
    return-void
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 247
    .line 248
    const-string/jumbo v0, "account_settings"

    const-string/jumbo v1, "account_id=?"

    new-array v2, v6, [Ljava/lang/String;

    .line 249
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 248
    invoke-virtual {p0, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int v1, v7, v0

    .line 250
    if-nez v1, :cond_7

    .line 251
    const-string/jumbo v0, "account_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string/jumbo v0, "push_flags"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const-string/jumbo v0, "push_flags"

    sget v2, Lcso;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    :cond_0
    const-string/jumbo v0, "interval"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    if-eqz p4, :cond_6

    const/16 v0, 0x5a0

    .line 259
    :goto_0
    const-string/jumbo v2, "interval"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    :cond_1
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    const-string/jumbo v0, "vibrate"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 264
    :cond_2
    const-string/jumbo v0, "light"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    const-string/jumbo v0, "light"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 267
    :cond_3
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 268
    const-string/jumbo v0, "ringtone"

    sget-object v2, Lcom/twitter/library/provider/bo;->a:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_4
    const-string/jumbo v0, "account_settings"

    const-string/jumbo v2, "account_id"

    invoke-virtual {p0, v0, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 271
    add-int/lit8 v0, v1, 0x1

    .line 274
    :goto_1
    if-lez v0, :cond_5

    if-eqz p5, :cond_5

    .line 275
    new-array v1, v6, [Landroid/net/Uri;

    sget-object v2, Lcom/twitter/library/provider/GlobalDatabaseProvider;->c:Landroid/net/Uri;

    aput-object v2, v1, v7

    invoke-virtual {p5, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 277
    :cond_5
    return v0

    .line 257
    :cond_6
    const/16 v0, 0xf

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;
    .locals 3

    .prologue
    .line 89
    const-class v1, Lcom/twitter/library/provider/ar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/provider/ar;->a:Lcom/twitter/library/provider/ar;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/twitter/library/provider/ar;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/provider/ar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/provider/ar;->a:Lcom/twitter/library/provider/ar;

    .line 92
    :cond_0
    sget-object v0, Lcom/twitter/library/provider/ar;->a:Lcom/twitter/library/provider/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(J)I
    .locals 7

    .prologue
    .line 172
    sget v1, Lcso;->a:I

    .line 173
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->d()Lcom/twitter/database/schema/GlobalSchema;

    move-result-object v0

    const-class v2, Lbdn;

    invoke-interface {v0, v2}, Lcom/twitter/database/schema/GlobalSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbdn;

    invoke-interface {v0}, Lbdn;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 174
    const-string/jumbo v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 175
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 174
    invoke-interface {v0, v2, v3}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v2

    .line 177
    :try_start_0
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->f()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 181
    :goto_0
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    .line 183
    return v0

    .line 181
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(JILcom/twitter/library/provider/b;)I
    .locals 7

    .prologue
    .line 424
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 427
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v4, "mention"

    const-string/jumbo v0, "mention"

    .line 428
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;)I

    move-result v0

    or-int v5, v0, p3

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p4

    .line 427
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    move-result v0

    goto :goto_0
.end method

.method public a(JIZLcom/twitter/library/provider/b;)I
    .locals 7

    .prologue
    .line 148
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 149
    const-string/jumbo v0, "push_flags"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    move-object v6, p5

    .line 150
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    move-result v0

    return v0
.end method

.method public a(JJ)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 537
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 552
    :goto_0
    return v0

    .line 540
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 541
    const-string/jumbo v1, "account_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 546
    :try_start_0
    const-string/jumbo v2, "widget_settings"

    const-string/jumbo v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 547
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 546
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 548
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I
    .locals 7

    .prologue
    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 227
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    move-result v0

    .line 228
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(JLcom/twitter/library/provider/ca;ZLcom/twitter/library/provider/b;)I
    .locals 23

    .prologue
    .line 155
    move-object/from16 v0, p3

    iget v2, v0, Lcom/twitter/library/provider/ca;->m:I

    move-object/from16 v0, p3

    iget v3, v0, Lcom/twitter/library/provider/ca;->d:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/twitter/library/provider/ca;->e:I

    move-object/from16 v0, p3

    iget v5, v0, Lcom/twitter/library/provider/ca;->f:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/twitter/library/provider/ca;->h:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/twitter/library/provider/ca;->n:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/twitter/library/provider/ca;->i:I

    move-object/from16 v0, p3

    iget v9, v0, Lcom/twitter/library/provider/ca;->o:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/twitter/library/provider/ca;->p:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/twitter/library/provider/ca;->q:I

    move-object/from16 v0, p3

    iget v12, v0, Lcom/twitter/library/provider/ca;->r:I

    move-object/from16 v0, p3

    iget v13, v0, Lcom/twitter/library/provider/ca;->s:I

    move-object/from16 v0, p3

    iget v14, v0, Lcom/twitter/library/provider/ca;->j:I

    move-object/from16 v0, p3

    iget v15, v0, Lcom/twitter/library/provider/ca;->k:I

    move-object/from16 v0, p3

    iget v0, v0, Lcom/twitter/library/provider/ca;->l:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/twitter/library/provider/ca;->t:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/twitter/library/provider/ca;->u:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/twitter/library/provider/ca;->v:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/twitter/library/provider/ca;->g:I

    move/from16 v21, v0

    invoke-static/range {v2 .. v21}, Lcom/twitter/library/provider/NotificationSetting;->a(IIIIIIIIIIIIIIIIIIZI)I

    move-result v2

    .line 162
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 163
    const-string/jumbo v3, "push_flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string/jumbo v2, "vibrate"

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/twitter/library/provider/ca;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 165
    const-string/jumbo v2, "ringtone"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/twitter/library/provider/ca;->b:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "light"

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/twitter/library/provider/ca;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    .line 167
    invoke-virtual/range {v3 .. v8}, Lcom/twitter/library/provider/ar;->a(JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    move-result v2

    return v2
.end method

.method public a(JLjava/lang/String;)I
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 394
    .line 396
    const-string/jumbo v0, "tweet"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v9, v4

    .line 407
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "activity_states"

    sget-object v2, Lcom/twitter/library/provider/at;->a:[Ljava/lang/String;

    const-string/jumbo v3, "account_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 408
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 407
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 410
    if-eqz v1, :cond_5

    .line 412
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 416
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 419
    :goto_2
    return v0

    .line 398
    :cond_0
    const-string/jumbo v0, "mention"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    const/4 v0, 0x2

    move v9, v0

    goto :goto_0

    .line 400
    :cond_1
    const-string/jumbo v0, "unread_interactions"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    const/4 v0, 0x3

    move v9, v0

    goto :goto_0

    .line 402
    :cond_2
    const-string/jumbo v0, "message"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    const/4 v0, 0x4

    move v9, v0

    goto :goto_0

    .line 405
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid activity type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    move v0, v10

    goto :goto_1

    :cond_5
    move v0, v10

    goto :goto_2
.end method

.method public a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I
    .locals 9

    .prologue
    .line 356
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 357
    const/4 v0, 0x0

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 360
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 364
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 367
    :try_start_0
    const-string/jumbo v4, "activity_states"

    const-string/jumbo v5, "account_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 369
    if-nez v0, :cond_2

    .line 370
    const-string/jumbo v4, "account_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string/jumbo v4, "activity_states"

    const-string/jumbo v5, "account_id"

    invoke-virtual {v2, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 372
    add-int/lit8 v0, v0, 0x1

    .line 375
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 379
    if-lez v0, :cond_0

    if-eqz p5, :cond_0

    .line 380
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v4, Lcom/twitter/library/provider/GlobalDatabaseProvider;->b:Landroid/net/Uri;

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p5, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(JZ)I
    .locals 5

    .prologue
    .line 582
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->d()Lcom/twitter/database/schema/GlobalSchema;

    move-result-object v0

    const-class v1, Lbdn;

    invoke-interface {v0, v1}, Lcom/twitter/database/schema/GlobalSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbdn;

    invoke-interface {v0}, Lbdn;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 585
    const-string/jumbo v1, "account_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 586
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v1

    .line 588
    :try_start_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->i()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 592
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    .line 598
    :goto_0
    return v0

    .line 592
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    .line 595
    :cond_1
    if-eqz p3, :cond_2

    .line 596
    const/16 v0, 0x5a0

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    throw v0

    .line 598
    :cond_2
    const/16 v0, 0xf

    goto :goto_0
.end method

.method public a([I)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 514
    .line 515
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 518
    :try_start_0
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p1, v0

    .line 519
    const-string/jumbo v5, "widget_settings"

    const-string/jumbo v6, "widget_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 520
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    .line 519
    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 526
    return v1

    .line 524
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public b(J)Lcom/twitter/library/provider/ca;
    .locals 7

    .prologue
    .line 188
    new-instance v1, Lcom/twitter/library/provider/cc;

    invoke-direct {v1}, Lcom/twitter/library/provider/cc;-><init>()V

    .line 189
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->d()Lcom/twitter/database/schema/GlobalSchema;

    move-result-object v0

    const-class v2, Lbdn;

    invoke-interface {v0, v2}, Lcom/twitter/database/schema/GlobalSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbdn;

    invoke-interface {v0}, Lbdn;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 190
    const-string/jumbo v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 191
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 190
    invoke-interface {v0, v2, v3}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v2

    .line 193
    :try_start_0
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/cc;->a(I)Lcom/twitter/library/provider/cc;

    .line 195
    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/cc;->a(Z)Lcom/twitter/library/provider/cc;

    .line 196
    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->h()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/cc;->a(Ljava/lang/String;)Lcom/twitter/library/provider/cc;

    .line 198
    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->j()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/cc;->b(Z)Lcom/twitter/library/provider/cc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    .line 203
    invoke-virtual {v1}, Lcom/twitter/library/provider/cc;->a()Lcom/twitter/library/provider/ca;

    move-result-object v0

    return-object v0

    .line 197
    :cond_1
    :try_start_1
    sget-object v0, Lcom/twitter/library/provider/bo;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    throw v0
.end method

.method public synthetic bn_()Lcom/twitter/database/model/l;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->d()Lcom/twitter/database/schema/GlobalSchema;

    move-result-object v0

    return-object v0
.end method

.method public c(J)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 286
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 342
    :goto_0
    return v7

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->d()Lcom/twitter/database/schema/GlobalSchema;

    move-result-object v0

    const-class v2, Lbdn;

    invoke-interface {v0, v2}, Lcom/twitter/database/schema/GlobalSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbdn;

    invoke-interface {v0}, Lbdn;->f()Lcom/twitter/database/model/q;

    move-result-object v2

    .line 291
    const-string/jumbo v0, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 292
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v0, v3}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v3

    .line 294
    :try_start_0
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->e()Ljava/lang/Integer;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 301
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    .line 306
    new-instance v0, Lcom/twitter/database/model/i;

    invoke-direct {v0}, Lcom/twitter/database/model/i;-><init>()V

    const-string/jumbo v3, "notif_id"

    .line 308
    invoke-static {v3}, Lbar;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/database/model/i;->a(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v0

    const-string/jumbo v3, "notif_id ASC"

    .line 309
    invoke-virtual {v0, v3}, Lcom/twitter/database/model/i;->b(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/twitter/database/model/i;->a()Lcom/twitter/database/model/g;

    move-result-object v0

    .line 307
    invoke-interface {v2, v0}, Lcom/twitter/database/model/q;->a(Lcom/twitter/database/model/g;)Lcom/twitter/database/model/j;

    move-result-object v2

    .line 313
    :try_start_1
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 329
    :goto_1
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    .line 331
    if-eq v0, v7, :cond_2

    .line 333
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 334
    const-string/jumbo v1, "notif_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    iget-object v1, p0, Lcom/twitter/library/provider/ar;->b:Landroid/content/Context;

    .line 336
    invoke-static {v1}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    .line 335
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    move-result v1

    if-nez v1, :cond_2

    .line 338
    const-string/jumbo v0, "GlobalDatabaseHelper"

    const-string/jumbo v1, "Failed to save notification id"

    invoke-static {v0, v1}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :cond_2
    move v7, v0

    .line 342
    goto/16 :goto_0

    .line 301
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    throw v0

    .line 323
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 317
    :cond_4
    invoke-virtual {v2}, Lcom/twitter/database/model/j;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    iget-object v0, v2, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbdo;

    invoke-interface {v0}, Lbdo;->e()Ljava/lang/Integer;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    sub-int/2addr v3, v1

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_3

    .line 326
    :cond_5
    add-int/lit16 v0, v1, 0x3e8

    goto :goto_1

    .line 329
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/twitter/database/model/j;->close()V

    throw v0
.end method

.method public d(J)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 436
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 449
    :goto_0
    return v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 443
    :try_start_0
    const-string/jumbo v0, "account_settings"

    const-string/jumbo v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 444
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 443
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 445
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public d()Lcom/twitter/database/schema/GlobalSchema;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/library/provider/ar;->c:Lcom/twitter/database/schema/GlobalSchema;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/twitter/library/provider/as;

    invoke-direct {v0, p0}, Lcom/twitter/library/provider/as;-><init>(Lcom/twitter/library/provider/ar;)V

    invoke-static {v0}, Lcom/twitter/util/h;->a(Lcom/twitter/util/concurrent/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/GlobalSchema;

    iput-object v0, p0, Lcom/twitter/library/provider/ar;->c:Lcom/twitter/database/schema/GlobalSchema;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/provider/ar;->c:Lcom/twitter/database/schema/GlobalSchema;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/GlobalSchema;

    return-object v0
.end method

.method public e(J)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 456
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 469
    :goto_0
    return v0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/provider/ar;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 461
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 463
    :try_start_0
    const-string/jumbo v0, "activity_states"

    const-string/jumbo v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 464
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 463
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 465
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 123
    const-class v0, Lcom/twitter/database/schema/GlobalSchema;

    new-instance v1, Lbaw;

    invoke-direct {v1, p1}, Lbaw;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, v1}, Lcom/twitter/database/model/m;->a(Ljava/lang/Class;Lcom/twitter/database/model/b;)Lcom/twitter/database/model/l;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lcom/twitter/database/model/l;->g()V

    .line 125
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    .prologue
    .line 134
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 137
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 138
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_0
    const-class v0, Lcom/twitter/database/schema/GlobalSchema;

    new-instance v1, Lbaw;

    invoke-direct {v1, p1}, Lbaw;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, v1}, Lcom/twitter/database/model/o;->a(Ljava/lang/Class;Lcom/twitter/database/model/b;)Lcom/twitter/database/model/n;

    move-result-object v1

    .line 142
    new-instance v0, Lcom/twitter/library/provider/au;

    iget-object v5, p0, Lcom/twitter/library/provider/ar;->b:Landroid/content/Context;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/provider/au;-><init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;Landroid/util/LongSparseArray;Ljava/util/Map;Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/provider/au;->a(II)V

    .line 144
    return-void
.end method
