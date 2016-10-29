.class public Lcom/twitter/android/timeline/q;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;I)I
    .locals 3

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 118
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 120
    sget v1, Lchj;->g:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 121
    sget v2, Lchj;->e:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    invoke-static {v1}, Lcom/twitter/model/timeline/bg;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x2

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;Z)Lcom/twitter/android/events/sports/c;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/twitter/android/events/sports/d;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/q;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/events/sports/d;-><init>(J)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/q;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->a(Lcom/twitter/android/timeline/bj;)Lcom/twitter/android/timeline/bq;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/events/sports/d;

    .line 54
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/q;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/android/timeline/bq;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/events/sports/d;

    sget v1, Lchj;->r:I

    .line 55
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->a(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->s:I

    .line 56
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->a(I)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->y:I

    .line 57
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->b(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->D:I

    .line 58
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->c(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->u:I

    .line 59
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->d(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->v:I

    .line 60
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->e(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->C:I

    .line 61
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->a([B)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->t:I

    .line 62
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->f(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    sget v1, Lchj;->x:I

    .line 63
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->g(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v0

    .line 64
    if-eqz p2, :cond_0

    .line 65
    sget v1, Lchj;->z:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/events/sports/d;->h(Ljava/lang/String;)Lcom/twitter/android/events/sports/d;

    move-result-object v1

    sget v2, Lchj;->A:I

    .line 66
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/events/sports/d;->b(I)Lcom/twitter/android/events/sports/d;

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/events/sports/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/events/sports/c;

    return-object v0
.end method

.method private f(Landroid/database/Cursor;)Lcom/twitter/android/timeline/o;
    .locals 18

    .prologue
    .line 73
    sget v2, Lchj;->r:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    sget v2, Lchj;->u:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    sget v2, Lchj;->f:I

    .line 76
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/twitter/model/topic/l;->a:Lcom/twitter/util/serialization/ah;

    .line 75
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/topic/l;

    .line 78
    sget v3, Lchj;->s:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 81
    const/4 v3, 0x2

    if-ne v5, v3, :cond_0

    .line 82
    sget v3, Lchj;->y:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    sget v3, Lchj;->v:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 84
    sget v3, Lchj;->C:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 85
    sget v3, Lchj;->D:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 86
    sget v3, Lchj;->t:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 87
    sget v3, Lchj;->w:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 88
    sget v3, Lchj;->x:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 89
    sget v3, Lchj;->z:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    sget v3, Lchj;->A:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 91
    sget v3, Lchj;->E:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 92
    new-instance v3, Lcom/twitter/android/widget/TopicView$TopicData;

    invoke-direct/range {v3 .. v17}, Lcom/twitter/android/widget/TopicView$TopicData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ[BLjava/lang/String;)V

    move-object v8, v3

    .line 98
    :goto_0
    sget v3, Lchj;->B:I

    .line 99
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v7, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 98
    invoke-static {v3, v7}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcss;

    .line 100
    sget v7, Lchj;->A:I

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 102
    new-instance v7, Lcom/twitter/android/events/d;

    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/timeline/q;->e(Landroid/database/Cursor;)J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Lcom/twitter/android/events/d;-><init>(J)V

    .line 103
    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/timeline/q;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/twitter/android/events/d;->a(Lcom/twitter/android/timeline/bj;)Lcom/twitter/android/timeline/bq;

    move-result-object v7

    check-cast v7, Lcom/twitter/android/events/d;

    .line 104
    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/timeline/q;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/twitter/android/events/d;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/android/timeline/bq;

    move-result-object v7

    check-cast v7, Lcom/twitter/android/events/d;

    .line 105
    invoke-virtual {v7, v4}, Lcom/twitter/android/events/d;->a(Ljava/lang/String;)Lcom/twitter/android/events/d;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v6}, Lcom/twitter/android/events/d;->b(Ljava/lang/String;)Lcom/twitter/android/events/d;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v2}, Lcom/twitter/android/events/d;->a(Lcom/twitter/model/topic/l;)Lcom/twitter/android/events/d;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v5}, Lcom/twitter/android/events/d;->a(I)Lcom/twitter/android/events/d;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v8}, Lcom/twitter/android/events/d;->a(Lcom/twitter/android/widget/TopicView$TopicData;)Lcom/twitter/android/events/d;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v3}, Lcom/twitter/android/events/d;->a(Lcss;)Lcom/twitter/android/events/d;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v9}, Lcom/twitter/android/events/d;->b(I)Lcom/twitter/android/events/d;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/twitter/android/events/d;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/timeline/o;

    .line 102
    return-object v2

    .line 95
    :cond_0
    const/4 v3, 0x0

    move-object v8, v3

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/q;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/timeline/q;->a(Landroid/database/Cursor;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/o;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 39
    invoke-direct {p0, p1, v1}, Lcom/twitter/android/timeline/q;->a(Landroid/database/Cursor;I)I

    move-result v2

    .line 40
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 41
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/twitter/android/timeline/q;->a(Landroid/database/Cursor;I)I

    move-result v1

    .line 42
    :goto_0
    if-eq v1, v0, :cond_1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/timeline/q;->a(Landroid/database/Cursor;Z)Lcom/twitter/android/events/sports/c;

    move-result-object v0

    .line 44
    :goto_2
    return-object v0

    .line 41
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 43
    :cond_2
    if-ne v2, v0, :cond_3

    .line 44
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/q;->f(Landroid/database/Cursor;)Lcom/twitter/android/timeline/o;

    move-result-object v0

    goto :goto_2

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/q;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method
