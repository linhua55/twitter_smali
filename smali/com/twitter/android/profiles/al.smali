.class public abstract Lcom/twitter/android/profiles/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/twitter/android/kn;
.implements Lcom/twitter/android/profiles/aj;
.implements Lcom/twitter/library/client/bf;
.implements Lcom/twitter/library/widget/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/twitter/android/kn",
        "<",
        "Lcom/twitter/library/widget/BaseUserView;",
        "Lcss;",
        ">;",
        "Lcom/twitter/android/profiles/aj;",
        "Lcom/twitter/library/client/bf;",
        "Lcom/twitter/library/widget/e",
        "<",
        "Lcom/twitter/library/widget/UserView;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/library/client/Session;

.field protected final b:Lcom/twitter/android/profiles/ao;

.field protected final c:Landroid/content/Context;

.field protected final d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected e:Lcom/twitter/android/mq;

.field private final f:Lcom/twitter/android/client/c;

.field private final g:Lcom/twitter/library/client/bk;

.field private final h:Landroid/support/v4/app/FragmentActivity;

.field private final i:Landroid/support/v4/app/LoaderManager;

.field private final j:Lcom/twitter/library/client/bd;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private final o:J

.field private p:Lcom/twitter/android/profiles/ak;

.field private q:Lrx/ap;


# direct methods
.method protected constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/bk;Lcom/twitter/android/profiles/ao;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->k:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->l:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->m:Ljava/util/List;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/profiles/al;->n:I

    .line 114
    iput-object p1, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    .line 115
    iput-object p1, p0, Lcom/twitter/android/profiles/al;->h:Landroid/support/v4/app/FragmentActivity;

    .line 116
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->i:Landroid/support/v4/app/LoaderManager;

    .line 117
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->j:Lcom/twitter/library/client/bd;

    .line 118
    iput-object p2, p0, Lcom/twitter/android/profiles/al;->g:Lcom/twitter/library/client/bk;

    .line 119
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->g:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    .line 120
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/profiles/al;->o:J

    .line 121
    iput-object p3, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    .line 122
    iput-object p4, p0, Lcom/twitter/android/profiles/al;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 123
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->f:Lcom/twitter/android/client/c;

    .line 124
    return-void
.end method

.method private a(J)V
    .locals 13

    .prologue
    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 128
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 129
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 130
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 131
    :goto_0
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v12

    .line 132
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v6

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/twitter/library/provider/dm;->a(JJIJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v12, p0, Lcom/twitter/android/profiles/al;->j:Lcom/twitter/library/client/bd;

    new-instance v1, Lbux;

    iget-object v2, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 134
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v6

    move-wide v9, p1

    invoke-direct/range {v1 .. v11}, Lbux;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JIJJLjava/lang/Integer;)V

    const/4 v0, 0x4

    .line 133
    invoke-virtual {v12, v1, v0, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 145
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v11

    .line 130
    goto :goto_0

    .line 136
    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {v12}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v12}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v12}, Lcom/twitter/config/AppConfig;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :cond_3
    new-instance v1, Lbiv;

    invoke-direct {v1}, Lbiv;-><init>()V

    const-string/jumbo v2, "mProfile.null"

    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    if-nez v0, :cond_4

    move v0, v9

    .line 138
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "mProfile.getUser().null"

    .line 139
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "this.getClass()"

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "mRecommendationsAdapter.null"

    iget-object v2, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    if-nez v2, :cond_5

    .line 141
    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Trying to replenish ProfileRecommendationModule when user is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_1

    :cond_4
    move v0, v10

    goto :goto_2

    :cond_5
    move v9, v10

    .line 140
    goto :goto_3
.end method

.method static synthetic a(Lcom/twitter/android/profiles/al;J)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/profiles/al;->a(J)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 485
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 487
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 488
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    .line 489
    invoke-virtual {v1}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 486
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 490
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 492
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/library/service/x;)Z
    .locals 2

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/ab;->a(Lcom/twitter/library/client/Session;)Z

    move-result v0

    return v0
.end method

.method private b(J)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 521
    new-instance v0, Lbum;

    iget-object v1, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    .line 522
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbum;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 523
    const/4 v1, 0x0

    iput v1, v0, Lbum;->c:I

    .line 524
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->f()I

    move-result v1

    iput v1, v0, Lbum;->j:I

    .line 525
    iput-wide p1, v0, Lbum;->b:J

    .line 526
    iget-object v1, p0, Lcom/twitter/android/profiles/al;->j:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0, v4, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 527
    iput v4, p0, Lcom/twitter/android/profiles/al;->n:I

    .line 528
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    if-eqz p1, :cond_0

    .line 455
    const-string/jumbo v0, "state_recommendation_request_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/profiles/al;->n:I

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iput v1, p0, Lcom/twitter/android/profiles/al;->n:I

    goto :goto_0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->g()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 222
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0, p2}, Lcom/twitter/android/mq;->a(Landroid/database/Cursor;)V

    .line 224
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->h()V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->l()V

    .line 228
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lcom/twitter/library/widget/BaseUserView;

    check-cast p2, Lcss;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/profiles/al;->a(Lcom/twitter/library/widget/BaseUserView;Lcss;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/twitter/android/profiles/ak;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/twitter/android/profiles/al;->p:Lcom/twitter/android/profiles/ak;

    .line 414
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/library/widget/BaseUserView;JII)V
    .locals 6

    .prologue
    .line 74
    move-object v1, p1

    check-cast v1, Lcom/twitter/library/widget/UserView;

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/profiles/al;->a(Lcom/twitter/library/widget/UserView;JII)V

    return-void
.end method

.method public a(Lcom/twitter/library/widget/BaseUserView;Lcss;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/twitter/library/widget/BaseUserView;->getUserId()J

    move-result-wide v2

    .line 349
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->k:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/twitter/library/widget/BaseUserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    iget-object v0, v0, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 350
    invoke-static {v2, v3, p2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 352
    const-string/jumbo v1, "position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 353
    iget-object v1, p0, Lcom/twitter/android/profiles/al;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/profiles/al;->l:Ljava/util/Set;

    iget-object v1, p2, Lcss;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->f:Lcom/twitter/android/client/c;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v0, v1, p2}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 358
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/library/widget/UserView;JII)V
    .locals 12

    .prologue
    .line 372
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->i()V

    .line 375
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->h:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x4

    .line 377
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getBestName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {v0, v1, v2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 407
    :cond_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v6

    .line 380
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    new-instance v1, Lbuc;

    iget-object v2, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 383
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Lbuc;->a(I)Lbuc;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/twitter/android/profiles/al;->j:Lcom/twitter/library/client/bd;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 385
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 386
    const-string/jumbo v0, "unfollow"

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v9

    .line 401
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "::user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v9, v0}, Lcom/twitter/android/profiles/as;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    .line 404
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    iget-object v7, v0, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/twitter/android/profiles/al;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-wide v3, p2

    .line 402
    invoke-static/range {v1 .. v8}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;JLcom/twitter/android/profiles/ao;Lcss;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_1

    .line 388
    :cond_3
    new-instance v1, Lbtz;

    iget-object v2, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    const/4 v0, 0x0

    .line 390
    invoke-virtual {v1, v0}, Lbtz;->a(Z)Lbtz;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbtz;->a(I)Lbtz;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/twitter/android/profiles/al;->j:Lcom/twitter/library/client/bd;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 394
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 395
    const-string/jumbo v0, "follow"

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    iget v0, v0, Lcom/twitter/android/xy;->f:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    const-string/jumbo v0, "follow_back"

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->g:Lcom/twitter/library/client/bk;

    invoke-virtual {v0, p2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    if-eqz v0, :cond_0

    move-object v0, p2

    .line 252
    check-cast v0, Lbux;

    .line 254
    invoke-virtual {v0}, Lbux;->g()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v0}, Lbux;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 257
    :goto_1
    invoke-direct {p0, p2}, Lcom/twitter/android/profiles/al;->a(Lcom/twitter/library/service/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    .line 259
    invoke-virtual {v0}, Lcom/twitter/android/mq;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/mv;

    .line 261
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/twitter/android/mv;->g()Landroid/database/Cursor;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_1

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 266
    invoke-virtual {v0}, Lcom/twitter/android/mv;->notifyDataSetChanged()V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "::user:replenish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    .line 270
    invoke-virtual {v1}, Lcom/twitter/android/profiles/ao;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1, v0}, Lcom/twitter/android/profiles/as;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/profiles/al;->o:J

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->i()V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 256
    goto :goto_1

    .line 281
    :pswitch_1
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/android/profiles/al;->n:I

    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->r()V

    goto :goto_0

    .line 285
    :cond_3
    iput v3, p0, Lcom/twitter/android/profiles/al;->n:I

    .line 286
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->l()V

    goto/16 :goto_0

    .line 291
    :pswitch_2
    if-eqz v0, :cond_0

    .line 292
    check-cast p2, Lbtz;

    .line 293
    invoke-virtual {p2}, Lbtz;->v()I

    move-result v0

    .line 294
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 295
    invoke-virtual {p2}, Lbtz;->t()J

    move-result-wide v0

    .line 297
    invoke-virtual {p2}, Lbtz;->U()Z

    move-result v2

    .line 298
    if-nez v2, :cond_5

    .line 299
    invoke-direct {p0, p2}, Lcom/twitter/android/profiles/al;->a(Lcom/twitter/library/service/x;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v2}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 301
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0}, Lcom/twitter/android/mq;->notifyDataSetChanged()V

    .line 313
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->i()V

    goto/16 :goto_0

    .line 304
    :cond_5
    new-instance v2, Lcom/twitter/android/profiles/am;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/android/profiles/am;-><init>(Lcom/twitter/android/profiles/al;J)V

    invoke-static {v2}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    .line 310
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lrx/o;->n()Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profiles/al;->q:Lrx/ap;

    goto :goto_2

    .line 319
    :pswitch_3
    if-eqz v0, :cond_0

    move-object v0, p2

    .line 320
    check-cast v0, Lbuc;

    .line 322
    invoke-virtual {v0}, Lbuc;->h()I

    move-result v1

    .line 324
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 325
    invoke-virtual {v0}, Lbuc;->g()J

    move-result-wide v4

    .line 326
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    if-nez v1, :cond_6

    .line 327
    invoke-direct {p0, v0}, Lcom/twitter/android/profiles/al;->a(Lcom/twitter/library/service/x;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 329
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0}, Lcom/twitter/android/mq;->notifyDataSetChanged()V

    .line 330
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    const v1, 0x7f0a094d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->i()V

    goto/16 :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 463
    const-string/jumbo v0, "state_recommendation_request_state"

    iget v1, p0, Lcom/twitter/android/profiles/al;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    return-void
.end method

.method protected abstract c()Landroid/net/Uri;
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method protected abstract f()I
.end method

.method protected abstract g()I
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->p:Lcom/twitter/android/profiles/ak;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->p:Lcom/twitter/android/profiles/ak;

    invoke-interface {v0}, Lcom/twitter/android/profiles/ak;->r()V

    .line 516
    :cond_0
    return-void
.end method

.method protected abstract i()V
.end method

.method protected abstract j()Ljava/lang/String;
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0}, Lcom/twitter/android/mq;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract l()V
.end method

.method public m()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0}, Lcom/twitter/android/mq;->notifyDataSetChanged()V

    .line 444
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/twitter/android/profiles/al;->n:I

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_0
    :pswitch_0
    return-void

    .line 420
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->r()V

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/profiles/al;->b(J)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public o()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0}, Lcom/twitter/android/mq;->notifyDataSetChanged()V

    .line 437
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->i()V

    .line 439
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->g()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->c()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    .line 194
    invoke-virtual {v1}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    .line 192
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    .line 197
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ownerId"

    iget-wide v2, p0, Lcom/twitter/android/profiles/al;->o:J

    .line 199
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 203
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/util/FriendshipCache;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string/jumbo v4, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?"

    .line 205
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 213
    :goto_0
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v1, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lchs;->b:[Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, v7}, Lcom/twitter/android/bt;->a(Z)Lcom/twitter/android/bt;

    move-result-object v6

    .line 216
    :cond_0
    return-object v6

    :cond_1
    move-object v5, v6

    move-object v4, v6

    .line 208
    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->d()I

    move-result v3

    .line 154
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/android/mq;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/android/mq;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 156
    if-eqz v2, :cond_0

    .line 157
    iget-object v3, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/android/mq;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/profiles/al;->c:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "user_id"

    .line 161
    move-wide/from16 v0, p4

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "type"

    .line 162
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 163
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v2}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/util/FriendshipCache;->j(J)Ljava/lang/Integer;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_2

    .line 165
    const-string/jumbo v4, "friendship"

    invoke-virtual {v10, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->e:Lcom/twitter/android/mq;

    invoke-virtual {v2}, Lcom/twitter/android/mq;->c()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/mv;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/twitter/android/mv;->a(Landroid/view/View;)Lcom/twitter/library/widget/UserView;

    move-result-object v8

    .line 168
    invoke-virtual {v8}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_3

    .line 170
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->f:Lcom/twitter/android/client/c;

    sget-object v4, Lcom/twitter/library/api/PromotedEvent;->d:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v2, v4, v7}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 171
    const-string/jumbo v2, "pc"

    invoke-static {v7}, Lcss;->a(Lcss;)[B

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v2}, Lcom/twitter/android/profiles/ao;->b()Z

    move-result v2

    invoke-static {v2}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v4

    .line 174
    const/16 v2, 0xa

    if-ne v3, v2, :cond_4

    .line 175
    const-string/jumbo v3, "association"

    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v5, 0x5

    .line 177
    invoke-virtual {v2, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v12, p0, Lcom/twitter/android/profiles/al;->o:J

    .line 178
    invoke-virtual {v2, v12, v13}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 179
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 180
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v2

    .line 175
    invoke-virtual {v10, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->a:Lcom/twitter/library/client/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "::user:profile_click"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v4, v3}, Lcom/twitter/android/profiles/as;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/profiles/al;->o:J

    iget-object v6, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    .line 184
    invoke-virtual {v8}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/xy;

    iget-object v8, v8, Lcom/twitter/android/xy;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/android/profiles/al;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 182
    invoke-static/range {v2 .. v9}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;JLcom/twitter/android/profiles/ao;Lcss;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 185
    iget-object v2, p0, Lcom/twitter/android/profiles/al;->h:Landroid/support/v4/app/FragmentActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v10, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/profiles/al;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->q:Lrx/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/profiles/al;->q:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->q:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 471
    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":stream::results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/twitter/android/profiles/al;->m:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/android/profiles/al;->b:Lcom/twitter/android/profiles/ao;

    .line 481
    invoke-virtual {v2}, Lcom/twitter/android/profiles/ao;->b()Z

    move-result v2

    invoke-static {v2}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {v2, v0}, Lcom/twitter/android/profiles/as;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-direct {p0, v1, v0}, Lcom/twitter/android/profiles/al;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method protected r()V
    .locals 3

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->b()Lcom/twitter/android/mq;

    .line 496
    iget-object v0, p0, Lcom/twitter/android/profiles/al;->i:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {p0}, Lcom/twitter/android/profiles/al;->g()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 497
    return-void
.end method
