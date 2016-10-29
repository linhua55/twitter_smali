.class public Lcjm;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static h:Lcjn;


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/twitter/model/core/Tweet;

.field protected final c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field protected final d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected final e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected final f:Lcom/twitter/library/util/i;

.field protected final g:Lcom/twitter/library/card/q;

.field private final i:Z

.field private final j:Lcji;

.field private final k:Lcjs;

.field private final l:Lcjl;

.field private m:Lcjt;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 66
    const/4 v1, 0x0

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 8

    .prologue
    .line 77
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcjm;-><init>(ZLcom/twitter/library/card/q;Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 79
    return-void
.end method

.method public constructor <init>(ZLcom/twitter/library/card/q;Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 12

    .prologue
    .line 87
    sget-object v0, Lcjm;->h:Lcjn;

    .line 89
    invoke-interface {v0}, Lcjn;->a()Lcji;

    move-result-object v8

    sget-object v0, Lcjm;->h:Lcjn;

    invoke-interface {v0}, Lcjn;->b()Lcjs;

    move-result-object v9

    sget-object v0, Lcjm;->h:Lcjn;

    .line 90
    invoke-interface {v0}, Lcjn;->c()Lcjl;

    move-result-object v10

    sget-object v0, Lcjm;->h:Lcjn;

    .line 91
    invoke-interface {v0}, Lcjn;->d()Lcjt;

    move-result-object v11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 87
    invoke-direct/range {v0 .. v11}, Lcjm;-><init>(ZLcom/twitter/library/card/q;Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcji;Lcjs;Lcjl;Lcjt;)V

    .line 92
    return-void
.end method

.method protected constructor <init>(ZLcom/twitter/library/card/q;Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcji;Lcjs;Lcjl;Lcjt;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/twitter/library/util/i;

    invoke-direct {v0}, Lcom/twitter/library/util/i;-><init>()V

    iput-object v0, p0, Lcjm;->f:Lcom/twitter/library/util/i;

    .line 105
    iput-boolean p1, p0, Lcjm;->i:Z

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcjm;->a:Ljava/lang/ref/WeakReference;

    .line 107
    iput-object p5, p0, Lcjm;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 108
    iput-object p2, p0, Lcjm;->g:Lcom/twitter/library/card/q;

    .line 109
    iput-object p4, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    .line 110
    iput-object p6, p0, Lcjm;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 111
    iput-object p7, p0, Lcjm;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 112
    iput-object p8, p0, Lcjm;->j:Lcji;

    .line 113
    iput-object p9, p0, Lcjm;->k:Lcjs;

    .line 114
    iput-object p10, p0, Lcjm;->l:Lcjl;

    .line 115
    iput-object p11, p0, Lcjm;->m:Lcjt;

    .line 116
    return-void
.end method

.method public static a(Lcjn;)V
    .locals 0

    .prologue
    .line 124
    sput-object p0, Lcjm;->h:Lcjn;

    .line 125
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/widget/renderablecontent/e;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcjm;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 149
    if-nez v1, :cond_0

    .line 180
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-object v2, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lciz;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v0, p0, Lcjm;->m:Lcjt;

    iget-object v2, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcjm;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v4, p0, Lcjm;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v5, p0, Lcjm;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface/range {v0 .. v5}, Lcjt;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    .line 159
    :cond_1
    iget-object v2, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v0, p0, Lcjm;->l:Lcjl;

    iget-object v2, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcjm;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v4, p0, Lcjm;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v5, p0, Lcjm;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface/range {v0 .. v5}, Lcjl;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    .line 164
    :cond_2
    iget-boolean v2, p0, Lcjm;->i:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 165
    iget-object v0, p0, Lcjm;->j:Lcji;

    iget-object v2, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcjm;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v4, p0, Lcjm;->g:Lcom/twitter/library/card/q;

    iget-object v5, p0, Lcjm;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v6, p0, Lcjm;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual/range {v0 .. v6}, Lcji;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    .line 169
    :cond_3
    iget-object v2, p0, Lcjm;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v3, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v2, v3, :cond_4

    .line 170
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v2

    invoke-virtual {v2}, Lcam;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const/4 v2, 0x1

    .line 171
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Lcjm;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    iget-object v0, p0, Lcjm;->f:Lcom/twitter/library/util/i;

    const/4 v3, 0x5

    .line 173
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v3, v2}, Lcom/twitter/library/util/i;->put(ILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcjm;->k:Lcjs;

    iget-object v2, p0, Lcjm;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v3, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcjm;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v5, p0, Lcjm;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v6, p0, Lcjm;->f:Lcom/twitter/library/util/i;

    invoke-virtual/range {v0 .. v6}, Lcjs;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/util/i;)Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    .line 179
    :cond_5
    iget-object v1, p0, Lcjm;->f:Lcom/twitter/library/util/i;

    invoke-virtual {v1}, Lcom/twitter/library/util/i;->clear()V

    goto :goto_0

    .line 170
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcjm;->f:Lcom/twitter/library/util/i;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/util/i;->put(ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method protected a(Z)Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcjm;->b:Lcom/twitter/model/core/Tweet;

    .line 190
    invoke-static {v0, p1}, Lcam;->a(Lcom/twitter/model/core/Tweet;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcjm;->i:Z

    return v0
.end method
