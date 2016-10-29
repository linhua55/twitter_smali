.class public Larv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lars;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lars;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Larv;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Larv;->b:Lars;

    .line 40
    return-void
.end method

.method public static a(I)I
    .locals 3

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 168
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(ILcom/twitter/android/timeline/cp;Lcom/twitter/android/timeline/cp;)Lcom/twitter/android/timeline/cp;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 157
    :goto_0
    return-object p1

    .line 154
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    move-object p1, p2

    .line 155
    goto :goto_0

    .line 157
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/twitter/library/service/b;
    .locals 20

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Larv;->b:Lars;

    iget v2, v2, Lars;->a:I

    .line 47
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget v11, v3, Lars;->c:I

    .line 48
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-wide v6, v3, Lars;->h:J

    .line 49
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-wide v12, v3, Lars;->f:J

    .line 50
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-wide v14, v3, Lars;->g:J

    .line 51
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-boolean v8, v3, Lars;->d:Z

    .line 53
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-object v0, v3, Lars;->i:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-object v5, v3, Lars;->j:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-object v0, v3, Lars;->k:Lcom/twitter/library/client/Session;

    move-object/from16 v17, v0

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget v9, v3, Lars;->l:I

    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-object v0, v3, Lars;->n:Lcom/twitter/model/timeline/ae;

    move-object/from16 v18, v0

    .line 64
    invoke-static {}, Lcom/twitter/android/av/v;->a()I

    move-result v19

    .line 66
    packed-switch v2, :pswitch_data_0

    .line 141
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 68
    :pswitch_1
    invoke-virtual/range {v17 .. v17}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    :cond_0
    new-instance v2, Lbsb;

    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->a:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0, v4, v9}, Lbsb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;I)V

    .line 72
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lbsb;->a(Lcom/twitter/model/timeline/ae;)Lbsj;

    move-result-object v2

    check-cast v2, Lbsb;

    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-object v3, v3, Lars;->m:Lcom/twitter/android/revenue/d;

    .line 73
    invoke-virtual {v2, v3}, Lbsb;->a(Lcom/twitter/android/revenue/d;)Lbsb;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v14, v15}, Lbsb;->a(J)Lbsj;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v11}, Lbsj;->c(I)Lbss;

    move-result-object v2

    .line 76
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lbss;->f(I)Lbss;

    move-result-object v2

    const-string/jumbo v3, "scribe_event"

    .line 77
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lbss;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v2

    check-cast v2, Lbsb;

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget v3, v3, Lars;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "ptr"

    :goto_1
    invoke-virtual {v2, v3}, Lbsb;->b(Ljava/lang/String;)Lbss;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1

    .line 84
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Larv;->b:Lars;

    iget v2, v2, Lars;->l:I

    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-object v3, v3, Lars;->o:Lcom/twitter/android/timeline/cp;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->b:Lars;

    iget-object v4, v4, Lars;->p:Lcom/twitter/android/timeline/cp;

    invoke-static {v2, v3, v4}, Larv;->a(ILcom/twitter/android/timeline/cp;Lcom/twitter/android/timeline/cp;)Lcom/twitter/android/timeline/cp;

    move-result-object v8

    .line 86
    new-instance v3, Lbsz;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->a:Landroid/content/Context;

    new-instance v5, Lcom/twitter/library/service/ab;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct/range {v3 .. v8}, Lbsz;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLcom/twitter/android/timeline/cp;)V

    .line 88
    invoke-virtual {v3, v11}, Lbsz;->c(I)Lbss;

    move-result-object v2

    .line 89
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lbss;->f(I)Lbss;

    move-result-object v2

    const-string/jumbo v3, "scribe_event"

    .line 90
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lbss;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v2

    check-cast v2, Lbsz;

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget v3, v3, Lars;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "ptr"

    :goto_2
    invoke-virtual {v2, v3}, Lbsz;->b(Ljava/lang/String;)Lbss;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v3, ""

    goto :goto_2

    .line 97
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Larv;->b:Lars;

    iget v2, v2, Lars;->l:I

    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->b:Lars;

    iget-object v3, v3, Lars;->o:Lcom/twitter/android/timeline/cp;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->b:Lars;

    iget-object v4, v4, Lars;->p:Lcom/twitter/android/timeline/cp;

    invoke-static {v2, v3, v4}, Larv;->a(ILcom/twitter/android/timeline/cp;Lcom/twitter/android/timeline/cp;)Lcom/twitter/android/timeline/cp;

    move-result-object v8

    .line 99
    new-instance v3, Lbsy;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->a:Landroid/content/Context;

    new-instance v5, Lcom/twitter/library/service/ab;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct/range {v3 .. v8}, Lbsy;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JLcom/twitter/android/timeline/cp;)V

    const/16 v2, 0x14

    .line 100
    invoke-virtual {v3, v2}, Lbsy;->c(I)Lbss;

    move-result-object v2

    const-string/jumbo v3, "scribe_event"

    .line 101
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lbss;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/service/b;

    goto/16 :goto_0

    .line 104
    :pswitch_4
    new-instance v3, Lbsi;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->a:Landroid/content/Context;

    const/4 v10, 0x1

    move-object/from16 v5, v17

    invoke-direct/range {v3 .. v10}, Lbsi;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZII)V

    .line 106
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lbsi;->a(Lcom/twitter/model/timeline/ae;)Lbsj;

    move-result-object v2

    .line 107
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lbsj;->f(I)Lbss;

    move-result-object v2

    check-cast v2, Lbsi;

    .line 108
    invoke-virtual {v2, v14, v15}, Lbsi;->a(J)Lbsj;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v11}, Lbsj;->c(I)Lbss;

    move-result-object v2

    const-string/jumbo v3, "scribe_event"

    .line 110
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lbss;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/service/b;

    goto/16 :goto_0

    .line 113
    :pswitch_5
    new-instance v3, Lbsi;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->a:Landroid/content/Context;

    const/16 v10, 0x12

    move-object/from16 v5, v17

    invoke-direct/range {v3 .. v10}, Lbsi;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZII)V

    .line 115
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lbsi;->a(Lcom/twitter/model/timeline/ae;)Lbsj;

    move-result-object v2

    .line 116
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lbsj;->f(I)Lbss;

    move-result-object v2

    check-cast v2, Lbsi;

    .line 117
    invoke-virtual {v2, v14, v15}, Lbsi;->a(J)Lbsj;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v11}, Lbsj;->c(I)Lbss;

    move-result-object v2

    const-string/jumbo v3, "scribe_event"

    .line 119
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lbss;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/service/b;

    goto/16 :goto_0

    .line 122
    :pswitch_6
    new-instance v3, Lbro;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->a:Landroid/content/Context;

    .line 123
    invoke-static {v5}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Larv;->b:Lars;

    iget v5, v5, Lars;->b:I

    invoke-static {v5}, Larv;->a(I)I

    move-result v5

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0, v2, v5}, Lbro;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;I)V

    .line 124
    const-string/jumbo v2, "scribe_event"

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Lbro;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-object v2, v3

    .line 125
    goto/16 :goto_0

    .line 128
    :pswitch_7
    new-instance v3, Lbsd;

    move-object/from16 v0, p0

    iget-object v4, v0, Larv;->a:Landroid/content/Context;

    .line 129
    invoke-static {v5}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v5, v17

    invoke-direct/range {v3 .. v8}, Lbsd;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Larv;->b:Lars;

    iget-wide v4, v2, Lars;->e:J

    .line 130
    invoke-virtual {v3, v4, v5}, Lbsd;->c(J)Lbss;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v12, v13}, Lbss;->b(J)Lbss;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v11}, Lbss;->c(I)Lbss;

    move-result-object v2

    goto/16 :goto_0

    .line 135
    :pswitch_8
    new-instance v2, Lbsu;

    move-object/from16 v0, p0

    iget-object v3, v0, Larv;->a:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Lbsu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    goto/16 :goto_0

    .line 138
    :pswitch_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
