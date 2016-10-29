.class public Lcis;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private final f:Lcit;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lcir;


# direct methods
.method public constructor <init>(Lcit;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcir;

    invoke-direct {v0}, Lcir;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcis;-><init>(Lcit;Landroid/content/res/Resources;Lcir;)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcit;Landroid/content/res/Resources;Lcir;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcis;->f:Lcit;

    .line 43
    iput-object p2, p0, Lcis;->g:Landroid/content/res/Resources;

    .line 44
    iput-object p3, p0, Lcis;->h:Lcir;

    .line 45
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcis;->h:Lcir;

    invoke-virtual {v0, p2}, Lcir;->a(Ljava/lang/String;)Lcir;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p2}, Lcir;->b(Ljava/lang/String;)Lcir;

    move-result-object v0

    .line 151
    invoke-static {p1}, Lcom/twitter/library/util/ah;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcir;->a(I)Lcir;

    .line 152
    return-void
.end method

.method private a(ILjava/lang/String;IIJLjava/lang/String;IJ)V
    .locals 13

    .prologue
    .line 160
    iget-object v0, p0, Lcis;->g:Landroid/content/res/Resources;

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 163
    invoke-static/range {v0 .. v10}, Lcom/twitter/library/util/ah;->a(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;IIJIJ)Ljava/lang/String;

    move-result-object v11

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 165
    invoke-static/range {v0 .. v10}, Lcom/twitter/library/util/ah;->b(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;IIJIJ)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {p1}, Lcom/twitter/library/util/ah;->a(I)I

    move-result v1

    .line 168
    iget-object v2, p0, Lcis;->h:Lcir;

    invoke-virtual {v2, v11}, Lcir;->a(Ljava/lang/String;)Lcir;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v0}, Lcir;->b(Ljava/lang/String;)Lcir;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v1}, Lcir;->a(I)Lcir;

    .line 171
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)Z
    .locals 13

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->b:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 131
    const/16 v2, 0xd

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->c:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lciz;->h(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iget-boolean v0, p2, Lcom/twitter/ui/view/s;->h:Z

    .line 135
    if-eqz v0, :cond_0

    .line 136
    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcis;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcis;->b:I

    .line 188
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;JZ)V
    .locals 13

    .prologue
    .line 49
    iget-object v0, p0, Lcis;->h:Lcir;

    invoke-virtual {v0}, Lcir;->a()V

    .line 50
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->c:Z

    .line 51
    iget-boolean v1, p2, Lcom/twitter/ui/view/s;->a:Z

    if-eqz v1, :cond_1

    .line 52
    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcis;->f:Lcit;

    iget-object v1, p0, Lcis;->h:Lcir;

    invoke-interface {v0, v1}, Lcit;->setSocialProofData(Lcir;)V

    .line 124
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lcis;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcis;->b:I

    if-eqz v1, :cond_2

    .line 54
    iget-object v0, p0, Lcis;->h:Lcir;

    iget-object v1, p0, Lcis;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcir;->a(Ljava/lang/String;)Lcir;

    move-result-object v0

    iget v1, p0, Lcis;->b:I

    invoke-virtual {v0, v1}, Lcir;->a(I)Lcir;

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    invoke-direct/range {p0 .. p4}, Lcis;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)Z

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    iget-object v3, v0, Lcss;->f:Ljava/lang/String;

    .line 60
    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->r()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v0}, Lcss;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v2, 0x26

    .line 64
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto :goto_0

    .line 62
    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    .line 67
    :cond_6
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->E()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 68
    invoke-direct/range {p0 .. p4}, Lcis;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)Z

    goto :goto_0

    .line 69
    :cond_7
    invoke-static {p1}, Lciz;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 71
    iget v2, p1, Lcom/twitter/model/core/Tweet;->f:I

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v8, p1, Lcom/twitter/model/core/Tweet;->V:Ljava/lang/String;

    iget v9, p1, Lcom/twitter/model/core/Tweet;->T:I

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 74
    :cond_8
    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 77
    :cond_9
    invoke-static {p1}, Lciz;->e(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 79
    const/16 v2, 0x23

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 82
    :cond_a
    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 84
    :cond_b
    invoke-static {p1}, Lciz;->f(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 85
    iget v2, p1, Lcom/twitter/model/core/Tweet;->f:I

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 86
    :cond_c
    invoke-static {p1}, Lciz;->g(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    iget v0, p1, Lcom/twitter/model/core/Tweet;->f:I

    iget-object v1, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcis;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_d
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->G:Z

    if-eqz v0, :cond_e

    iget v0, p1, Lcom/twitter/model/core/Tweet;->f:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_e

    .line 90
    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 91
    :cond_e
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->X:Z

    if-eqz v0, :cond_f

    .line 92
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 93
    :cond_f
    invoke-direct/range {p0 .. p4}, Lcis;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->H()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    if-nez p5, :cond_13

    .line 97
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 98
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->A:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_11

    const/16 v2, 0x2f

    .line 101
    :goto_2
    invoke-static {p1}, Lciz;->l(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/core/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/av;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->o:J

    .line 103
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v0, v1

    const/4 v1, 0x1

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->A:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v0, v1

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-static {p1, v0}, Lciz;->a(Lcom/twitter/model/core/Tweet;Ljava/util/List;)I

    move-result v9

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    .line 98
    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x2e

    goto :goto_2

    .line 104
    :cond_12
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    const/16 v2, 0x18

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 108
    :cond_13
    iget-boolean v0, p2, Lcom/twitter/ui/view/s;->c:Z

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lciz;->h(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->z:Ljava/lang/String;

    if-eqz v0, :cond_14

    if-nez p5, :cond_14

    .line 110
    const/16 v2, 0x18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/core/Tweet;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 112
    :cond_14
    iget-boolean v0, p0, Lcis;->e:Z

    if-eqz v0, :cond_15

    iget v0, p1, Lcom/twitter/model/core/Tweet;->f:I

    if-lez v0, :cond_15

    .line 113
    iget v2, p1, Lcom/twitter/model/core/Tweet;->f:I

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    iget v4, p1, Lcom/twitter/model/core/Tweet;->S:I

    iget v5, p1, Lcom/twitter/model/core/Tweet;->U:I

    const-wide/16 v6, 0x0

    iget-object v8, p1, Lcom/twitter/model/core/Tweet;->V:Ljava/lang/String;

    iget v9, p1, Lcom/twitter/model/core/Tweet;->T:I

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    goto/16 :goto_0

    .line 117
    :cond_15
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcey;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcis;->c:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/16 v2, 0x2b

    iget-object v3, p0, Lcis;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcis;->a(ILjava/lang/String;IIJLjava/lang/String;IJ)V

    .line 121
    iget-object v0, p0, Lcis;->h:Lcir;

    iget-object v1, p0, Lcis;->g:Landroid/content/res/Resources;

    sget v2, Lbjt;->twitter_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcir;->b(I)Lcir;

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcis;->a:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lcis;->e:Z

    .line 209
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcis;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcis;->d:I

    .line 205
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcis;->c:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcis;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcis;->d:I

    return v0
.end method
