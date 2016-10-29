.class public Lcom/twitter/library/platform/PushService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "49625052041"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static a(JJLandroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 593
    .line 594
    invoke-static {p4}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lcom/twitter/library/provider/ar;->d()Lcom/twitter/database/schema/GlobalSchema;

    move-result-object v0

    const-class v3, Lbbv;

    invoke-interface {v0, v3}, Lcom/twitter/database/schema/GlobalSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbbv;

    invoke-interface {v0}, Lbbv;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 596
    const-string/jumbo v3, "account_settings_account_id=?"

    new-array v4, v2, [Ljava/lang/String;

    .line 597
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v3

    .line 599
    :try_start_0
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 600
    iget-object v0, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbbw;

    invoke-interface {v0}, Lbbw;->f()I

    move-result v4

    .line 603
    const/16 v0, 0x200

    invoke-static {v4, v0}, Lcso;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbbw;

    invoke-interface {v0}, Lbbw;->c()I

    move-result v0

    if-ne v2, v0, :cond_0

    move v1, v2

    .line 606
    :cond_0
    iget-object v0, v3, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbbw;

    invoke-interface {v0}, Lbbw;->d()I

    move-result v2

    .line 607
    const/16 v0, 0x8

    const/4 v5, 0x4

    invoke-static {v4, v0, v5}, Lcso;->a(III)I

    move-result v0

    if-eqz v0, :cond_d

    .line 609
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_c

    .line 610
    or-int/lit8 v0, v1, 0x2

    .line 612
    :goto_0
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_1

    .line 613
    or-int/lit16 v0, v0, 0x200

    .line 616
    :cond_1
    :goto_1
    const/16 v1, 0x100

    const/16 v5, 0x80

    invoke-static {v4, v1, v5}, Lcso;->a(III)I

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_2

    .line 618
    or-int/lit8 v0, v0, 0x8

    .line 620
    :cond_2
    const/16 v1, 0x40

    const/16 v5, 0x20

    invoke-static {v4, v1, v5}, Lcso;->a(III)I

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_3

    .line 622
    or-int/lit8 v0, v0, 0x10

    .line 624
    :cond_3
    const/high16 v1, 0x2000000

    const/high16 v5, 0x1000000

    invoke-static {v4, v1, v5}, Lcso;->a(III)I

    move-result v1

    if-eqz v1, :cond_4

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_4

    .line 626
    or-int/lit16 v0, v0, 0x400

    .line 628
    :cond_4
    const/16 v1, 0x10

    invoke-static {v4, v1}, Lcso;->b(II)Z

    move-result v1

    if-eqz v1, :cond_6

    and-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_5

    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_6

    .line 631
    :cond_5
    or-int/lit8 v0, v0, 0x20

    .line 633
    :cond_6
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_7

    .line 634
    or-int/lit8 v0, v0, 0x40

    .line 636
    :cond_7
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_8

    .line 637
    or-int/lit16 v0, v0, 0x80

    .line 639
    :cond_8
    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_9

    .line 640
    or-int/lit16 v0, v0, 0x100

    .line 642
    :cond_9
    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcso;->b(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 643
    invoke-static {p4, p2, p3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 644
    invoke-virtual {v1}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "SELECT COUNT(*) FROM conversations WHERE last_readable_event_id > last_read_event_id AND last_readable_event_id > (SELECT COALESCE((SELECT CAST(next as int) AS last_seen_event_id FROM cursors WHERE kind=14 AND type=0 ORDER BY last_seen_event_id DESC LIMIT 1), 0));"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 646
    if-eqz v1, :cond_b

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_a

    .line 649
    or-int/lit8 v0, v0, 0x4

    .line 651
    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :cond_b
    :goto_2
    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    .line 658
    return v0

    .line 656
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/twitter/database/model/j;->close()V

    throw v0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto :goto_2
.end method

.method private static a(Landroid/os/Bundle;Landroid/content/SharedPreferences;Landroid/content/Context;ILjava/lang/String;)Lcom/twitter/library/platform/f;
    .locals 14

    .prologue
    .line 220
    new-instance v6, Lcom/twitter/library/platform/notifications/f;

    invoke-direct {v6, p0}, Lcom/twitter/library/platform/notifications/f;-><init>(Landroid/os/Bundle;)V

    .line 221
    if-nez p3, :cond_0

    .line 222
    new-instance v2, Lcom/twitter/library/platform/f;

    invoke-direct {v2}, Lcom/twitter/library/platform/f;-><init>()V

    .line 223
    iput-object p0, v2, Lcom/twitter/library/platform/f;->d:Landroid/os/Bundle;

    .line 224
    iget-object v3, v2, Lcom/twitter/library/platform/f;->d:Landroid/os/Bundle;

    const-string/jumbo v4, "recipient_id"

    invoke-virtual {v6}, Lcom/twitter/library/platform/notifications/f;->f()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 369
    :goto_0
    return-object v2

    .line 227
    :cond_0
    invoke-virtual {v6}, Lcom/twitter/library/platform/notifications/f;->l()Lcom/twitter/library/platform/notifications/u;

    move-result-object v7

    .line 230
    invoke-virtual {v6}, Lcom/twitter/library/platform/notifications/f;->g()Lcsi;

    move-result-object v8

    .line 231
    if-nez v8, :cond_1

    .line 232
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {}, Lbix;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    iget-object v4, v8, Lcsi;->b:Lcse;

    iget-wide v4, v4, Lcse;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 239
    const-string/jumbo v2, "priority"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 240
    const-string/jumbo v2, "priority"

    invoke-virtual {v6}, Lcom/twitter/library/platform/notifications/f;->j()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    :goto_1
    invoke-virtual {v6}, Lcom/twitter/library/platform/notifications/f;->h()Lcsa;

    move-result-object v10

    .line 249
    iget-object v2, v8, Lcsi;->b:Lcse;

    iget-wide v2, v2, Lcse;->b:J

    invoke-static {p0, v2, v3}, Lcom/twitter/library/platform/PushService;->a(Landroid/os/Bundle;J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 250
    const-string/jumbo v2, "actions"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {}, Lcjw;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 253
    :try_start_0
    const-string/jumbo v3, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification Payload - actions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x2

    .line 254
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-static {v3, v4}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_3
    :goto_2
    const-class v3, Lcrp;

    invoke-static {v2, v3}, Lcom/twitter/model/json/common/g;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    .line 263
    :goto_3
    const/4 v2, 0x0

    .line 264
    const/4 v4, 0x0

    .line 265
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_17

    .line 266
    iget v3, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v11, 0x16

    if-eq v3, v11, :cond_4

    iget v3, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v11, 0x112

    if-ne v3, v11, :cond_17

    .line 268
    :cond_4
    const-string/jumbo v3, "notification_event_data"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 270
    invoke-static {p0}, Lcom/twitter/library/platform/PushService;->b(Landroid/os/Bundle;)Lcom/twitter/model/dms/i;

    move-result-object v3

    .line 271
    invoke-static {p0, v3}, Lcom/twitter/library/platform/PushService;->a(Landroid/os/Bundle;Lcom/twitter/model/dms/i;)Lcom/twitter/model/dms/bo;

    move-result-object v11

    .line 272
    if-nez v11, :cond_7

    .line 273
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 242
    :cond_5
    const-string/jumbo v2, "priority"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    new-instance v2, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;

    const-string/jumbo v3, "Missing priority"

    invoke-direct {v2, v3}, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 260
    :cond_6
    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_3

    .line 276
    :cond_7
    invoke-static {}, Lbnv;->p()Z

    move-result v12

    if-nez v12, :cond_8

    .line 277
    invoke-static {v11, v3}, Lcom/twitter/library/platform/PushService;->a(Lcom/twitter/model/dms/bo;Lcom/twitter/model/dms/i;)Ljava/lang/String;

    move-result-object v2

    .line 282
    :cond_8
    const-string/jumbo v12, "notification_dm_data"

    sget-object v13, Lcom/twitter/model/dms/bo;->h:Lcom/twitter/util/serialization/ah;

    invoke-static {v9, v12, v11, v13}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 283
    const-string/jumbo v11, "notification_dm_attachment_type"

    if-eqz v3, :cond_b

    .line 284
    invoke-virtual {v3}, Lcom/twitter/model/dms/i;->a()I

    move-result v3

    .line 283
    :goto_4
    invoke-virtual {v9, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 291
    :goto_5
    iget v2, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v11, 0xfd

    if-ne v2, v11, :cond_16

    .line 292
    const-string/jumbo v2, "notification_event_data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 293
    const-string/jumbo v2, "notification_event_data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v2}, Lcom/twitter/library/platform/notifications/NotificationParser;->b(Ljava/lang/String;)Lcom/twitter/model/dms/as;

    move-result-object v11

    .line 295
    invoke-virtual {v11}, Lcom/twitter/model/dms/as;->a()Ljava/util/List;

    move-result-object v2

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/cz;

    .line 296
    const-string/jumbo v12, "notification_dm_data"

    sget-object v13, Lcom/twitter/model/dms/cz;->g:Lcom/twitter/util/serialization/ah;

    invoke-static {v9, v12, v2, v13}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 299
    invoke-static {}, Lbnv;->p()Z

    move-result v2

    if-nez v2, :cond_16

    .line 300
    invoke-virtual {v11}, Lcom/twitter/model/dms/as;->c()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/al;

    .line 301
    iget-object v4, v2, Lcom/twitter/model/dms/al;->e:Ljava/lang/String;

    .line 302
    iget-object v2, v8, Lcsi;->c:Lcse;

    if-eqz v2, :cond_15

    .line 303
    new-instance v2, Lbod;

    invoke-direct {v2}, Lbod;-><init>()V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbod;->a(Landroid/content/res/Resources;)Lbnp;

    move-result-object v2

    check-cast v2, Lbod;

    iget-object v3, v8, Lcsi;->c:Lcse;

    iget-wide v12, v3, Lcse;->b:J

    .line 305
    invoke-virtual {v2, v12, v13}, Lbod;->a(J)Lbnp;

    move-result-object v2

    check-cast v2, Lbod;

    iget-object v3, v8, Lcsi;->b:Lcse;

    iget-wide v12, v3, Lcse;->b:J

    .line 306
    invoke-virtual {v2, v12, v13}, Lbod;->b(J)Lbnp;

    move-result-object v2

    check-cast v2, Lbod;

    iget-object v3, v8, Lcsi;->c:Lcse;

    iget-object v3, v3, Lcse;->d:Ljava/lang/String;

    .line 307
    invoke-virtual {v2, v3}, Lbod;->a(Ljava/lang/String;)Lbnp;

    move-result-object v2

    check-cast v2, Lbod;

    const/16 v3, 0x11

    .line 308
    invoke-virtual {v2, v3}, Lbod;->a(I)Lbnp;

    move-result-object v2

    check-cast v2, Lbod;

    .line 309
    invoke-virtual {v2}, Lbod;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbno;

    .line 310
    invoke-virtual {v2}, Lbno;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v4

    .line 316
    :goto_6
    if-eqz v3, :cond_d

    .line 317
    const-string/jumbo v4, "text"

    invoke-virtual {v9, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_7
    if-eqz v2, :cond_10

    .line 328
    const-string/jumbo v3, "title"

    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_8
    const-string/jumbo v2, "scribe_target"

    const-string/jumbo v3, "scribe_target"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v2, "sound"

    const-string/jumbo v3, "sound"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v2, "collapse_key"

    iget-object v3, v7, Lcom/twitter/library/platform/notifications/u;->a:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v2, "category_type"

    iget v3, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string/jumbo v2, "recipient_id"

    iget-object v3, v8, Lcsi;->b:Lcse;

    iget-wide v12, v3, Lcse;->b:J

    invoke-virtual {v9, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 337
    const-string/jumbo v2, "impression_id"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget v2, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_11

    .line 341
    const-string/jumbo v2, "notification_setting_key"

    iget-object v3, v7, Lcom/twitter/library/platform/notifications/u;->a:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v2, "uri"

    const-string/jumbo v3, "uri"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "uri_new"

    invoke-virtual {v6}, Lcom/twitter/library/platform/notifications/f;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/twitter/library/platform/notifications/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_opt_out_count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 346
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    :cond_9
    :goto_9
    const-string/jumbo v2, "ticker"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 362
    const-string/jumbo v2, "ticker"

    const-string/jumbo v3, "ticker"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_a
    new-instance v2, Lcom/twitter/library/platform/f;

    invoke-direct {v2}, Lcom/twitter/library/platform/f;-><init>()V

    .line 365
    iput-object v10, v2, Lcom/twitter/library/platform/f;->a:Lcsa;

    .line 366
    iput-object v8, v2, Lcom/twitter/library/platform/f;->b:Lcsi;

    .line 367
    iput-object v5, v2, Lcom/twitter/library/platform/f;->c:Ljava/util/List;

    .line 368
    iput-object v9, v2, Lcom/twitter/library/platform/f;->d:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 284
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 286
    :cond_c
    new-instance v2, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;

    const-string/jumbo v3, "Missing notification_event_data"

    invoke-direct {v2, v3}, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 287
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 318
    :cond_d
    const-string/jumbo v3, "text"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 319
    const-string/jumbo v3, "text"

    const-string/jumbo v4, "text"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 320
    :cond_e
    if-eqz v10, :cond_f

    .line 321
    const-string/jumbo v3, "text"

    iget-object v4, v10, Lcsa;->e:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 323
    :cond_f
    new-instance v2, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;

    const-string/jumbo v3, "Missing text"

    invoke-direct {v2, v3}, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 324
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 330
    :cond_10
    const-string/jumbo v2, "title"

    const-string/jumbo v3, "title"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 347
    :cond_11
    iget v2, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_13

    .line 348
    const-string/jumbo v2, "uri"

    const-string/jumbo v3, "uri"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/twitter/library/platform/notifications/t;->e()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "presentation_type"

    .line 350
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 351
    if-eqz v2, :cond_12

    .line 352
    const-string/jumbo v3, "presentation_type"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 354
    :cond_12
    const-string/jumbo v2, "presentation_type"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 356
    :cond_13
    iget v2, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v3, 0x124

    if-eq v2, v3, :cond_14

    iget v2, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v3, 0x12f

    if-eq v2, v3, :cond_14

    iget v2, v7, Lcom/twitter/library/platform/notifications/u;->b:I

    const/16 v3, 0x130

    if-ne v2, v3, :cond_9

    .line 359
    :cond_14
    const-string/jumbo v2, "uri"

    const-string/jumbo v3, "uri"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 255
    :catch_0
    move-exception v3

    goto/16 :goto_2

    :cond_15
    move-object v2, v4

    goto/16 :goto_6

    :cond_16
    move-object v2, v4

    goto/16 :goto_6

    :cond_17
    move-object v3, v2

    goto/16 :goto_5
.end method

.method static a(Landroid/os/Bundle;)Lcom/twitter/library/platform/notifications/a;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 579
    new-instance v0, Lcom/twitter/library/platform/notifications/a;

    const-string/jumbo v1, ""

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/library/platform/notifications/a;-><init>(Ljava/lang/String;JZ)V

    .line 580
    new-instance v1, Lcom/twitter/library/platform/notifications/ae;

    invoke-direct {v1}, Lcom/twitter/library/platform/notifications/ae;-><init>()V

    iput-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 581
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput v4, v1, Lcom/twitter/library/platform/notifications/ae;->b:I

    .line 582
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput v4, v1, Lcom/twitter/library/platform/notifications/ae;->d:I

    .line 583
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput v4, v1, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 584
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const-string/jumbo v2, "impression_id"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/platform/notifications/ae;->e:Ljava/lang/String;

    .line 585
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const-string/jumbo v2, "uri"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    .line 586
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 587
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    .line 588
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const-string/jumbo v2, "scribe_target"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    .line 589
    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/i;Lcom/twitter/model/dms/i;)Lcom/twitter/model/core/i;
    .locals 5

    .prologue
    .line 418
    iget-object v2, p0, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    .line 419
    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-object p0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 424
    iget-object v3, v0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Lcom/twitter/model/dms/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    .line 427
    invoke-static {v2, v4}, Lcom/twitter/model/core/bm;->b(Ljava/lang/CharSequence;Lcom/twitter/model/core/bm;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x200e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    :cond_3
    new-instance v1, Lcom/twitter/model/core/i;

    iget v3, v0, Lcom/twitter/model/core/cx;->g:I

    iget v4, v0, Lcom/twitter/model/core/cx;->h:I

    .line 430
    invoke-static {v2, v3, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/twitter/model/core/bo;

    iget-object v4, p0, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    invoke-direct {v3, v4}, Lcom/twitter/model/core/bo;-><init>(Lcom/twitter/model/core/bm;)V

    .line 432
    invoke-virtual {v3, v0}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/bo;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-direct {v1, v2, v0}, Lcom/twitter/model/core/i;-><init>(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    move-object p0, v1

    .line 429
    goto :goto_0
.end method

.method private static a(Landroid/os/Bundle;Lcom/twitter/model/dms/i;)Lcom/twitter/model/dms/bo;
    .locals 2

    .prologue
    .line 393
    const-string/jumbo v0, "notification_event_data"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    if-nez p1, :cond_0

    const-string/jumbo v0, "is_partial"

    .line 395
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 396
    :goto_0
    invoke-static {v1, v0}, Lcom/twitter/library/platform/notifications/NotificationParser;->a(Ljava/lang/String;Z)Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/twitter/model/dms/bo;Lcom/twitter/model/dms/i;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    new-instance v0, Lcom/twitter/model/core/i;

    .line 405
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->o()Lcom/twitter/model/core/bm;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/core/i;-><init>(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    .line 404
    invoke-static {v0, p1}, Lcom/twitter/library/platform/PushService;->a(Lcom/twitter/model/core/i;Lcom/twitter/model/dms/i;)Lcom/twitter/model/core/i;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    invoke-static {v1, v0}, Lcom/twitter/model/core/bm;->a(Ljava/lang/StringBuilder;Lcom/twitter/model/core/bm;)Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->o()Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/model/core/bm;->a(Ljava/lang/StringBuilder;Lcom/twitter/model/core/bm;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/platform/notifications/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/twitter/library/platform/TwitterDataSyncService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    sget-object v1, Lcom/twitter/library/platform/notifications/a;->a:Lcom/twitter/util/serialization/ah;

    .line 179
    invoke-static {p1, v1}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v1

    .line 178
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 180
    const-string/jumbo v1, "from_push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    sget-object v1, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/platform/PushService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method static a(Landroid/os/Bundle;J)Z
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 450
    const-string/jumbo v1, "actions"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 451
    const-string/jumbo v2, "scribe_target"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v2}, Lcom/twitter/library/platform/notifications/o;->a(Ljava/lang/String;)Z

    move-result v2

    .line 454
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    const-string/jumbo v1, "android_notification_actions_from_push_payload_enabled"

    invoke-static {p1, p2, v1, v0}, Lcom/twitter/config/d;->a(JLjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/twitter/model/dms/i;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 374
    const-string/jumbo v0, "dm_tweet"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dm_tweet"

    .line 375
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/platform/notifications/NotificationParser;->a(Ljava/lang/String;)Lcom/twitter/model/dms/cf;

    move-result-object v0

    move-object v1, v0

    .line 377
    :goto_0
    const-string/jumbo v0, "attachment"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/twitter/model/dms/cb;

    .line 379
    invoke-static {v0, v3}, Lcom/twitter/model/json/common/g;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cb;

    .line 381
    :goto_1
    if-eqz v1, :cond_2

    .line 386
    :goto_2
    return-object v1

    :cond_0
    move-object v1, v2

    .line 375
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 379
    goto :goto_1

    .line 383
    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 384
    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 386
    goto :goto_2
.end method


# virtual methods
.method a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/library/platform/f;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 190
    const-string/jumbo v0, "schema"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 192
    :goto_0
    const-string/jumbo v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Payload schema="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p1, v1, p2, v0, p3}, Lcom/twitter/library/platform/PushService;->a(Landroid/os/Bundle;Landroid/content/SharedPreferences;Landroid/content/Context;ILjava/lang/String;)Lcom/twitter/library/platform/f;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method a(Lcom/twitter/library/platform/f;)Lcom/twitter/library/platform/notifications/a;
    .locals 26
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 467
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/twitter/library/platform/f;->d:Landroid/os/Bundle;

    .line 468
    const-string/jumbo v2, "recipient_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 469
    invoke-static {v6, v7}, Lcom/twitter/library/util/b;->a(J)Lcom/twitter/app/common/account/a;

    move-result-object v2

    .line 470
    if-nez v2, :cond_0

    .line 471
    new-instance v2, Lbiv;

    invoke-direct {v2, v6, v7}, Lbiv;-><init>(J)V

    new-instance v3, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;

    const-string/jumbo v4, "Account does not exist on this device."

    invoke-direct {v3, v4}, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2, v3}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v2

    .line 471
    invoke-static {v2}, Lbix;->a(Lbiv;)V

    .line 473
    const/4 v4, 0x0

    .line 569
    :goto_0
    return-object v4

    .line 477
    :cond_0
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v8

    .line 480
    const-string/jumbo v2, "impression_id"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 481
    const-string/jumbo v2, "category_type"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 482
    const-string/jumbo v2, "collapse_key"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 483
    const-string/jumbo v2, "priority"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 484
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 485
    const-string/jumbo v2, "text"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 486
    const-string/jumbo v2, "scribe_target"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 487
    const-string/jumbo v2, "notification_setting_key"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 488
    const-string/jumbo v2, "sound"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 489
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/f;->a:Lcsa;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/f;->a:Lcsa;

    iget-wide v2, v2, Lcsa;->b:J

    .line 490
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/f;->b:Lcsi;

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/f;->b:Lcsi;

    iget-object v4, v4, Lcsi;->c:Lcse;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 491
    :goto_2
    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/twitter/library/platform/f;->b:Lcsi;

    iget-object v9, v9, Lcsi;->c:Lcse;

    iget-wide v10, v9, Lcse;->b:J

    move-wide v14, v10

    .line 492
    :goto_3
    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/f;->b:Lcsi;

    iget-object v4, v4, Lcsi;->c:Lcse;

    iget-object v9, v4, Lcse;->c:Ljava/lang/String;

    .line 493
    :goto_4
    const-string/jumbo v4, "ticker"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 495
    invoke-static {}, Lcjw;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "impression_id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "collapse_key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "category_type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "priority:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sender_name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recipient_name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "recipient_id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "status_id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "title: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scribe_target: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notification_setting_key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sound: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string/jumbo v4, "PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ticker: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v11

    .line 513
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v12

    .line 515
    new-instance v4, Lcom/twitter/library/platform/notifications/a;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-direct {v4, v8, v6, v7, v0}, Lcom/twitter/library/platform/notifications/a;-><init>(Ljava/lang/String;JZ)V

    .line 516
    new-instance v24, Lcom/twitter/library/platform/notifications/ae;

    invoke-direct/range {v24 .. v24}, Lcom/twitter/library/platform/notifications/ae;-><init>()V

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 517
    iget-object v0, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/twitter/library/platform/notifications/ae;->d:I

    .line 518
    iget-object v0, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 519
    iget-object v0, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/twitter/library/platform/notifications/ae;->e:Ljava/lang/String;

    .line 520
    iget-object v13, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 521
    iget-object v13, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    .line 522
    iget-object v13, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    .line 523
    iget-object v13, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput-wide v2, v13, Lcom/twitter/library/platform/notifications/ae;->h:J

    .line 524
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput-wide v14, v2, Lcom/twitter/library/platform/notifications/ae;->i:J

    .line 525
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput-object v9, v2, Lcom/twitter/library/platform/notifications/ae;->j:Ljava/lang/String;

    .line 526
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v12, v9}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;

    .line 527
    iget-object v3, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/f;->a:Lcsa;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/f;->a:Lcsa;

    iget-object v2, v2, Lcsa;->f:Ljava/lang/String;

    :goto_5
    iput-object v2, v3, Lcom/twitter/library/platform/notifications/ae;->n:Ljava/lang/String;

    .line 528
    iget-object v3, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/f;->a:Lcsa;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/f;->a:Lcsa;

    iget-boolean v2, v2, Lcsa;->g:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v3, Lcom/twitter/library/platform/notifications/ae;->o:Z

    .line 529
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move/from16 v0, v18

    iput v0, v2, Lcom/twitter/library/platform/notifications/ae;->s:I

    .line 530
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/library/platform/f;->b:Lcsi;

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    .line 531
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/library/platform/f;->a:Lcsa;

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->x:Lcsa;

    .line 532
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/twitter/library/platform/notifications/ae;->u:Ljava/lang/String;

    .line 533
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/twitter/library/platform/notifications/ae;->q:Ljava/lang/String;

    .line 534
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput-object v10, v2, Lcom/twitter/library/platform/notifications/ae;->t:Ljava/lang/String;

    .line 537
    invoke-static/range {v16 .. v16}, Lcom/twitter/library/platform/notifications/t;->b(I)I

    move-result v2

    .line 538
    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    .line 539
    const-string/jumbo v2, "presentation_type"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 540
    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 541
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/16 v3, 0x8

    iput v3, v2, Lcom/twitter/library/platform/notifications/ae;->b:I

    .line 551
    :goto_7
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/library/platform/f;->c:Ljava/util/List;

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/platform/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 553
    new-instance v13, Lcom/twitter/library/provider/b;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 555
    invoke-static {}, Lcom/twitter/library/platform/notifications/t;->a()Ljava/util/Map;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/platform/notifications/y;

    .line 556
    if-nez v3, :cond_b

    .line 557
    new-instance v2, Lbiv;

    invoke-direct {v2, v6, v7}, Lbiv;-><init>(J)V

    new-instance v3, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;

    const-string/jumbo v4, "Unknown notification data converter."

    invoke-direct {v3, v4}, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2, v3}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v2

    .line 557
    invoke-static {v2}, Lbix;->a(Lbiv;)V

    .line 559
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 489
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 490
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 491
    :cond_4
    const-wide/16 v10, 0x0

    move-wide v14, v10

    goto/16 :goto_3

    .line 492
    :cond_5
    const-string/jumbo v9, ""

    goto/16 :goto_4

    .line 527
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 528
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 542
    :cond_8
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 543
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/16 v3, 0x9

    iput v3, v2, Lcom/twitter/library/platform/notifications/ae;->b:I

    goto :goto_7

    .line 545
    :cond_9
    iget-object v2, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/4 v3, 0x7

    iput v3, v2, Lcom/twitter/library/platform/notifications/ae;->b:I

    goto :goto_7

    .line 548
    :cond_a
    iget-object v3, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput v2, v3, Lcom/twitter/library/platform/notifications/ae;->b:I

    goto :goto_7

    :cond_b
    move-object/from16 v10, p0

    .line 561
    invoke-virtual/range {v3 .. v13}, Lcom/twitter/library/platform/notifications/y;->a(Lcom/twitter/library/platform/notifications/a;Landroid/os/Bundle;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twitter/library/provider/ar;Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;)V

    .line 563
    invoke-virtual {v13}, Lcom/twitter/library/provider/b;->a()V

    .line 564
    iget-object v3, v4, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget v3, v3, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_c

    .line 565
    invoke-static {v2, v6, v7}, Lcom/twitter/library/platform/TwitterDataSyncService;->d(Landroid/content/Context;J)V

    .line 567
    :cond_c
    invoke-static {v6, v7, v6, v7, v2}, Lcom/twitter/library/platform/PushService;->a(JJLandroid/content/Context;)I

    move-result v2

    iput v2, v4, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 568
    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/twitter/library/platform/notifications/a;->g:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 204
    new-instance v1, Lcom/twitter/library/platform/notifications/ac;

    invoke-direct {v1}, Lcom/twitter/library/platform/notifications/ac;-><init>()V

    const-string/jumbo v2, "onInvalidIntent"

    if-nez p2, :cond_0

    const-string/jumbo v0, "intent was null"

    .line 205
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/platform/notifications/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/platform/notifications/PushRegistration$DebugNotificationException;

    const-string/jumbo v2, "onInvalidIntent() invoked"

    invoke-direct {v1, v2}, Lcom/twitter/library/platform/notifications/PushRegistration$DebugNotificationException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 208
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action was: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 143
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lbiu;->a()I

    .line 146
    :try_start_0
    new-instance v0, Lcom/twitter/library/platform/notifications/f;

    invoke-direct {v0, p2}, Lcom/twitter/library/platform/notifications/f;-><init>(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string/jumbo v3, "impression_id"

    invoke-virtual {v1, v3, v2}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/f;->f()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0, v2}, Lcom/google/android/gcm/GCMScribeReporter;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v0, "type"

    const-string/jumbo v3, "0"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    const/16 v3, 0x11d

    if-ne v0, v3, :cond_1

    .line 155
    invoke-static {p2}, Lcom/twitter/library/platform/PushService;->a(Landroid/os/Bundle;)Lcom/twitter/library/platform/notifications/a;

    move-result-object v0

    const-string/jumbo v2, "logged_out_notification"

    invoke-direct {p0, v0, v2}, Lcom/twitter/library/platform/PushService;->a(Lcom/twitter/library/platform/notifications/a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lbiu;->b()I

    .line 168
    invoke-virtual {v1}, Lbiu;->d()V

    .line 170
    return-void

    .line 157
    :cond_1
    const/16 v3, 0x127

    if-eq v0, v3, :cond_0

    .line 158
    :try_start_1
    invoke-virtual {p0, p2, p1, v2}, Lcom/twitter/library/platform/PushService;->a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/library/platform/f;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/twitter/library/platform/PushService;->a(Lcom/twitter/library/platform/f;)Lcom/twitter/library/platform/notifications/a;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v2, "data"

    invoke-direct {p0, v0, v2}, Lcom/twitter/library/platform/PushService;->a(Lcom/twitter/library/platform/notifications/a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lbiu;->b()I

    .line 168
    invoke-virtual {v1}, Lbiu;->d()V

    throw v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    invoke-static {p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method
