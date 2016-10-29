.class public Lxv;
.super Lxt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxt",
        "<",
        "Lcom/twitter/model/dms/cz;",
        ">;"
    }
.end annotation


# instance fields
.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/view/ViewGroup;

.field private final n:Landroid/widget/TextView;

.field private final o:Z

.field private final p:Lcom/twitter/android/dm/z;


# direct methods
.method private constructor <init>(Lxx;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lxt;-><init>(Lwz;)V

    .line 39
    invoke-static {p1}, Lxx;->a(Lxx;)Z

    move-result v0

    iput-boolean v0, p0, Lxv;->o:Z

    .line 40
    invoke-static {p1}, Lxx;->b(Lxx;)Lcom/twitter/android/dm/z;

    move-result-object v0

    iput-object v0, p0, Lxv;->p:Lcom/twitter/android/dm/z;

    .line 42
    iget-object v0, p1, Lxx;->a:Lxa;

    check-cast v0, Lxy;

    .line 43
    invoke-static {v0}, Lxy;->a(Lxy;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lxv;->l:Landroid/widget/TextView;

    .line 44
    invoke-static {v0}, Lxy;->b(Lxy;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lxv;->m:Landroid/view/ViewGroup;

    .line 45
    invoke-static {v0}, Lxy;->c(Lxy;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lxv;->n:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lxx;Lxw;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lxv;-><init>(Lxx;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lxv;->h:Landroid/content/res/Resources;

    const v1, 0x7f0a028d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 50
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    iget-object v0, p0, Lxv;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/cz;

    .line 51
    invoke-virtual {v0}, Lcom/twitter/model/dms/cz;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-wide v2, p0, Lxv;->i:J

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->d(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    iget-object v1, p0, Lxv;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lxv;->b:Lbnt;

    iget-object v2, v2, Lbnt;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lxv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lxv;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    iget-object v1, p0, Lxv;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lxv;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lxv;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lxv;->h:Landroid/content/res/Resources;

    const v3, 0x7f0a02c7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 62
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lxv;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    iget-object v1, p0, Lxv;->p:Lcom/twitter/android/dm/z;

    invoke-interface {v1}, Lcom/twitter/android/dm/z;->e()V

    move v3, v4

    .line 66
    :goto_0
    const/4 v1, 0x6

    if-ge v3, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 67
    iget-object v1, p0, Lxv;->g:Landroid/content/Context;

    const v2, 0x7f0400ae

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/widget/UserView;

    .line 69
    const v2, 0x7f130088

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/UserView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/media/widget/UserImageView;

    .line 70
    sget-object v5, Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;->c:Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;

    invoke-virtual {v2, v5}, Lcom/twitter/library/media/widget/UserImageView;->setRoundingStrategy(Lcom/twitter/media/ui/image/config/g;)V

    .line 71
    new-instance v2, Lcom/twitter/android/xy;

    invoke-direct {v2, v1}, Lcom/twitter/android/xy;-><init>(Lcom/twitter/library/widget/BaseUserView;)V

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/UserView;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v2, p0, Lxv;->m:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 74
    iget-object v5, p0, Lxv;->p:Lcom/twitter/android/dm/z;

    invoke-interface {v5, v2, v1}, Lcom/twitter/android/dm/z;->a(Ljava/lang/Long;Lcom/twitter/library/widget/UserView;)V

    .line 66
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lxv;->p:Lcom/twitter/android/dm/z;

    invoke-interface {v1, v0}, Lcom/twitter/android/dm/z;->a(Ljava/util/List;)V

    .line 79
    iget-boolean v0, p0, Lxv;->o:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lxv;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :cond_1
    :goto_1
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lxv;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lxv;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
