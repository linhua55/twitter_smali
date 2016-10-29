.class abstract Ltv/periscope/android/ui/user/d;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Holder:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "Binder::",
        "Ltv/periscope/android/view/bf;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ltv/periscope/android/data/a;

.field private final c:Ltv/periscope/android/ui/user/a;


# virtual methods
.method protected abstract a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")THolder;"
        }
    .end annotation
.end method

.method protected a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltv/periscope/android/ui/user/d;->b:Ltv/periscope/android/data/a;

    invoke-virtual {v0, p1}, Ltv/periscope/android/data/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ltv/periscope/android/view/bf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBinder;"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltv/periscope/android/ui/user/d;->b:Ltv/periscope/android/data/a;

    invoke-virtual {v0}, Ltv/periscope/android/data/a;->a()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/user/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 91
    instance-of v0, v0, Ltv/periscope/android/data/c;

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {p0, p2}, Ltv/periscope/android/ui/user/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/data/c;

    .line 65
    check-cast p1, Ltv/periscope/android/ui/user/c;

    .line 66
    iget-object v1, p0, Ltv/periscope/android/ui/user/d;->c:Ltv/periscope/android/ui/user/a;

    invoke-virtual {v1, p1, v0, p2}, Ltv/periscope/android/ui/user/a;->a(Ltv/periscope/android/ui/user/c;Ltv/periscope/android/data/c;I)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0, p2}, Ltv/periscope/android/ui/user/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    .line 71
    invoke-virtual {p0}, Ltv/periscope/android/ui/user/d;->a()Ltv/periscope/android/view/bf;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Ltv/periscope/android/view/bf;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 48
    packed-switch p2, :pswitch_data_0

    .line 55
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/user/d;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/user/d;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__list_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    new-instance v0, Ltv/periscope/android/ui/user/c;

    invoke-direct {v0, v1}, Ltv/periscope/android/ui/user/c;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
