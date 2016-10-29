.class public Lcom/twitter/library/api/search/m;
.super Lcom/twitter/library/api/t;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/library/api/search/k;",
        "Lcom/twitter/model/core/cj;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/library/api/search/m;->a:Ljava/util/HashMap;

    .line 38
    sget-object v0, Lcom/twitter/library/api/search/m;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "trend"

    const/4 v2, 0x0

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/twitter/library/api/search/m;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "promoted_trend"

    const/4 v2, 0x4

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/twitter/library/api/search/m;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "user_gallery"

    const/4 v2, 0x1

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/twitter/library/api/search/m;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "photo_gallery"

    const/4 v2, 0x2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/twitter/library/api/search/m;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "video_gallery"

    const/4 v2, 0x3

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/library/api/t;-><init>()V

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/core/JsonParser;II)Lcom/twitter/library/api/search/j;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/16 v23, 0x0

    .line 266
    const/16 v20, 0x0

    .line 267
    const/4 v11, 0x0

    .line 268
    const/4 v9, 0x0

    .line 269
    const-wide/16 v12, 0x0

    .line 270
    const/4 v8, 0x0

    .line 271
    const/16 v18, 0x0

    .line 272
    const/4 v7, 0x0

    .line 273
    const/4 v15, 0x0

    .line 274
    const/4 v10, 0x0

    .line 275
    const/4 v4, 0x0

    .line 276
    const/4 v5, 0x0

    .line 277
    const/4 v6, 0x0

    .line 278
    const/4 v3, 0x0

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    move-object/from16 v24, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v11

    move-object/from16 v11, v24

    .line 281
    :goto_0
    if-eqz v11, :cond_b

    sget-object v14, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v11, v14, :cond_b

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v14

    .line 283
    sget-object v16, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v11

    aget v11, v16, v11

    packed-switch v11, :pswitch_data_0

    :cond_0
    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    .line 332
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v16

    move-object/from16 v20, v11

    move-object/from16 v23, v14

    move-object/from16 v11, v16

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    .line 333
    goto :goto_0

    .line 285
    :pswitch_0
    const-string/jumbo v11, "name"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    move-object/from16 v11, v20

    move-object/from16 v24, v7

    move-object v7, v9

    move-object/from16 v9, v24

    goto :goto_1

    .line 287
    :cond_1
    const-string/jumbo v11, "description"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v14, v23

    move-object/from16 v24, v7

    move-object v7, v9

    move-object/from16 v9, v24

    goto :goto_1

    .line 289
    :cond_2
    const-string/jumbo v11, "meta_description"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto :goto_1

    .line 291
    :cond_3
    const-string/jumbo v11, "advertiser_name"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto :goto_1

    .line 297
    :pswitch_1
    const-string/jumbo v11, "id"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v12

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto :goto_1

    .line 299
    :cond_4
    const-string/jumbo v11, "rank"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->o()I

    move-result v8

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    .line 305
    :pswitch_2
    const-string/jumbo v11, "context"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 306
    invoke-static/range {p1 .. p1}, Lcom/twitter/library/api/search/m;->i(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/a;

    move-result-object v4

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    .line 307
    :cond_5
    const-string/jumbo v11, "target"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 308
    invoke-static/range {p1 .. p1}, Lcom/twitter/library/api/search/m;->h(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/n;

    move-result-object v5

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    .line 309
    :cond_6
    const-string/jumbo v11, "debug"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 310
    invoke-static/range {p1 .. p1}, Lcom/twitter/library/api/search/m;->l(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/h;

    move-result-object v6

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    .line 311
    :cond_7
    const-string/jumbo v11, "disclosure"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 312
    invoke-static/range {p1 .. p1}, Lcom/twitter/library/api/search/m;->m(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/k;

    move-result-object v2

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    .line 314
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    .line 316
    goto/16 :goto_1

    .line 319
    :pswitch_3
    const-string/jumbo v11, "images"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 320
    invoke-direct/range {p0 .. p1}, Lcom/twitter/library/api/search/m;->f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    .line 321
    :cond_9
    const-string/jumbo v11, "badges"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 322
    invoke-static/range {p1 .. p1}, Lcom/twitter/library/api/search/m;->e(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    .line 324
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object/from16 v11, v20

    move-object/from16 v14, v23

    move-object/from16 v24, v9

    move-object v9, v7

    move-object/from16 v7, v24

    .line 326
    goto/16 :goto_1

    .line 335
    :cond_b
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-eqz v11, :cond_c

    .line 336
    new-instance v11, Lcsu;

    invoke-direct {v11}, Lcsu;-><init>()V

    .line 337
    invoke-virtual {v11, v9}, Lcsu;->d(Ljava/lang/String;)Lcsu;

    move-result-object v9

    const/4 v11, 0x1

    .line 338
    invoke-virtual {v9, v11}, Lcsu;->c(Z)Lcsu;

    move-result-object v9

    iget-object v2, v2, Lcom/twitter/model/topic/trends/k;->c:Ljava/lang/String;

    .line 339
    invoke-virtual {v9, v2}, Lcsu;->b(Ljava/lang/String;)Lcsu;

    move-result-object v2

    .line 340
    invoke-virtual {v2, v12, v13}, Lcsu;->a(J)Lcsu;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lcsu;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcss;

    move-object/from16 v18, v2

    .line 344
    :cond_c
    if-eqz v5, :cond_d

    iget-object v2, v5, Lcom/twitter/model/topic/trends/n;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static/range {v23 .. v23}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 345
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/api/search/m;->e()Lbiv;

    move-result-object v2

    .line 346
    if-eqz v2, :cond_e

    .line 347
    new-instance v3, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v4, "Failed parsing trendsplus module; missing required data"

    invoke-direct {v3, v4}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    .line 350
    :cond_e
    const/4 v2, 0x0

    .line 373
    :goto_2
    return-object v2

    .line 353
    :cond_f
    if-eqz v3, :cond_13

    .line 354
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cs;

    .line 356
    iget-object v11, v2, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v11, v11, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v11}, Lcom/twitter/model/core/ac;->c()Z

    move-result v11

    if-nez v11, :cond_10

    .line 357
    iget-object v2, v2, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    move-object v3, v9

    .line 362
    :goto_4
    new-instance v2, Lcom/twitter/model/topic/i;

    move/from16 v9, p3

    invoke-direct/range {v2 .. v10}, Lcom/twitter/model/topic/i;-><init>(Ljava/util/List;Lcom/twitter/model/topic/trends/a;Lcom/twitter/model/topic/trends/n;Lcom/twitter/model/topic/trends/h;Ljava/lang/String;IILjava/util/List;)V

    .line 364
    new-instance v6, Lcom/twitter/model/topic/l;

    const/4 v3, 0x3

    iget-object v7, v5, Lcom/twitter/model/topic/trends/n;->b:Ljava/lang/String;

    .line 366
    invoke-static {v7}, Lcom/twitter/model/topic/TwitterTopic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v3, v7, v8}, Lcom/twitter/model/topic/l;-><init>(ILjava/lang/String;Z)V

    .line 368
    new-instance v3, Lcom/twitter/model/topic/TwitterTopic;

    iget-object v7, v5, Lcom/twitter/model/topic/trends/n;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_12

    iget-object v5, v4, Lcom/twitter/model/topic/trends/a;->e:Lcom/twitter/model/topic/trends/f;

    if-eqz v5, :cond_12

    iget-object v4, v4, Lcom/twitter/model/topic/trends/a;->e:Lcom/twitter/model/topic/trends/f;

    iget-wide v12, v4, Lcom/twitter/model/topic/trends/f;->c:J

    :goto_5
    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v4, v6

    move-object/from16 v5, v23

    move-object/from16 v6, v20

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v22}, Lcom/twitter/model/topic/TwitterTopic;-><init>(Lcom/twitter/model/topic/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcss;Ljava/util/List;Lcom/twitter/model/topic/d;Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;)V

    .line 373
    new-instance v2, Lcom/twitter/library/api/search/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/twitter/library/api/search/j;-><init>(ILcom/twitter/model/topic/TwitterTopic;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 368
    :cond_12
    const-wide/16 v12, 0x0

    goto :goto_5

    :cond_13
    move-object v3, v15

    goto :goto_4

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Lcom/fasterxml/jackson/core/JsonParser;I)Lcom/twitter/library/api/search/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    .line 239
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 240
    sget-object v2, Lcom/twitter/library/api/search/m;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    sparse-switch v0, :sswitch_data_0

    move-object v0, v1

    .line 260
    :goto_0
    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    .line 246
    goto :goto_0

    .line 252
    :sswitch_0
    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/search/m;->a(Lcom/fasterxml/jackson/core/JsonParser;II)Lcom/twitter/library/api/search/j;

    move-result-object v0

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/l;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 94
    .line 97
    const/4 v10, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-wide v5, v8

    move-object v4, v7

    move-wide v2, v8

    .line 102
    :goto_0
    if-eqz v0, :cond_6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_6

    .line 103
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 104
    sget-object v11, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v11, v0

    packed-switch v0, :pswitch_data_0

    .line 183
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_0
    const-string/jumbo v0, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v2

    goto :goto_1

    .line 108
    :cond_1
    const-string/jumbo v0, "refresh_interval_millis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v8

    goto :goto_1

    .line 114
    :pswitch_1
    const-string/jumbo v0, "context_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "minimal"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 122
    :pswitch_2
    const-string/jumbo v0, "woeid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 124
    :goto_2
    if-eqz v0, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 125
    sget-object v1, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 147
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 127
    :pswitch_3
    const-string/jumbo v0, "name"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 133
    :pswitch_4
    const-string/jumbo v0, "id"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v5

    goto :goto_3

    .line 140
    :pswitch_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 149
    :cond_3
    const-string/jumbo v0, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 151
    :goto_4
    if-eqz v0, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 152
    sget-object v1, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    .line 168
    :cond_4
    :goto_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_4

    .line 154
    :pswitch_6
    const-string/jumbo v0, "string"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 161
    :pswitch_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_5

    .line 171
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 176
    :pswitch_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 185
    :cond_6
    new-instance v1, Lcom/twitter/library/api/search/l;

    invoke-direct/range {v1 .. v10}, Lcom/twitter/library/api/search/l;-><init>(JLjava/lang/String;JLjava/lang/String;JZ)V

    return-object v1

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 125
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 152
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private d(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/api/search/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    const/4 v1, 0x1

    .line 193
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 194
    :goto_0
    if-eqz v1, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_2

    .line 195
    sget-object v3, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 229
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 198
    :goto_2
    if-eqz v1, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_0

    .line 199
    sget-object v3, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    .line 217
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_2

    .line 202
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/twitter/library/api/search/m;->c(Lcom/fasterxml/jackson/core/JsonParser;I)Lcom/twitter/library/api/search/j;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 210
    :pswitch_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 222
    :pswitch_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 232
    :cond_2
    return-object v2

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static e(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/topic/trends/TrendBadge;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 386
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 388
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 389
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string/jumbo v2, "live"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/twitter/model/topic/trends/TrendBadge;->a:Lcom/twitter/model/topic/trends/TrendBadge;

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private f(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 405
    :goto_0
    if-eqz v1, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 406
    sget-object v2, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 438
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 408
    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 409
    :goto_2
    if-eqz v1, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 410
    sget-object v2, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 426
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_2

    .line 412
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/twitter/library/api/search/m;->g(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/core/cs;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 419
    :pswitch_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 431
    :pswitch_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 441
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    const/4 v0, 0x0

    .line 444
    :cond_3
    return-object v0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 410
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private g(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/core/cs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 452
    const-string/jumbo v2, "status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 456
    :cond_0
    return-object v0
.end method

.method private static h(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/n;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 462
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 465
    :goto_0
    if-eqz v1, :cond_3

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 467
    sget-object v4, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 496
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 469
    :pswitch_0
    const-string/jumbo v1, "query"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 475
    :pswitch_1
    const-string/jumbo v1, "pinned_tweets"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 477
    :goto_2
    if-eqz v1, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_0

    .line 478
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_2

    .line 484
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 489
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 498
    :cond_3
    new-instance v1, Lcom/twitter/model/topic/trends/n;

    invoke-direct {v1, v0, v2}, Lcom/twitter/model/topic/trends/n;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static i(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 503
    .line 505
    const-wide/16 v2, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v1

    move-object v4, v1

    .line 509
    :goto_0
    if-eqz v0, :cond_5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_5

    .line 510
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    .line 511
    sget-object v7, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    .line 547
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 513
    :pswitch_1
    const-string/jumbo v0, "trend_start_millis"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v2

    goto :goto_1

    .line 519
    :pswitch_2
    const-string/jumbo v0, "trend_velocity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-static {p0}, Lcom/twitter/library/api/search/m;->j(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/d;

    move-result-object v4

    goto :goto_1

    .line 521
    :cond_1
    const-string/jumbo v0, "tweet_count"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-static {p0}, Lcom/twitter/library/api/search/m;->k(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/f;

    move-result-object v5

    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 529
    :pswitch_3
    const-string/jumbo v0, "related_queries"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 532
    :goto_2
    if-eqz v0, :cond_0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_0

    .line 533
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v6, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 539
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 549
    :cond_5
    new-instance v0, Lcom/twitter/model/topic/trends/a;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/topic/trends/a;-><init>(Ljava/util/List;JLcom/twitter/model/topic/trends/d;Lcom/twitter/model/topic/trends/f;)V

    return-object v0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static j(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v2, 0x0

    .line 556
    const/4 v1, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    move v0, v1

    move-object v1, v2

    move-object v2, v5

    .line 559
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 561
    sget-object v4, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 583
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 563
    :pswitch_0
    const-string/jumbo v2, "direction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 569
    :pswitch_1
    const-string/jumbo v2, "magnitude"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v0

    goto :goto_1

    .line 576
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 585
    :cond_1
    new-instance v2, Lcom/twitter/model/topic/trends/d;

    invoke-direct {v2, v1, v0}, Lcom/twitter/model/topic/trends/d;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static k(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/f;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    const/4 v1, 0x0

    .line 592
    const-wide/16 v2, 0x0

    .line 594
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v0

    move-wide v7, v2

    move-object v3, v6

    move v2, v1

    move-wide v0, v7

    .line 595
    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    .line 597
    sget-object v5, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 615
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 599
    :pswitch_1
    const-string/jumbo v3, "duration_minutes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v2

    goto :goto_1

    .line 601
    :cond_1
    const-string/jumbo v3, "count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v0

    goto :goto_1

    .line 608
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 617
    :cond_2
    new-instance v3, Lcom/twitter/model/topic/trends/f;

    invoke-direct {v3, v2, v0, v1}, Lcom/twitter/model/topic/trends/f;-><init>(IJ)V

    return-object v3

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static l(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    const/4 v2, 0x0

    .line 623
    const/4 v1, 0x1

    .line 625
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    move v0, v1

    move-object v1, v2

    move-object v2, v5

    .line 626
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 628
    sget-object v4, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 651
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 630
    :pswitch_1
    const-string/jumbo v2, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 637
    :pswitch_2
    const-string/jumbo v2, "it_should_be_ignored"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->m()Z

    move-result v0

    goto :goto_1

    .line 644
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 653
    :cond_1
    new-instance v2, Lcom/twitter/model/topic/trends/h;

    invoke-direct {v2, v1, v0}, Lcom/twitter/model/topic/trends/h;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static m(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/trends/k;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 658
    .line 661
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 662
    :goto_0
    if-eqz v2, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_2

    .line 663
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 664
    sget-object v4, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 682
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 666
    :pswitch_0
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 668
    :cond_1
    const-string/jumbo v2, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 675
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 684
    :cond_2
    new-instance v2, Lcom/twitter/model/topic/trends/k;

    invoke-direct {v2, v1, v0}, Lcom/twitter/model/topic/trends/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected synthetic a(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/twitter/library/api/search/m;->b(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/k;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/api/search/m;->b(Lcom/fasterxml/jackson/core/JsonParser;I)Lcom/twitter/model/core/cj;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 57
    :goto_0
    if-eqz v1, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 59
    sget-object v4, Lcom/twitter/library/api/search/n;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 61
    :pswitch_0
    const-string/jumbo v1, "modules"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/twitter/library/api/search/m;->d(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 69
    :pswitch_1
    const-string/jumbo v1, "metadata"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-direct {p0, p1}, Lcom/twitter/library/api/search/m;->c(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/l;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 83
    :cond_2
    new-instance v1, Lcom/twitter/library/api/search/k;

    invoke-direct {v1, v0, v2}, Lcom/twitter/library/api/search/k;-><init>(Lcom/twitter/library/api/search/l;Ljava/util/ArrayList;)V

    return-object v1

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonParser;I)Lcom/twitter/model/core/cj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-class v0, Lcom/twitter/model/core/cj;

    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    return-object v0
.end method
