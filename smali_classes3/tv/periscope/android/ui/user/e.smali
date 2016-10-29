.class public Ltv/periscope/android/ui/user/e;
.super Ltv/periscope/android/ui/user/d;
.source "Twttr"

# interfaces
.implements Landroid/widget/Filterable;
.implements Ltv/periscope/android/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/user/d",
        "<",
        "Ltv/periscope/android/ui/user/o;",
        "Ltv/periscope/android/ui/user/n;",
        ">;",
        "Landroid/widget/Filterable;",
        "Ltv/periscope/android/util/y",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ltv/periscope/android/ui/user/p;

.field private final d:Ltv/periscope/android/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/periscope/android/util/y",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ltv/periscope/android/ui/user/n;

.field private f:Ltv/periscope/android/ui/user/i;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ltv/periscope/android/ui/user/g;


# direct methods
.method static synthetic a(Ltv/periscope/android/ui/user/e;)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ltv/periscope/android/ui/user/e;->g()I

    move-result v0

    return v0
.end method

.method static synthetic a(Ltv/periscope/android/ui/user/e;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/user/e;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/ui/user/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Ltv/periscope/android/ui/user/e;->g:Ljava/util/List;

    return-object p1
.end method

.method private b(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Ltv/periscope/android/ui/user/e;->h:Z

    if-eqz v0, :cond_1

    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string/jumbo v0, ""

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 174
    :cond_1
    invoke-super {p0, p1}, Ltv/periscope/android/ui/user/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Ltv/periscope/android/ui/user/e;)Ltv/periscope/android/ui/user/g;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->i:Ltv/periscope/android/ui/user/g;

    return-object v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Ltv/periscope/android/ui/user/e;->h:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0}, Ltv/periscope/android/ui/user/d;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ltv/periscope/android/ui/user/d;->getItemCount()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/user/e;->b(Landroid/view/ViewGroup;)Ltv/periscope/android/ui/user/o;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/user/e;->b(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic a()Ltv/periscope/android/view/bf;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Ltv/periscope/android/ui/user/e;->b()Ltv/periscope/android/ui/user/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/user/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->d:Ltv/periscope/android/util/y;

    invoke-interface {v0, p1}, Ltv/periscope/android/util/y;->a(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method protected b()Ltv/periscope/android/ui/user/n;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->e:Ltv/periscope/android/ui/user/n;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;)Ltv/periscope/android/ui/user/o;
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__user_row_checked:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    new-instance v1, Ltv/periscope/android/ui/user/o;

    iget-object v2, p0, Ltv/periscope/android/ui/user/e;->c:Ltv/periscope/android/ui/user/p;

    sget v3, Ltv/periscope/android/library/l;->check:I

    invoke-direct {v1, v0, v2, v3}, Ltv/periscope/android/ui/user/o;-><init>(Landroid/view/View;Ltv/periscope/android/ui/user/p;I)V

    return-object v1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->d:Ltv/periscope/android/util/y;

    invoke-interface {v0}, Ltv/periscope/android/util/y;->c()V

    .line 185
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->d:Ltv/periscope/android/util/y;

    invoke-interface {v0}, Ltv/periscope/android/util/y;->d()V

    .line 190
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->d:Ltv/periscope/android/util/y;

    invoke-interface {v0}, Ltv/periscope/android/util/y;->e()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->d:Ltv/periscope/android/util/y;

    invoke-interface {v0}, Ltv/periscope/android/util/y;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->f:Ltv/periscope/android/ui/user/i;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ltv/periscope/android/ui/user/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/ui/user/i;-><init>(Ltv/periscope/android/ui/user/e;Ltv/periscope/android/ui/user/f;)V

    iput-object v0, p0, Ltv/periscope/android/ui/user/e;->f:Ltv/periscope/android/ui/user/i;

    .line 137
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->f:Ltv/periscope/android/ui/user/i;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/user/e;->g()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/user/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 111
    instance-of v1, v0, Ltv/periscope/android/data/c;

    if-eqz v1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    instance-of v0, v0, Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, 0x2

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 101
    check-cast p1, Ltv/periscope/android/ui/user/h;

    .line 102
    iget-object v0, p1, Ltv/periscope/android/ui/user/h;->b:Ltv/periscope/android/view/PsCheckButton;

    iget-object v1, p0, Ltv/periscope/android/ui/user/e;->d:Ltv/periscope/android/util/y;

    invoke-interface {v1}, Ltv/periscope/android/util/y;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/PsCheckButton;->setChecked(Z)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Ltv/periscope/android/ui/user/d;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 90
    iget-object v0, p0, Ltv/periscope/android/ui/user/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__select_all_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    new-instance v0, Ltv/periscope/android/ui/user/h;

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/ui/user/h;-><init>(Ltv/periscope/android/ui/user/e;Landroid/view/View;)V

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Ltv/periscope/android/ui/user/d;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method
