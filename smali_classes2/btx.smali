.class public Lbtx;
.super Lcom/twitter/library/service/x;
.source "Twttr"


# instance fields
.field public a:Lbuu;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/library/service/ab;

    invoke-direct {v0, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    new-instance v1, Lbuu;

    invoke-direct {v1}, Lbuu;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lbtx;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lbuu;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lbuu;

    invoke-direct {v0}, Lbuu;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lbtx;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lbuu;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lbuu;)V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lbtx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 45
    iput-object p3, p0, Lbtx;->a:Lbuu;

    .line 46
    return-void
.end method


# virtual methods
.method protected a_(Lcom/twitter/library/service/aa;)V
    .locals 21

    .prologue
    .line 56
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v12

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    iget-object v2, v2, Lbuu;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    iget-object v2, v2, Lbuu;->b:[Ljava/lang/String;

    move-object v3, v2

    .line 60
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    iget-object v2, v2, Lbuu;->c:[Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    iget-object v2, v2, Lbuu;->c:[Ljava/lang/String;

    move-object v4, v2

    .line 62
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    iget-object v2, v2, Lbuu;->a:[J

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    iget-object v2, v2, Lbuu;->a:[J

    move-object v5, v2

    .line 64
    :goto_2
    array-length v2, v3

    if-gtz v2, :cond_0

    array-length v2, v4

    if-lez v2, :cond_6

    :cond_0
    const/4 v2, 0x1

    move v6, v2

    .line 66
    :goto_3
    array-length v9, v3

    .line 67
    array-length v7, v4

    .line 68
    array-length v10, v5

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    iget-boolean v14, v2, Lbuu;->h:Z

    .line 71
    add-int v2, v9, v7

    add-int/2addr v2, v10

    const/16 v8, 0x64

    invoke-static {v2, v8}, Lcom/twitter/library/network/at;->a(II)I

    move-result v15

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->a:Lbuu;

    const/4 v8, 0x0

    iput v8, v2, Lbuu;->i:I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lbtx;->N()Lcom/twitter/library/service/ab;

    move-result-object v16

    .line 77
    const/4 v2, 0x0

    move v11, v2

    :goto_4
    if-ge v11, v15, :cond_8

    .line 78
    const/16 v8, 0x64

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtx;->a:Lbuu;

    move-object/from16 v17, v0

    if-nez v11, :cond_7

    const-string/jumbo v2, "-1"

    :goto_5
    move-object/from16 v0, v17

    iput-object v2, v0, Lbuu;->f:Ljava/lang/String;

    .line 81
    new-instance v17, Lbut;

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->p:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lbut;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 82
    move-object/from16 v0, v17

    iget-object v2, v0, Lbut;->a:Lbuu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtx;->a:Lbuu;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lbuu;->a(Lbuu;)Lbuu;

    .line 84
    if-lez v10, :cond_1

    .line 85
    array-length v2, v5

    sub-int v18, v2, v10

    .line 86
    add-int v2, v18, v8

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 87
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Lbut;->a([JZ)Lbut;

    .line 88
    sub-int v2, v19, v18

    sub-int v2, v10, v2

    .line 89
    sub-int v10, v19, v18

    sub-int/2addr v8, v10

    move v10, v2

    .line 92
    :cond_1
    if-lez v8, :cond_b

    if-lez v9, :cond_b

    .line 93
    array-length v2, v3

    sub-int v18, v2, v9

    .line 94
    add-int v2, v18, v8

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 95
    move-object/from16 v0, v17

    iget-object v0, v0, Lbut;->a:Lbuu;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lbuu;->a([Ljava/lang/String;)Lbuu;

    .line 96
    sub-int v2, v19, v18

    sub-int/2addr v9, v2

    .line 97
    sub-int v2, v19, v18

    sub-int v2, v8, v2

    move v8, v9

    .line 100
    :goto_6
    if-lez v2, :cond_a

    if-lez v7, :cond_a

    .line 101
    array-length v9, v4

    sub-int/2addr v9, v7

    .line 102
    add-int/2addr v2, v9

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 103
    move-object/from16 v0, v17

    iget-object v0, v0, Lbut;->a:Lbuu;

    move-object/from16 v19, v0

    .line 104
    move/from16 v0, v18

    invoke-static {v4, v9, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 103
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lbuu;->b([Ljava/lang/String;)Lbuu;

    .line 105
    sub-int v2, v18, v9

    sub-int v2, v7, v2

    .line 108
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lbut;->P()Lcom/twitter/library/service/aa;

    move-result-object v7

    .line 109
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/library/service/aa;)V

    .line 111
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 112
    const-string/jumbo v18, "page"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string/jumbo v18, "pages"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v7}, Lcom/twitter/library/service/aa;->b()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 116
    move-object/from16 v0, v17

    iget-object v0, v0, Lbut;->a:Lbuu;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbuu;->a()I

    move-result v18

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtx;->a:Lbuu;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lbuu;->i:I

    move/from16 v20, v0

    add-int v20, v20, v18

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lbuu;->i:I

    .line 118
    const-string/jumbo v19, "inserted_count"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string/jumbo v18, "result_code"

    invoke-virtual {v7}, Lcom/twitter/library/service/aa;->d()I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    move-object/from16 v0, v17

    iget-object v7, v0, Lbut;->a:Lbuu;

    invoke-virtual {v7}, Lbuu;->b()I

    move-result v7

    .line 122
    const-string/jumbo v17, "num_users"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lbtx;->b(Ljava/lang/Object;)V

    .line 77
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move v9, v8

    move v7, v2

    goto/16 :goto_4

    .line 58
    :cond_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v3, v2

    goto/16 :goto_0

    .line 60
    :cond_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v4, v2

    goto/16 :goto_1

    .line 62
    :cond_5
    const/4 v2, 0x0

    new-array v2, v2, [J

    move-object v5, v2

    goto/16 :goto_2

    .line 64
    :cond_6
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_3

    .line 79
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 126
    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtx;->b:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 127
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    sub-long v4, v2, v12

    .line 128
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/twitter/library/service/ab;->c:J

    invoke-direct {v2, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lbtx;->b:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "import_addressbook::import:done"

    aput-object v7, v3, v6

    .line 129
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 130
    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 128
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 131
    new-instance v2, Lcom/twitter/library/client/l;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtx;->p:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/twitter/library/service/ab;->c:J

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v3, "addressbook_import_done"

    const/4 v4, 0x1

    .line 132
    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/n;->apply()V

    .line 134
    :cond_9
    return-void

    :cond_a
    move v2, v7

    goto/16 :goto_7

    :cond_b
    move v2, v8

    move v8, v9

    goto/16 :goto_6
.end method
