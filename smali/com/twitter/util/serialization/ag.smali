.class public Lcom/twitter/util/serialization/ag;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static volatile a:Lcom/twitter/util/collection/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/af",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    .line 81
    :cond_1
    new-instance v2, Lcom/twitter/util/serialization/f;

    invoke-direct {v2, p0}, Lcom/twitter/util/serialization/f;-><init>([B)V

    .line 83
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :goto_1
    new-instance v3, Lbiv;

    invoke-direct {v3}, Lbiv;-><init>()V

    const-string/jumbo v4, "data"

    .line 87
    invoke-virtual {v2}, Lcom/twitter/util/serialization/aj;->b()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Lcom/twitter/util/serialization/ag;->a([BIZ)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v3, v4, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v0}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/twitter/util/serialization/aj;IZ)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x7d

    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/aj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 246
    :try_start_0
    const-string/jumbo v3, "    "

    .line 247
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object v4, v3

    move v5, v1

    move v3, v0

    .line 249
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->o()B

    move-result v0

    const/16 v7, 0xc

    if-eq v0, v7, :cond_d

    .line 250
    const/16 v7, 0xb

    if-ne v0, v7, :cond_2

    .line 251
    add-int/lit8 v5, v5, -0x1

    .line 252
    if-gez v5, :cond_1

    .line 253
    new-instance v0, Lcom/twitter/util/serialization/SerializationException;

    const-string/jumbo v1, "Object end with no matching object start."

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    const-string/jumbo v1, "ERROR: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 247
    goto :goto_0

    .line 255
    :cond_1
    :try_start_1
    const-string/jumbo v0, "    "

    add-int/lit8 v4, v5, 0x1

    invoke-static {v0, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->m()V

    .line 257
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x7d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :goto_3
    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->b()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 368
    const-string/jumbo v0, " <<<"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 371
    :goto_4
    invoke-static {}, Lcom/twitter/util/aj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v0

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 363
    :pswitch_0
    new-instance v1, Lcom/twitter/util/serialization/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/twitter/util/serialization/ai;->c(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 263
    if-eqz p2, :cond_3

    .line 264
    const-string/jumbo v7, "Byte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 266
    :cond_3
    const-string/jumbo v0, "Byte"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 271
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    .line 272
    if-eqz p2, :cond_4

    .line 273
    const-string/jumbo v7, "Integer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 275
    :cond_4
    const-string/jumbo v0, "Integer"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 280
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v8

    .line 281
    if-eqz p2, :cond_5

    .line 282
    const-string/jumbo v0, "Long: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 284
    :cond_5
    const-string/jumbo v0, "Long"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 289
    :pswitch_4
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v0

    .line 290
    if-eqz p2, :cond_6

    .line 291
    const-string/jumbo v7, "Float: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 293
    :cond_6
    const-string/jumbo v0, "Float"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 298
    :pswitch_5
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->h()D

    move-result-wide v8

    .line 299
    if-eqz p2, :cond_7

    .line 300
    const-string/jumbo v0, "Double: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 302
    :cond_7
    const-string/jumbo v0, "Double"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 307
    :pswitch_6
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    .line 308
    if-eqz p2, :cond_8

    .line 309
    const-string/jumbo v7, "Boolean: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 311
    :cond_8
    const-string/jumbo v0, "Boolean"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 316
    :pswitch_7
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->n()V

    .line 317
    const-string/jumbo v0, "null"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 322
    :pswitch_8
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz p2, :cond_9

    .line 324
    const-string/jumbo v7, "String: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 325
    invoke-static {}, Lcom/twitter/util/aj;->a()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\n"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 327
    :cond_9
    const-string/jumbo v7, "String ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 332
    :pswitch_9
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->q()[B

    move-result-object v7

    .line 333
    if-eqz p2, :cond_c

    .line 334
    array-length v0, v7

    if-le v0, v2, :cond_b

    move v0, v2

    .line 335
    :goto_5
    const-string/jumbo v8, "byte[]: \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    .line 336
    invoke-static {v7, v9, v0}, Lcom/twitter/util/k;->a([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    array-length v7, v7

    sub-int v0, v7, v0

    .line 338
    if-lez v0, :cond_a

    .line 339
    const-string/jumbo v7, "... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " more bytes"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_a
    const/16 v0, 0x22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 334
    :cond_b
    array-length v0, v7

    goto :goto_5

    .line 343
    :cond_c
    const-string/jumbo v0, "byte[] ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 348
    :pswitch_a
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->k()I

    move-result v0

    .line 349
    const-string/jumbo v4, "Object: Unknown type, v"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v5, v5, 0x1

    .line 351
    const-string/jumbo v0, "    "

    add-int/lit8 v4, v5, 0x1

    invoke-static {v0, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 355
    :pswitch_b
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->l()Lcom/twitter/util/collection/ac;

    move-result-object v4

    .line 356
    const-string/jumbo v0, "Object: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/twitter/util/collection/aa;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", v"

    .line 357
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/twitter/util/collection/aa;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    add-int/lit8 v5, v5, 0x1

    .line 359
    const-string/jumbo v0, "    "

    add-int/lit8 v4, v5, 0x1

    invoke-static {v0, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 373
    :cond_d
    if-lez v5, :cond_e

    .line 374
    new-instance v0, Lcom/twitter/util/serialization/SerializationException;

    const-string/jumbo v1, "Object start with no matching object end."

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    :cond_e
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    move v0, v3

    goto/16 :goto_4

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a([BIZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/twitter/util/serialization/f;

    invoke-direct {v0, p0}, Lcom/twitter/util/serialization/f;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/aj;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/util/collection/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/af",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 35
    sput-object p0, Lcom/twitter/util/serialization/ag;->a:Lcom/twitter/util/collection/af;

    .line 36
    return-void
.end method

.method private static a(Lcom/twitter/util/serialization/aj;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    if-eqz p1, :cond_2

    .line 386
    invoke-static {p0}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/aj;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->o()B

    move-result v1

    .line 390
    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 391
    new-instance v0, Lcom/twitter/util/serialization/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Method skipObject can only be used to skip Objects in deserialization, expected start object header but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    invoke-static {v1}, Lcom/twitter/util/serialization/ai;->c(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    .line 396
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->o()B

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    .line 397
    packed-switch v1, :pswitch_data_0

    .line 453
    :pswitch_1
    new-instance v0, Lcom/twitter/util/serialization/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/twitter/util/serialization/ai;->c(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->e()I

    goto :goto_0

    .line 407
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->f()J

    goto :goto_0

    .line 411
    :pswitch_4
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->g()F

    goto :goto_0

    .line 415
    :pswitch_5
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->h()D

    goto :goto_0

    .line 419
    :pswitch_6
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->d()Z

    goto :goto_0

    .line 423
    :pswitch_7
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->n()V

    goto :goto_0

    .line 428
    :pswitch_8
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    goto :goto_0

    .line 432
    :pswitch_9
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->j()[B

    goto :goto_0

    .line 437
    :pswitch_a
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->k()I

    .line 438
    add-int/lit8 v0, v0, 0x1

    .line 439
    goto :goto_0

    .line 442
    :pswitch_b
    add-int/lit8 v0, v0, -0x1

    .line 443
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->m()V

    .line 444
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    .line 447
    :cond_3
    if-gez v0, :cond_2

    .line 448
    new-instance v0, Lcom/twitter/util/serialization/SerializationException;

    const-string/jumbo v1, "Object end with no matching object start."

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_4
    if-lez v0, :cond_0

    .line 458
    new-instance v0, Lcom/twitter/util/serialization/SerializationException;

    const-string/jumbo v1, "Object start with no matching object end."

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Lcom/twitter/util/serialization/aj;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->o()B

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 175
    :goto_0
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->n()V

    .line 184
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v2

    .line 181
    if-eqz v2, :cond_0

    .line 183
    if-ne v2, v0, :cond_3

    move v0, v1

    .line 184
    goto :goto_1

    .line 186
    :cond_3
    new-instance v0, Lcom/twitter/util/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid null indicator found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/twitter/util/serialization/ak;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/twitter/util/serialization/ak;->g()Lcom/twitter/util/serialization/ak;

    .line 168
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p0, v1}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/util/serialization/ak;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    :cond_2
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)[B"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    sget-object v0, Lcom/twitter/util/k;->a:[B

    .line 57
    :goto_0
    return-object v0

    .line 43
    :cond_0
    sget-object v3, Lcom/twitter/util/serialization/ag;->a:Lcom/twitter/util/collection/af;

    .line 44
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/twitter/util/collection/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    .line 45
    :goto_1
    if-eqz v1, :cond_2

    .line 50
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;[B)[B

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/af;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 44
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :catchall_1
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/af;->a(Ljava/lang/Object;)Z

    throw v0

    .line 57
    :cond_2
    invoke-static {p0, p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;[B)[B"
        }
    .end annotation

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    sget-object v0, Lcom/twitter/util/k;->a:[B

    .line 72
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/twitter/util/serialization/h;

    invoke-direct {v0, p2}, Lcom/twitter/util/serialization/h;-><init>([B)V

    .line 68
    :try_start_0
    invoke-virtual {p1, v0, p0}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/twitter/util/serialization/h;->b()[B

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static b([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    new-instance v1, Lcom/twitter/util/serialization/ac;

    invoke-direct {v1, v2}, Lcom/twitter/util/serialization/ac;-><init>(Ljava/io/ObjectInput;)V

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 146
    if-eqz v2, :cond_0

    .line 148
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 143
    :goto_1
    :try_start_3
    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    if-eqz v2, :cond_0

    .line 148
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 149
    :catch_2
    move-exception v1

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 148
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 149
    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 146
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 142
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public static b(Lcom/twitter/util/serialization/aj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/aj;Z)V

    .line 211
    return-void
.end method

.method public static b(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)[B"
        }
    .end annotation

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    sget-object v0, Lcom/twitter/util/k;->a:[B

    .line 122
    :goto_0
    return-object v0

    .line 108
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    const/4 v2, 0x0

    .line 111
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    new-instance v0, Lcom/twitter/util/serialization/ad;

    invoke-direct {v0, v1}, Lcom/twitter/util/serialization/ad;-><init>(Ljava/io/ObjectOutput;)V

    invoke-virtual {p1, v0, p0}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-eqz v1, :cond_1

    .line 118
    :try_start_2
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 114
    :goto_2
    :try_start_3
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    if-eqz v1, :cond_1

    .line 118
    :try_start_4
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 118
    :try_start_5
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 116
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 113
    :catch_4
    move-exception v0

    goto :goto_2
.end method
