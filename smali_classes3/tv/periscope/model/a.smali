.class final Ltv/periscope/model/a;
.super Ltv/periscope/model/o;
.source "Twttr"


# instance fields
.field private final A:Z

.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ltv/periscope/model/z;

.field private final f:J

.field private final g:Z

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:J

.field private final m:D

.field private final n:D

.field private final o:Ljava/lang/String;

.field private final p:Z

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Z

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final z:I


# direct methods
.method private constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ltv/periscope/model/z;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJDDLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ltv/periscope/model/z;",
            "JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJDD",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ltv/periscope/model/o;-><init>()V

    .line 66
    iput-wide p1, p0, Ltv/periscope/model/a;->a:J

    .line 67
    iput-wide p3, p0, Ltv/periscope/model/a;->b:J

    .line 68
    if-nez p5, :cond_0

    .line 69
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null id"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    iput-object p5, p0, Ltv/periscope/model/a;->c:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Ltv/periscope/model/a;->d:Ljava/lang/String;

    .line 73
    if-nez p7, :cond_1

    .line 74
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null location"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_1
    iput-object p7, p0, Ltv/periscope/model/a;->e:Ltv/periscope/model/z;

    .line 77
    iput-wide p8, p0, Ltv/periscope/model/a;->f:J

    .line 78
    iput-boolean p10, p0, Ltv/periscope/model/a;->g:Z

    .line 79
    iput-object p11, p0, Ltv/periscope/model/a;->h:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p12

    iput-object v0, p0, Ltv/periscope/model/a;->i:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p13

    iput-object v0, p0, Ltv/periscope/model/a;->j:Ljava/lang/String;

    .line 82
    move-wide/from16 v0, p14

    iput-wide v0, p0, Ltv/periscope/model/a;->k:J

    .line 83
    move-wide/from16 v0, p16

    iput-wide v0, p0, Ltv/periscope/model/a;->l:J

    .line 84
    move-wide/from16 v0, p18

    iput-wide v0, p0, Ltv/periscope/model/a;->m:D

    .line 85
    move-wide/from16 v0, p20

    iput-wide v0, p0, Ltv/periscope/model/a;->n:D

    .line 86
    if-nez p22, :cond_2

    .line 87
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null userId"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_2
    move-object/from16 v0, p22

    iput-object v0, p0, Ltv/periscope/model/a;->o:Ljava/lang/String;

    .line 90
    move/from16 v0, p23

    iput-boolean v0, p0, Ltv/periscope/model/a;->p:Z

    .line 91
    move-object/from16 v0, p24

    iput-object v0, p0, Ltv/periscope/model/a;->q:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p25

    iput-object v0, p0, Ltv/periscope/model/a;->r:Ljava/lang/String;

    .line 93
    if-nez p26, :cond_3

    .line 94
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null userDisplayName"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_3
    move-object/from16 v0, p26

    iput-object v0, p0, Ltv/periscope/model/a;->s:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p27

    iput-object v0, p0, Ltv/periscope/model/a;->t:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p28

    iput-object v0, p0, Ltv/periscope/model/a;->u:Ljava/lang/String;

    .line 99
    move/from16 v0, p29

    iput-boolean v0, p0, Ltv/periscope/model/a;->v:Z

    .line 100
    move-object/from16 v0, p30

    iput-object v0, p0, Ltv/periscope/model/a;->w:Ljava/util/ArrayList;

    .line 101
    move-object/from16 v0, p31

    iput-object v0, p0, Ltv/periscope/model/a;->x:Ljava/util/ArrayList;

    .line 102
    move-object/from16 v0, p32

    iput-object v0, p0, Ltv/periscope/model/a;->y:Ljava/util/ArrayList;

    .line 103
    move/from16 v0, p33

    iput v0, p0, Ltv/periscope/model/a;->z:I

    .line 104
    move/from16 v0, p34

    iput-boolean v0, p0, Ltv/periscope/model/a;->A:Z

    .line 105
    return-void
.end method

.method synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ltv/periscope/model/z;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJDDLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLtv/periscope/model/b;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p34}, Ltv/periscope/model/a;-><init>(JJLjava/lang/String;Ljava/lang/String;Ltv/periscope/model/z;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJDDLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Ltv/periscope/model/a;->A:Z

    return v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Ltv/periscope/model/a;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Ltv/periscope/model/a;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ltv/periscope/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ltv/periscope/model/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ltv/periscope/model/z;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltv/periscope/model/a;->e:Ltv/periscope/model/z;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    if-ne p1, p0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    instance-of v2, p1, Ltv/periscope/model/o;

    if-eqz v2, :cond_e

    .line 292
    check-cast p1, Ltv/periscope/model/o;

    .line 293
    iget-wide v2, p0, Ltv/periscope/model/a;->a:J

    invoke-virtual {p1}, Ltv/periscope/model/o;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ltv/periscope/model/a;->b:J

    .line 294
    invoke-virtual {p1}, Ltv/periscope/model/o;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Ltv/periscope/model/a;->c:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/periscope/model/a;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 296
    invoke-virtual {p1}, Ltv/periscope/model/o;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Ltv/periscope/model/a;->e:Ltv/periscope/model/z;

    .line 297
    invoke-virtual {p1}, Ltv/periscope/model/o;->e()Ltv/periscope/model/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Ltv/periscope/model/a;->f:J

    .line 298
    invoke-virtual {p1}, Ltv/periscope/model/o;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Ltv/periscope/model/a;->g:Z

    .line 299
    invoke-virtual {p1}, Ltv/periscope/model/o;->g()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ltv/periscope/model/a;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 300
    invoke-virtual {p1}, Ltv/periscope/model/o;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Ltv/periscope/model/a;->i:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 301
    invoke-virtual {p1}, Ltv/periscope/model/o;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    iget-object v2, p0, Ltv/periscope/model/a;->j:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 302
    invoke-virtual {p1}, Ltv/periscope/model/o;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_4
    iget-wide v2, p0, Ltv/periscope/model/a;->k:J

    .line 303
    invoke-virtual {p1}, Ltv/periscope/model/o;->k()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ltv/periscope/model/a;->l:J

    .line 304
    invoke-virtual {p1}, Ltv/periscope/model/o;->l()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ltv/periscope/model/a;->m:D

    .line 305
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ltv/periscope/model/o;->m()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ltv/periscope/model/a;->n:D

    .line 306
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ltv/periscope/model/o;->n()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Ltv/periscope/model/a;->o:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Ltv/periscope/model/o;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Ltv/periscope/model/a;->p:Z

    .line 308
    invoke-virtual {p1}, Ltv/periscope/model/o;->p()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ltv/periscope/model/a;->q:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 309
    invoke-virtual {p1}, Ltv/periscope/model/o;->q()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_5
    iget-object v2, p0, Ltv/periscope/model/a;->r:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 310
    invoke-virtual {p1}, Ltv/periscope/model/o;->r()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_6
    iget-object v2, p0, Ltv/periscope/model/a;->s:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Ltv/periscope/model/o;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/periscope/model/a;->t:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 312
    invoke-virtual {p1}, Ltv/periscope/model/o;->t()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_7
    iget-object v2, p0, Ltv/periscope/model/a;->u:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 313
    invoke-virtual {p1}, Ltv/periscope/model/o;->u()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_8
    iget-boolean v2, p0, Ltv/periscope/model/a;->v:Z

    .line 314
    invoke-virtual {p1}, Ltv/periscope/model/o;->v()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ltv/periscope/model/a;->w:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    .line 315
    invoke-virtual {p1}, Ltv/periscope/model/o;->w()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_9
    iget-object v2, p0, Ltv/periscope/model/a;->x:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    .line 316
    invoke-virtual {p1}, Ltv/periscope/model/o;->x()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_a
    iget-object v2, p0, Ltv/periscope/model/a;->y:Ljava/util/ArrayList;

    if-nez v2, :cond_d

    .line 317
    invoke-virtual {p1}, Ltv/periscope/model/o;->y()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_b
    iget v2, p0, Ltv/periscope/model/a;->z:I

    .line 318
    invoke-virtual {p1}, Ltv/periscope/model/o;->z()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Ltv/periscope/model/a;->A:Z

    .line 319
    invoke-virtual {p1}, Ltv/periscope/model/o;->A()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    .line 296
    :cond_3
    iget-object v2, p0, Ltv/periscope/model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 300
    :cond_4
    iget-object v2, p0, Ltv/periscope/model/a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 301
    :cond_5
    iget-object v2, p0, Ltv/periscope/model/a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 302
    :cond_6
    iget-object v2, p0, Ltv/periscope/model/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 309
    :cond_7
    iget-object v2, p0, Ltv/periscope/model/a;->q:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    .line 310
    :cond_8
    iget-object v2, p0, Ltv/periscope/model/a;->r:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 312
    :cond_9
    iget-object v2, p0, Ltv/periscope/model/a;->t:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    .line 313
    :cond_a
    iget-object v2, p0, Ltv/periscope/model/a;->u:Ljava/lang/String;

    invoke-virtual {p1}, Ltv/periscope/model/o;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_8

    .line 315
    :cond_b
    iget-object v2, p0, Ltv/periscope/model/a;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltv/periscope/model/o;->w()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_9

    .line 316
    :cond_c
    iget-object v2, p0, Ltv/periscope/model/a;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltv/periscope/model/o;->x()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_a

    .line 317
    :cond_d
    iget-object v2, p0, Ltv/periscope/model/a;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ltv/periscope/model/o;->y()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_b

    :cond_e
    move v0, v1

    .line 321
    goto/16 :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Ltv/periscope/model/a;->f:J

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Ltv/periscope/model/a;->g:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ltv/periscope/model/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 12

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/16 v11, 0x20

    const/4 v1, 0x0

    const v10, 0xf4243

    .line 326
    .line 328
    int-to-long v4, v10

    iget-wide v6, p0, Ltv/periscope/model/a;->a:J

    ushr-long/2addr v6, v11

    iget-wide v8, p0, Ltv/periscope/model/a;->a:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 329
    mul-int/2addr v0, v10

    .line 330
    int-to-long v4, v0

    iget-wide v6, p0, Ltv/periscope/model/a;->b:J

    ushr-long/2addr v6, v11

    iget-wide v8, p0, Ltv/periscope/model/a;->b:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 331
    mul-int/2addr v0, v10

    .line 332
    iget-object v4, p0, Ltv/periscope/model/a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 333
    mul-int v4, v0, v10

    .line 334
    iget-object v0, p0, Ltv/periscope/model/a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v4

    .line 335
    mul-int/2addr v0, v10

    .line 336
    iget-object v4, p0, Ltv/periscope/model/a;->e:Ltv/periscope/model/z;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 337
    mul-int/2addr v0, v10

    .line 338
    int-to-long v4, v0

    iget-wide v6, p0, Ltv/periscope/model/a;->f:J

    ushr-long/2addr v6, v11

    iget-wide v8, p0, Ltv/periscope/model/a;->f:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 339
    mul-int v4, v0, v10

    .line 340
    iget-boolean v0, p0, Ltv/periscope/model/a;->g:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    xor-int/2addr v0, v4

    .line 341
    mul-int v4, v0, v10

    .line 342
    iget-object v0, p0, Ltv/periscope/model/a;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v4

    .line 343
    mul-int v4, v0, v10

    .line 344
    iget-object v0, p0, Ltv/periscope/model/a;->i:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    xor-int/2addr v0, v4

    .line 345
    mul-int v4, v0, v10

    .line 346
    iget-object v0, p0, Ltv/periscope/model/a;->j:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    xor-int/2addr v0, v4

    .line 347
    mul-int/2addr v0, v10

    .line 348
    int-to-long v4, v0

    iget-wide v6, p0, Ltv/periscope/model/a;->k:J

    ushr-long/2addr v6, v11

    iget-wide v8, p0, Ltv/periscope/model/a;->k:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 349
    mul-int/2addr v0, v10

    .line 350
    int-to-long v4, v0

    iget-wide v6, p0, Ltv/periscope/model/a;->l:J

    ushr-long/2addr v6, v11

    iget-wide v8, p0, Ltv/periscope/model/a;->l:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 351
    mul-int/2addr v0, v10

    .line 352
    int-to-long v4, v0

    iget-wide v6, p0, Ltv/periscope/model/a;->m:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v11

    iget-wide v8, p0, Ltv/periscope/model/a;->m:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 353
    mul-int/2addr v0, v10

    .line 354
    int-to-long v4, v0

    iget-wide v6, p0, Ltv/periscope/model/a;->n:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v11

    iget-wide v8, p0, Ltv/periscope/model/a;->n:D

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 355
    mul-int/2addr v0, v10

    .line 356
    iget-object v4, p0, Ltv/periscope/model/a;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 357
    mul-int v4, v0, v10

    .line 358
    iget-boolean v0, p0, Ltv/periscope/model/a;->p:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    xor-int/2addr v0, v4

    .line 359
    mul-int v4, v0, v10

    .line 360
    iget-object v0, p0, Ltv/periscope/model/a;->q:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    xor-int/2addr v0, v4

    .line 361
    mul-int v4, v0, v10

    .line 362
    iget-object v0, p0, Ltv/periscope/model/a;->r:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    xor-int/2addr v0, v4

    .line 363
    mul-int/2addr v0, v10

    .line 364
    iget-object v4, p0, Ltv/periscope/model/a;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 365
    mul-int v4, v0, v10

    .line 366
    iget-object v0, p0, Ltv/periscope/model/a;->t:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    xor-int/2addr v0, v4

    .line 367
    mul-int v4, v0, v10

    .line 368
    iget-object v0, p0, Ltv/periscope/model/a;->u:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    xor-int/2addr v0, v4

    .line 369
    mul-int v4, v0, v10

    .line 370
    iget-boolean v0, p0, Ltv/periscope/model/a;->v:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_a
    xor-int/2addr v0, v4

    .line 371
    mul-int v4, v0, v10

    .line 372
    iget-object v0, p0, Ltv/periscope/model/a;->w:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    xor-int/2addr v0, v4

    .line 373
    mul-int v4, v0, v10

    .line 374
    iget-object v0, p0, Ltv/periscope/model/a;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    xor-int/2addr v0, v4

    .line 375
    mul-int/2addr v0, v10

    .line 376
    iget-object v4, p0, Ltv/periscope/model/a;->y:Ljava/util/ArrayList;

    if-nez v4, :cond_d

    :goto_d
    xor-int/2addr v0, v1

    .line 377
    mul-int/2addr v0, v10

    .line 378
    iget v1, p0, Ltv/periscope/model/a;->z:I

    xor-int/2addr v0, v1

    .line 379
    mul-int/2addr v0, v10

    .line 380
    iget-boolean v1, p0, Ltv/periscope/model/a;->A:Z

    if-eqz v1, :cond_e

    :goto_e
    xor-int/2addr v0, v2

    .line 381
    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Ltv/periscope/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 340
    goto/16 :goto_1

    .line 342
    :cond_2
    iget-object v0, p0, Ltv/periscope/model/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    .line 344
    :cond_3
    iget-object v0, p0, Ltv/periscope/model/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 346
    :cond_4
    iget-object v0, p0, Ltv/periscope/model/a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    move v0, v3

    .line 358
    goto :goto_5

    .line 360
    :cond_6
    iget-object v0, p0, Ltv/periscope/model/a;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 362
    :cond_7
    iget-object v0, p0, Ltv/periscope/model/a;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    .line 366
    :cond_8
    iget-object v0, p0, Ltv/periscope/model/a;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    .line 368
    :cond_9
    iget-object v0, p0, Ltv/periscope/model/a;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    move v0, v3

    .line 370
    goto :goto_a

    .line 372
    :cond_b
    iget-object v0, p0, Ltv/periscope/model/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_b

    .line 374
    :cond_c
    iget-object v0, p0, Ltv/periscope/model/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    goto :goto_c

    .line 376
    :cond_d
    iget-object v1, p0, Ltv/periscope/model/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_e
    move v2, v3

    .line 380
    goto :goto_e
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ltv/periscope/model/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Ltv/periscope/model/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Ltv/periscope/model/a;->k:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Ltv/periscope/model/a;->l:J

    return-wide v0
.end method

.method public m()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Ltv/periscope/model/a;->m:D

    return-wide v0
.end method

.method public n()D
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Ltv/periscope/model/a;->n:D

    return-wide v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ltv/periscope/model/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Ltv/periscope/model/a;->p:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ltv/periscope/model/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Ltv/periscope/model/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ltv/periscope/model/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ltv/periscope/model/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Broadcast{timedOutTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/model/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/model/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->e:Ltv/periscope/model/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "createdAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/model/a;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "featured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/model/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "featuredCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "featuredCategoryColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "featuredReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sortScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/model/a;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "startTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/model/a;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ipLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/model/a;->m:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ipLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/model/a;->n:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "locked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/model/a;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "imageUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "profileImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "twitterUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/model/a;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "shareUserIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "shareUserDisplayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "heartThemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/model/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cameraRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltv/periscope/model/a;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "highlightAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltv/periscope/model/a;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Ltv/periscope/model/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Ltv/periscope/model/a;->v:Z

    return v0
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Ltv/periscope/model/a;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method public x()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Ltv/periscope/model/a;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method public y()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Ltv/periscope/model/a;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Ltv/periscope/model/a;->z:I

    return v0
.end method
