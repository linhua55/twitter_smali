.class Lcom/twitter/android/av/watchmode/view/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lui;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/av/watchmode/view/ab;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/watchmode/view/ab;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lui;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-virtual {p1}, Lui;->a()Lcmf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/ab;->a(Lcmf;)V

    .line 116
    invoke-static {}, Lcom/twitter/library/av/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-static {v0}, Lcom/twitter/android/av/watchmode/view/ab;->a(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/library/av/b;

    move-result-object v0

    invoke-virtual {p1}, Lui;->c()Lcom/twitter/library/av/ac;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/av/b;->a(Lcom/twitter/library/av/ac;I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-static {v0}, Lcom/twitter/android/av/watchmode/view/ab;->b(Lcom/twitter/android/av/watchmode/view/ab;)Lum;

    move-result-object v0

    invoke-virtual {p1}, Lui;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lum;->a(Ljava/util/Map;)V

    .line 126
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-static {v0}, Lcom/twitter/android/av/watchmode/view/ab;->c(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/android/av/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/av/s;->b()V

    .line 129
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-static {v0}, Lcom/twitter/android/av/watchmode/view/ab;->d(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/android/av/watchmode/view/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    iget-object v1, v1, Lcom/twitter/android/av/watchmode/view/ab;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/ah;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 131
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-static {v0}, Lcom/twitter/android/av/watchmode/view/ab;->e(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/android/av/watchmode/g;

    move-result-object v0

    invoke-virtual {p1}, Lui;->a()Lcmf;

    move-result-object v1

    invoke-virtual {v1}, Lcmf;->bb_()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/g;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/ac;->a:Lcom/twitter/android/av/watchmode/view/ab;

    invoke-static {v0}, Lcom/twitter/android/av/watchmode/view/ab;->e(Lcom/twitter/android/av/watchmode/view/ab;)Lcom/twitter/android/av/watchmode/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/av/watchmode/g;->a()V

    .line 133
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lui;

    invoke-virtual {p0, p1}, Lcom/twitter/android/av/watchmode/view/ac;->a(Lui;)V

    return-void
.end method
