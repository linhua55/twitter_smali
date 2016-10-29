.class Lcom/twitter/android/vu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/internal/android/service/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/internal/android/service/c",
        "<",
        "Ljava/lang/Void;",
        "Lvp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/twitter/android/vu;->a:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Lvp;

    invoke-virtual {p0, p1}, Lcom/twitter/android/vu;->b(Lvp;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Lvp;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/vu;->a(Ljava/lang/Void;Lvp;)V

    return-void
.end method

.method public a(Ljava/lang/Void;Lvp;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public a(Lvp;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public synthetic b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Lvp;

    invoke-virtual {p0, p1}, Lcom/twitter/android/vu;->a(Lvp;)V

    return-void
.end method

.method public b(Lvp;)V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p1}, Lvp;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/vu;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetListFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/twitter/android/vu;->a:Lcom/twitter/android/TweetListFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/android/TweetListFragment;)V

    .line 182
    :cond_0
    return-void
.end method
