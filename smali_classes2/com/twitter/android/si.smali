.class public Lcom/twitter/android/si;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/au;


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/library/client/bd;

.field private final d:Lcom/twitter/library/client/bk;

.field private final e:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcwp;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/si;->a:Landroid/view/animation/Interpolator;

    .line 50
    iput-object p1, p0, Lcom/twitter/android/si;->b:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/twitter/android/si;->c:Lcom/twitter/library/client/bd;

    .line 52
    iput-object p3, p0, Lcom/twitter/android/si;->d:Lcom/twitter/library/client/bk;

    .line 53
    invoke-static {p4}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/si;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/si;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/si;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/al;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/twitter/android/si;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/twitter/android/sj;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/twitter/android/sj;-><init>(Lcom/twitter/android/si;Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/si;Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/si;->a(Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/si;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/twitter/android/si;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/twitter/library/widget/TimelineMessageView;Lcom/twitter/model/timeline/s;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    const v0, 0x7f13006f

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TimelineMessageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, v0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    const-string/jumbo v2, "click"

    invoke-direct {p0, v1, p3, v2}, Lcom/twitter/android/si;->a(Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v1, p2, Lcom/twitter/model/timeline/s;->c:Z

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p2, Lcom/twitter/model/timeline/s;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/twitter/android/si;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/al;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p2, Lcom/twitter/model/timeline/s;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/si;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 121
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 122
    iput-object p1, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 123
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v0, p0, Lcom/twitter/android/si;->d:Lcom/twitter/library/client/bk;

    .line 124
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/twitter/android/si;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 125
    invoke-virtual {v4}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/twitter/android/si;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v4}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object p2, v3, v0

    const/4 v0, 0x4

    aput-object p3, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 127
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 128
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 129
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/twitter/android/si;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/si;->d:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-object v8, p0, Lcom/twitter/android/si;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/twitter/android/si;->b:Landroid/content/Context;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    move-object v3, p1

    move-object v6, v2

    move-object v7, v2

    .line 92
    invoke-static/range {v1 .. v10}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLjava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/si;)Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/si;->d:Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/si;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/si;->c:Lcom/twitter/library/client/bd;

    return-object v0
.end method


# virtual methods
.method a(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 116
    const-wide/16 v0, 0x190

    iget-object v2, p0, Lcom/twitter/android/si;->a:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/d;->a(Landroid/view/View;JLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/TimelineMessageView;)V
    .locals 4

    .prologue
    .line 85
    const v0, 0x7f13006f

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TimelineMessageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 86
    iget-object v1, v0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    const-string/jumbo v2, "dismiss"

    const-string/jumbo v3, "click"

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/si;->a(Lcom/twitter/model/timeline/al;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/twitter/android/si;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/al;)V

    .line 88
    return-void
.end method

.method public a(Lcom/twitter/library/widget/TimelineMessageView;Lcom/twitter/model/timeline/s;)V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "primary_action"

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/si;->a(Lcom/twitter/library/widget/TimelineMessageView;Lcom/twitter/model/timeline/s;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public b(Lcom/twitter/library/widget/TimelineMessageView;Lcom/twitter/model/timeline/s;)V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "secondary_action"

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/si;->a(Lcom/twitter/library/widget/TimelineMessageView;Lcom/twitter/model/timeline/s;Ljava/lang/String;)V

    .line 66
    return-void
.end method
