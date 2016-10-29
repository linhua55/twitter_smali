.class public Lcom/twitter/library/client/navigation/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcyw;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/twitter/app/common/account/d;

.field private final e:Landroid/view/View;

.field private final f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/app/common/account/d;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/library/client/navigation/h;->c:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/twitter/library/client/navigation/h;->d:Lcom/twitter/app/common/account/d;

    .line 37
    iput-object p3, p0, Lcom/twitter/library/client/navigation/h;->a:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->a:Landroid/view/View;

    sget v1, Lbjw;->other_accounts:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Other avatars view group not found in header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object v0, p0, Lcom/twitter/library/client/navigation/h;->b:Landroid/view/ViewGroup;

    .line 44
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->a:Landroid/view/View;

    sget v1, Lbjw;->accounts:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/h;->e:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/twitter/library/client/navigation/h;->f:F

    .line 46
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to list \u2013 setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/twitter/library/client/navigation/h;->e:Landroid/view/View;

    iget v2, p0, Lcom/twitter/library/client/navigation/h;->f:F

    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 108
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->a:Landroid/view/View;

    sget v1, Lbjw;->my_profile:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/twitter/library/client/navigation/h;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    iget-object v1, p0, Lcom/twitter/library/client/navigation/h;->d:Lcom/twitter/app/common/account/d;

    .line 84
    invoke-virtual {v1}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Lcom/twitter/library/util/b;->a(Ljava/util/List;Lcom/twitter/library/client/bk;)Ljava/util/List;

    move-result-object v3

    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/twitter/library/client/navigation/h;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/twitter/library/client/navigation/h;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v2, v0

    .line 89
    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 90
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 91
    sget v1, Lbjx;->drawer_user_image:I

    const/4 v5, 0x0

    .line 92
    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/widget/UserImageView;

    .line 93
    iget-object v5, p0, Lcom/twitter/library/client/navigation/h;->b:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    iget-object v5, v0, Lcom/twitter/model/account/UserAccount;->b:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1, v5}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 95
    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v1, p1}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/client/navigation/h;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    :cond_1
    return-void
.end method
