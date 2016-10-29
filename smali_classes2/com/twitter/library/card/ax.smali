.class public final Lcom/twitter/library/card/ax;
.super Lcom/twitter/library/widget/renderablecontent/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/widget/renderablecontent/a",
        "<",
        "Lcom/twitter/library/card/CardContext;",
        "Lcom/twitter/library/card/au;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/library/card/CardContext;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:Lclm;

.field final e:Lcom/twitter/library/card/q;

.field f:Landroid/graphics/Rect;

.field g:Lcom/twitter/library/card/s;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;JLclm;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/widget/renderablecontent/a;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 134
    iput-object p2, p0, Lcom/twitter/library/card/ax;->a:Lcom/twitter/library/card/CardContext;

    .line 135
    iput-object p4, p0, Lcom/twitter/library/card/ax;->b:Ljava/lang/String;

    .line 136
    iput-wide p5, p0, Lcom/twitter/library/card/ax;->c:J

    .line 137
    iput-object p7, p0, Lcom/twitter/library/card/ax;->d:Lclm;

    .line 138
    iput-object p8, p0, Lcom/twitter/library/card/ax;->e:Lcom/twitter/library/card/q;

    .line 139
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/card/ax;
    .locals 18

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v7, 0x0

    .line 114
    :goto_0
    return-object v7

    .line 63
    :cond_0
    const-class v2, Lcom/twitter/library/client/s;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Not assignable from ActivityListenerRegistry"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 70
    :cond_2
    if-nez p1, :cond_3

    .line 71
    const/4 v7, 0x0

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v9

    .line 74
    if-nez v9, :cond_4

    .line 75
    const/4 v7, 0x0

    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {v9}, Lclw;->b()Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/card/CardContext;->d()J

    move-result-wide v4

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/card/CardContext;->c()J

    move-result-wide v2

    .line 85
    invoke-virtual {v9}, Lclw;->N()Lclm;

    move-result-object v14

    .line 88
    invoke-static {}, Lcom/twitter/library/card/z;->a()Lcom/twitter/library/card/z;

    move-result-object v6

    .line 89
    move-object/from16 v0, p1

    invoke-virtual {v6, v2, v3, v0}, Lcom/twitter/library/card/z;->c(JLjava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v4, v5, v14}, Lcom/twitter/library/card/ae;->c(JLjava/lang/Object;)V

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/card/CardContext;->b()Lclj;

    move-result-object v6

    .line 95
    if-eqz v6, :cond_5

    .line 96
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/twitter/library/card/ai;->a(Landroid/content/Context;J)Lcom/twitter/library/card/ai;

    move-result-object v3

    .line 101
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/library/card/ai;->a(JLjava/lang/Object;Ljava/lang/Object;Z)V

    .line 104
    :cond_5
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v3

    .line 105
    invoke-virtual {v9}, Lclw;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    invoke-virtual {v9}, Lclw;->d()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/TwitterUser;

    .line 107
    iget-wide v12, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v3, v12, v13, v2}, Lcom/twitter/library/card/bn;->c(JLjava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_6
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0, v14}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 112
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 114
    :cond_7
    new-instance v7, Lcom/twitter/library/card/ax;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide v12, v4

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v7 .. v17}, Lcom/twitter/library/card/ax;-><init>(Landroid/app/Activity;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Ljava/lang/String;JLclm;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/twitter/library/card/ax;->d()Landroid/view/View;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/twitter/library/card/ax;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/twitter/util/ak;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Lclw;->a(F)I

    move-result v0

    .line 215
    add-int v1, p2, p4

    .line 216
    add-int/2addr v0, p3

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/twitter/library/card/ax;->f:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 225
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, p3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/twitter/library/card/ax;->f:Landroid/graphics/Rect;

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/twitter/library/card/ax;->f:Landroid/graphics/Rect;

    return-object v0

    .line 218
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    goto :goto_0

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/twitter/library/card/ax;->f:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method protected synthetic a(Landroid/app/Activity;)Lcom/twitter/library/widget/renderablecontent/c;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/twitter/library/card/ax;->b(Landroid/app/Activity;)Lcom/twitter/library/card/au;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 149
    new-instance v1, Lcom/twitter/library/card/av;

    iget-object v0, p0, Lcom/twitter/library/card/ax;->a:Lcom/twitter/library/card/CardContext;

    .line 150
    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/twitter/library/card/ax;->c:J

    iget-object v6, p0, Lcom/twitter/library/card/ax;->d:Lclm;

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/av;-><init>(JJLclm;)V

    const-string/jumbo v0, "params_extra_scribe_association"

    iget-object v2, p0, Lcom/twitter/library/card/ax;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 151
    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/card/av;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/library/card/av;

    move-result-object v0

    const-string/jumbo v1, "params_extra_source_scribe_association"

    iget-object v2, p0, Lcom/twitter/library/card/ax;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/card/av;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/library/card/av;

    move-result-object v0

    .line 149
    return-object v0
.end method

.method protected b(Landroid/app/Activity;)Lcom/twitter/library/card/au;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/twitter/library/card/ax;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v1}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v1

    .line 159
    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/card/ax;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/library/card/ax;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/card/aw;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/twitter/library/card/ax;->e:Lcom/twitter/library/card/q;

    if-nez v1, :cond_2

    move-object v1, v0

    .line 170
    :goto_1
    if-nez v1, :cond_3

    .line 172
    :goto_2
    if-eqz v0, :cond_4

    .line 175
    :goto_3
    if-eqz v1, :cond_0

    .line 176
    iget-object v3, p0, Lcom/twitter/library/card/ax;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v4, p0, Lcom/twitter/library/card/ax;->d:Lclm;

    invoke-virtual {v2, p1, v3, v4}, Lcom/twitter/library/card/aw;->c(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/s;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/library/card/ax;->g:Lcom/twitter/library/card/s;

    .line 177
    invoke-virtual {v0, v1}, Lcom/twitter/library/card/au;->a(Lcom/twitter/library/card/v;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/card/ax;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v3, p0, Lcom/twitter/library/card/ax;->d:Lclm;

    invoke-virtual {v2, p1, v1, v3}, Lcom/twitter/library/card/aw;->b(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/v;

    move-result-object v1

    goto :goto_1

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/card/ax;->e:Lcom/twitter/library/card/q;

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/q;->a(Lcom/twitter/library/card/v;)Lcom/twitter/library/card/au;

    move-result-object v0

    goto :goto_2

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/card/ax;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v3, p0, Lcom/twitter/library/card/ax;->d:Lclm;

    .line 173
    invoke-virtual {v2, p1, v0, v3}, Lcom/twitter/library/card/aw;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;

    move-result-object v0

    goto :goto_3
.end method

.method public bi_()V
    .locals 4

    .prologue
    .line 185
    iget-boolean v1, p0, Lcom/twitter/library/card/ax;->m:Z

    .line 186
    iget-object v0, p0, Lcom/twitter/library/card/ax;->l:Lcom/twitter/library/widget/renderablecontent/c;

    check-cast v0, Lcom/twitter/library/card/au;

    .line 188
    invoke-super {p0}, Lcom/twitter/library/widget/renderablecontent/a;->bi_()V

    .line 191
    iget-object v2, p0, Lcom/twitter/library/card/ax;->e:Lcom/twitter/library/card/q;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/twitter/library/card/au;->r()Lcom/twitter/library/card/v;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/twitter/library/card/ax;->g:Lcom/twitter/library/card/s;

    if-nez v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/twitter/library/card/ax;->e:Lcom/twitter/library/card/q;

    invoke-virtual {v2, v1, v0}, Lcom/twitter/library/card/q;->a(Lcom/twitter/library/card/v;Lcom/twitter/library/card/au;)Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/twitter/library/card/ax;->e:Lcom/twitter/library/card/q;

    iget-object v3, p0, Lcom/twitter/library/card/ax;->g:Lcom/twitter/library/card/s;

    invoke-virtual {v2, v1, v0, v3}, Lcom/twitter/library/card/q;->a(Lcom/twitter/library/card/v;Lcom/twitter/library/card/au;Lcom/twitter/library/card/s;)Z

    goto :goto_0
.end method
