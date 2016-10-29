.class public Lyw;
.super Lxz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxz",
        "<",
        "Lza;",
        ">;"
    }
.end annotation


# instance fields
.field private final u:Lcom/twitter/library/media/widget/UserImageView;

.field private final v:Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

.field private final w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/wc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lyz;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lxz;-><init>(Lyl;)V

    .line 30
    iget-object v0, p1, Lyz;->a:Lxa;

    check-cast v0, Lza;

    .line 31
    invoke-static {v0}, Lza;->a(Lza;)Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v1

    iput-object v1, p0, Lyw;->u:Lcom/twitter/library/media/widget/UserImageView;

    .line 32
    invoke-static {v0}, Lza;->b(Lza;)Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    move-result-object v0

    iput-object v0, p0, Lyw;->v:Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lyz;->a(Lyz;)Lcom/twitter/android/wc;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyw;->w:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lyz;Lyx;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lyw;-><init>(Lyz;)V

    return-void
.end method

.method static synthetic a(Lyw;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lyw;->m()V

    return-void
.end method

.method private l()Z
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lyw;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->a()J

    move-result-wide v2

    .line 65
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lyw;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/wc;

    .line 68
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/wc;->f(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/twitter/android/wc;->e()Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    iget-object v4, p0, Lyw;->t:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/wc;->g(J)V

    .line 79
    iget-object v2, p0, Lyw;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/twitter/android/wc;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 82
    new-instance v1, Lyx;

    invoke-direct {v1, p0}, Lyx;-><init>(Lyw;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 97
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, Lyw;->u:Lcom/twitter/library/media/widget/UserImageView;

    new-instance v1, Lyy;

    invoke-direct {v1, p0}, Lyy;-><init>(Lyw;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lyw;->u:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v4}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lyw;->u:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p0, Lyw;->b:Lbnt;

    iget-object v1, v1, Lbnt;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 147
    iget-object v0, p0, Lyw;->b:Lbnt;

    iget-object v0, v0, Lbnt;->d:Ljava/lang/String;

    .line 148
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lyw;->h:Landroid/content/res/Resources;

    const v2, 0x7f0a0424

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lyw;->u:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lyw;->l()Z

    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lyw;->m()V

    .line 44
    :cond_0
    invoke-super {p0}, Lxz;->a()V

    .line 45
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lyw;->l:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lyw;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 103
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method b(Z)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Lxz;->b(Z)V

    .line 50
    iget-object v0, p0, Lyw;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->i()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lyw;->l:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 52
    invoke-virtual {p0}, Lyw;->k()Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;->b()V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lyw;->e()V

    .line 55
    invoke-virtual {p0}, Lyw;->k()Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;->a()V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 108
    const v0, 0x7f020135

    const v1, 0x7f120088

    invoke-virtual {p0, v0, v1}, Lyw;->a(II)V

    .line 109
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lxz;->f()V

    .line 133
    iget-object v0, p0, Lyw;->u:Lcom/twitter/library/media/widget/UserImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method synthetic h()Lcom/twitter/android/dm/widget/MessageBylineView;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lyw;->k()Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    invoke-super {p0}, Lxz;->i()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-boolean v1, p0, Lyw;->q:Z

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lyw;->h:Landroid/content/res/Resources;

    const v2, 0x7f0a02df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lyw;->b:Lbnt;

    iget-object v4, v4, Lbnt;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    return-object v0
.end method

.method k()Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lyw;->v:Lcom/twitter/android/dm/widget/ReceivedMessageBylineView;

    return-object v0
.end method
