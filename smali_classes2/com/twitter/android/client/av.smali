.class public abstract Lcom/twitter/android/client/av;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/twitter/android/client/aw",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmf",
            "<TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)I"
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/av;->a:Lcmf;

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/client/av;->a:Lcmf;

    invoke-virtual {v1}, Lcmf;->bb_()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/twitter/android/client/av;->a:Lcmf;

    invoke-virtual {v1, v0}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :goto_1
    return v0

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmf",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/client/av;->a:Lcmf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/av;->a:Lcmf;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcmf;)Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TI;>;)",
            "Lcmf",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/av;->b(Lcmf;)Lcmf;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/twitter/android/client/av;->a()Lcmf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/twitter/android/client/av;->notifyDataSetChanged()V

    .line 110
    :cond_0
    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TI;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/twitter/android/client/av;->a()Lcmf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/view/View;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TI;I)V"
        }
    .end annotation
.end method

.method public a(Lcom/twitter/android/client/aw;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/aw",
            "<TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p1, Lcom/twitter/android/client/aw;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/client/av;->a()Lcmf;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/twitter/android/client/av;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 43
    return-void
.end method

.method protected abstract b(Landroid/view/ViewGroup;I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TV;"
        }
    .end annotation
.end method

.method public b(Lcmf;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TI;>;)",
            "Lcmf",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/twitter/android/client/av;->a()Lcmf;

    move-result-object v0

    .line 120
    iput-object p1, p0, Lcom/twitter/android/client/av;->a:Lcmf;

    .line 121
    return-object v0
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/twitter/android/client/aw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/twitter/android/client/aw",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/android/client/aw;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/client/av;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/client/aw;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/twitter/android/client/av;->a()Lcmf;

    move-result-object v0

    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/twitter/android/client/aw;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/client/av;->a(Lcom/twitter/android/client/aw;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/client/av;->c(Landroid/view/ViewGroup;I)Lcom/twitter/android/client/aw;

    move-result-object v0

    return-object v0
.end method
