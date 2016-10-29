.class public Lwt;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;Lbnt;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    iget-object v0, p1, Lbnt;->a:Lcom/twitter/model/dms/b;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/bo;

    .line 86
    invoke-static {v2}, Lwt;->a(Lcom/twitter/model/dms/bo;)Lcom/twitter/model/dms/ap;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcji;

    invoke-direct {v0}, Lcji;-><init>()V

    move-object v1, p0

    .line 89
    check-cast v1, Landroid/app/Activity;

    sget-object v3, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->e:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcji;->a(Landroid/app/Activity;Lcom/twitter/model/dms/bo;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bh_()V

    .line 93
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->c()V

    .line 94
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v6

    .line 98
    :cond_0
    return-object v6
.end method

.method public static a(Landroid/content/Context;Lbnt;Ljava/util/Map;Lws;ZZ)Landroid/view/View;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbnt;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lclj;",
            ">;",
            "Lws;",
            "ZZ)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v2, p1, Lbnt;->a:Lcom/twitter/model/dms/b;

    invoke-static {v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/bo;

    .line 50
    invoke-static {v2}, Lwt;->a(Lcom/twitter/model/dms/bo;)Lcom/twitter/model/dms/ap;

    move-result-object v3

    .line 52
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/twitter/model/dms/ap;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/android/dm/cards/dmfeedbackcard/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/model/dms/ax;

    .line 55
    invoke-virtual {v8}, Lcom/twitter/model/dms/ax;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lclj;

    invoke-direct {v4}, Lclj;-><init>()V

    .line 54
    invoke-static {v3, v4}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lclj;

    .line 57
    iget-object v10, p1, Lbnt;->d:Ljava/lang/String;

    .line 58
    iget-object v11, p1, Lbnt;->e:Ljava/lang/String;

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lbnt;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 61
    new-instance v3, Lcom/twitter/android/dm/cards/dmfeedbackcard/c;

    iget-object v5, v2, Lcom/twitter/model/dms/bo;->e:Ljava/lang/String;

    .line 62
    invoke-virtual {v2}, Lcom/twitter/model/dms/bo;->l()J

    move-result-wide v6

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/twitter/android/dm/cards/dmfeedbackcard/c;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/twitter/model/dms/ax;Lclj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Lcom/twitter/android/dm/cards/dmfeedbackcard/c;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    new-instance v2, Lcom/twitter/android/dm/cards/dmfeedbackcard/DMFeedbackCardView;

    move-object/from16 v0, p3

    invoke-direct {v2, p0, v3, v0}, Lcom/twitter/android/dm/cards/dmfeedbackcard/DMFeedbackCardView;-><init>(Landroid/content/Context;Lcom/twitter/android/dm/cards/dmfeedbackcard/c;Lcom/twitter/android/dm/cards/dmfeedbackcard/b;)V

    .line 69
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/twitter/model/dms/bo;)Lcom/twitter/model/dms/ap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    .line 105
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/model/dms/ap;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 104
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 108
    goto :goto_1
.end method
