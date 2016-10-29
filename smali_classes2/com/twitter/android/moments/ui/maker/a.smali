.class public Lcom/twitter/android/moments/ui/maker/a;
.super Laui;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laui",
        "<",
        "Lcom/twitter/android/moments/ui/maker/cf;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final c:J

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/res/Resources;

.field private final f:Lcom/twitter/android/moments/data/maker/a;

.field private final g:Laer;

.field private final h:Lcom/twitter/android/av/audio/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JILcom/twitter/android/moments/data/maker/a;Laer;Lcom/twitter/android/av/audio/n;Landroid/content/res/Resources;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/twitter/app/common/util/t;",
            ">(TC;JI",
            "Lcom/twitter/android/moments/data/maker/a;",
            "Laer;",
            "Lcom/twitter/android/av/audio/n;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/twitter/android/moments/ui/maker/MomentMakerAddTweetsActivity;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/dq;

    invoke-direct {v1}, Lcom/twitter/android/moments/ui/maker/dq;-><init>()V

    invoke-direct {p0, p1, v0, p4, v1}, Laui;-><init>(Landroid/app/Activity;Ljava/lang/Class;ILauk;)V

    .line 47
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/a;->d:Landroid/content/Context;

    .line 48
    iput-object p8, p0, Lcom/twitter/android/moments/ui/maker/a;->e:Landroid/content/res/Resources;

    .line 49
    iput-wide p2, p0, Lcom/twitter/android/moments/ui/maker/a;->c:J

    .line 50
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/a;->f:Lcom/twitter/android/moments/data/maker/a;

    .line 51
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/a;->g:Laer;

    .line 52
    iput-object p7, p0, Lcom/twitter/android/moments/ui/maker/a;->h:Lcom/twitter/android/av/audio/n;

    .line 53
    new-instance v0, Lcom/twitter/android/moments/ui/maker/b;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/b;-><init>(Lcom/twitter/android/moments/ui/maker/a;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/a;->a(Laum;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/a;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/a;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 92
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/viewmodels/m;

    .line 93
    new-instance v3, Lcom/twitter/model/moments/maker/d;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/d;-><init>()V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/twitter/model/moments/maker/d;->a(J)Lcom/twitter/model/moments/maker/ap;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/d;

    .line 95
    invoke-static {}, Lcom/twitter/model/moments/maker/aj;->a()Lcom/twitter/model/moments/maker/aj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/model/moments/maker/d;->a(Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/moments/maker/ad;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/d;

    .line 96
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/a;->f:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    invoke-virtual {v3, v0, v1}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;Lcom/twitter/model/moments/viewmodels/m;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/a;->f:Lcom/twitter/android/moments/data/maker/a;

    .line 99
    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->c()Lrx/w;

    move-result-object v0

    new-instance v1, Lach;

    invoke-direct {v1}, Lach;-><init>()V

    .line 100
    invoke-virtual {v0, v1}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    .line 101
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/a;->h:Lcom/twitter/android/av/audio/n;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/a;->e:Landroid/content/res/Resources;

    const v3, 0x7f0c000f

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/av/audio/n;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/twitter/android/moments/ui/maker/cf;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/maker/a;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/moments/ui/maker/cf;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/a;->c(Lauc;)V

    .line 67
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/a;->g:Laer;

    invoke-interface {v0, p1}, Laer;->a(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/c;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/c;-><init>(Lcom/twitter/android/moments/ui/maker/a;Ljava/util/List;)V

    .line 81
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjf;)Lrx/ap;

    goto :goto_0
.end method
