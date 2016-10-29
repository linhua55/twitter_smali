.class final Ltv/periscope/model/c;
.super Ltv/periscope/model/p;
.source "Twttr"


# instance fields
.field private A:Ljava/lang/Boolean;

.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ltv/periscope/model/z;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/Long;

.field private m:Ljava/lang/Double;

.field private n:Ljava/lang/Double;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ltv/periscope/model/p;-><init>()V

    .line 413
    return-void
.end method


# virtual methods
.method public a()Ltv/periscope/model/o;
    .locals 38

    .prologue
    .line 580
    const-string/jumbo v2, ""

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->a:Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timedOutTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->b:Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pingTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->e:Ltv/periscope/model/z;

    if-nez v3, :cond_3

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " location"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->f:Ljava/lang/Long;

    if-nez v3, :cond_4

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createdAtMillis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->g:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " featured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->k:Ljava/lang/Long;

    if-nez v3, :cond_6

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sortScore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->l:Ljava/lang/Long;

    if-nez v3, :cond_7

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " startTimeMillis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->m:Ljava/lang/Double;

    if-nez v3, :cond_8

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ipLat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->n:Ljava/lang/Double;

    if-nez v3, :cond_9

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ipLong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->o:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->p:Ljava/lang/Boolean;

    if-nez v3, :cond_b

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->s:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userDisplayName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->v:Ljava/lang/Boolean;

    if-nez v3, :cond_d

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hasLocation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->z:Ljava/lang/Integer;

    if-nez v3, :cond_e

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cameraRotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->A:Ljava/lang/Boolean;

    if-nez v3, :cond_f

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " highlightAvailable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 630
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Missing required properties:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 632
    :cond_10
    new-instance v2, Ltv/periscope/model/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/periscope/model/c;->a:Ljava/lang/Long;

    .line 633
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/periscope/model/c;->b:Ljava/lang/Long;

    .line 634
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Ltv/periscope/model/c;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Ltv/periscope/model/c;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Ltv/periscope/model/c;->e:Ltv/periscope/model/z;

    move-object/from16 v0, p0

    iget-object v10, v0, Ltv/periscope/model/c;->f:Ljava/lang/Long;

    .line 638
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/periscope/model/c;->g:Ljava/lang/Boolean;

    .line 639
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ltv/periscope/model/c;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/periscope/model/c;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/periscope/model/c;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->k:Ljava/lang/Long;

    move-object/from16 v16, v0

    .line 643
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->l:Ljava/lang/Long;

    move-object/from16 v18, v0

    .line 644
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->m:Ljava/lang/Double;

    move-object/from16 v20, v0

    .line 645
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->n:Ljava/lang/Double;

    move-object/from16 v22, v0

    .line 646
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->o:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->p:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    .line 648
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->q:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->r:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->s:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->t:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->u:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->v:Ljava/lang/Boolean;

    move-object/from16 v31, v0

    .line 654
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->w:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->x:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->y:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->z:Ljava/lang/Integer;

    move-object/from16 v35, v0

    .line 658
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/periscope/model/c;->A:Ljava/lang/Boolean;

    move-object/from16 v36, v0

    .line 659
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x0

    invoke-direct/range {v2 .. v37}, Ltv/periscope/model/a;-><init>(JJLjava/lang/String;Ljava/lang/String;Ltv/periscope/model/z;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJDDLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLtv/periscope/model/b;)V

    return-object v2
.end method

.method public a(D)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 505
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->m:Ljava/lang/Double;

    .line 506
    return-object p0
.end method

.method public a(I)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->z:Ljava/lang/Integer;

    .line 571
    return-object p0
.end method

.method public a(J)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 445
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->a:Ljava/lang/Long;

    .line 446
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Ltv/periscope/model/c;->c:Ljava/lang/String;

    .line 456
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Ltv/periscope/model/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/periscope/model/p;"
        }
    .end annotation

    .prologue
    .line 555
    iput-object p1, p0, Ltv/periscope/model/c;->w:Ljava/util/ArrayList;

    .line 556
    return-object p0
.end method

.method public a(Ltv/periscope/model/z;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Ltv/periscope/model/c;->e:Ltv/periscope/model/z;

    .line 466
    return-object p0
.end method

.method public a(Z)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 475
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->g:Ljava/lang/Boolean;

    .line 476
    return-object p0
.end method

.method public b(D)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 510
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->n:Ljava/lang/Double;

    .line 511
    return-object p0
.end method

.method public b(J)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 450
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->b:Ljava/lang/Long;

    .line 451
    return-object p0
.end method

.method public b(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Ltv/periscope/model/c;->d:Ljava/lang/String;

    .line 461
    return-object p0
.end method

.method public b(Ljava/util/ArrayList;)Ltv/periscope/model/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/periscope/model/p;"
        }
    .end annotation

    .prologue
    .line 560
    iput-object p1, p0, Ltv/periscope/model/c;->x:Ljava/util/ArrayList;

    .line 561
    return-object p0
.end method

.method public b(Z)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 520
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->p:Ljava/lang/Boolean;

    .line 521
    return-object p0
.end method

.method public c(J)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 470
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->f:Ljava/lang/Long;

    .line 471
    return-object p0
.end method

.method public c(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Ltv/periscope/model/c;->h:Ljava/lang/String;

    .line 481
    return-object p0
.end method

.method public c(Ljava/util/ArrayList;)Ltv/periscope/model/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/periscope/model/p;"
        }
    .end annotation

    .prologue
    .line 565
    iput-object p1, p0, Ltv/periscope/model/c;->y:Ljava/util/ArrayList;

    .line 566
    return-object p0
.end method

.method public c(Z)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 550
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->v:Ljava/lang/Boolean;

    .line 551
    return-object p0
.end method

.method public d(J)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 495
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->k:Ljava/lang/Long;

    .line 496
    return-object p0
.end method

.method public d(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Ltv/periscope/model/c;->i:Ljava/lang/String;

    .line 486
    return-object p0
.end method

.method public d(Z)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 575
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->A:Ljava/lang/Boolean;

    .line 576
    return-object p0
.end method

.method public e(J)Ltv/periscope/model/p;
    .locals 1

    .prologue
    .line 500
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/model/c;->l:Ljava/lang/Long;

    .line 501
    return-object p0
.end method

.method public e(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Ltv/periscope/model/c;->j:Ljava/lang/String;

    .line 491
    return-object p0
.end method

.method public f(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Ltv/periscope/model/c;->o:Ljava/lang/String;

    .line 516
    return-object p0
.end method

.method public g(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Ltv/periscope/model/c;->q:Ljava/lang/String;

    .line 526
    return-object p0
.end method

.method public h(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Ltv/periscope/model/c;->r:Ljava/lang/String;

    .line 531
    return-object p0
.end method

.method public i(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Ltv/periscope/model/c;->s:Ljava/lang/String;

    .line 536
    return-object p0
.end method

.method public j(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Ltv/periscope/model/c;->t:Ljava/lang/String;

    .line 541
    return-object p0
.end method

.method public k(Ljava/lang/String;)Ltv/periscope/model/p;
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Ltv/periscope/model/c;->u:Ljava/lang/String;

    .line 546
    return-object p0
.end method
