.class public Latk;
.super Lcjs;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/util/i;)Lcom/twitter/library/widget/renderablecontent/e;
    .locals 6

    .prologue
    .line 50
    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Lcom/twitter/library/util/i;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/media/widget/aa;

    .line 53
    new-instance v0, Lati;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lati;-><init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/media/widget/aa;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/util/i;)Lcom/twitter/library/widget/renderablecontent/e;
    .locals 11

    .prologue
    .line 31
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/i;->a(I)Ljava/lang/Integer;

    move-result-object v2

    .line 32
    const/4 v1, 0x1

    .line 33
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/i;->a(I)Ljava/lang/Integer;

    move-result-object v3

    .line 34
    const/4 v1, 0x3

    .line 35
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/i;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/library/media/widget/z;

    .line 37
    const/4 v1, 0x4

    .line 38
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/i;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcjo;

    .line 41
    new-instance v1, Lath;

    invoke-static {v2}, Latk;->a(Ljava/lang/Integer;)I

    move-result v5

    .line 42
    invoke-static {v3}, Latk;->a(Ljava/lang/Integer;)I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lath;-><init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;IILcjo;Lcom/twitter/library/media/widget/z;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 41
    return-object v1
.end method
