.class public Lcom/twitter/android/timeline/bl;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/android/timeline/bj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bl;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 21
    invoke-static {p1}, Lcom/twitter/android/timeline/be;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;
    .locals 23

    .prologue
    .line 27
    sget v4, Lchj;->c:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 28
    sget v4, Lchj;->d:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 29
    sget v4, Lchj;->e:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 30
    sget v4, Lchj;->F:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 32
    sget v4, Lchj;->ap:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 34
    sget v4, Lchj;->g:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 35
    sget v4, Lchj;->al:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 37
    :goto_0
    sget v5, Lchj;->am:I

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 38
    sget v5, Lchj;->ao:I

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 39
    sget v5, Lchj;->j:I

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v15, 0x1

    if-ne v5, v15, :cond_1

    const/4 v5, 0x1

    .line 41
    :goto_1
    sget v15, Lchj;->an:I

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 43
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 44
    const-string/jumbo v17, "entity_group_start"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 45
    const-string/jumbo v18, "entity_group_end"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 46
    const-string/jumbo v19, "entity_start"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 47
    const-string/jumbo v20, "entity_end"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 49
    const-string/jumbo v21, "data_type_source_start"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 50
    const-string/jumbo v22, "data_type_source_end"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 52
    new-instance v22, Lcom/twitter/android/timeline/bk;

    invoke-direct/range {v22 .. v22}, Lcom/twitter/android/timeline/bk;-><init>()V

    .line 53
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/twitter/android/timeline/bk;->a(Ljava/lang/String;)Lcom/twitter/android/timeline/bk;

    move-result-object v6

    .line 54
    invoke-virtual {v6, v7}, Lcom/twitter/android/timeline/bk;->a(I)Lcom/twitter/android/timeline/bk;

    move-result-object v6

    .line 55
    invoke-virtual {v6, v8}, Lcom/twitter/android/timeline/bk;->b(I)Lcom/twitter/android/timeline/bk;

    move-result-object v6

    .line 56
    invoke-virtual {v6, v9}, Lcom/twitter/android/timeline/bk;->d(I)Lcom/twitter/android/timeline/bk;

    move-result-object v6

    .line 57
    invoke-virtual {v6, v10, v11}, Lcom/twitter/android/timeline/bk;->a(J)Lcom/twitter/android/timeline/bk;

    move-result-object v6

    .line 58
    invoke-virtual {v6, v12}, Lcom/twitter/android/timeline/bk;->c(I)Lcom/twitter/android/timeline/bk;

    move-result-object v6

    .line 59
    invoke-virtual {v6, v4}, Lcom/twitter/android/timeline/bk;->a(Z)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v13}, Lcom/twitter/android/timeline/bk;->h(I)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v14}, Lcom/twitter/android/timeline/bk;->g(I)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v5}, Lcom/twitter/android/timeline/bk;->b(Z)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v15}, Lcom/twitter/android/timeline/bk;->i(I)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 64
    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/twitter/android/timeline/bk;->a(ZZZZ)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 65
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/twitter/android/timeline/bk;->e(I)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 66
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/twitter/android/timeline/bk;->f(I)Lcom/twitter/android/timeline/bk;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lcom/twitter/android/timeline/bk;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/timeline/bj;

    .line 52
    return-object v4

    .line 35
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 39
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bl;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method
