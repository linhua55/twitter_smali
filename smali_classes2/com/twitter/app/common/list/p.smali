.class Lcom/twitter/app/common/list/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lavg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavg",
        "<",
        "Lcmf",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/app/common/list/TwitterListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/list/TwitterListFragment;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/twitter/app/common/list/p;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/app/common/list/p;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-static {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/TwitterListFragment;)Lcom/twitter/app/common/list/f;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/twitter/app/common/list/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Lcom/twitter/app/common/list/f;->a(Lcmf;)V

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/twitter/app/common/list/p;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->r()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/list/p;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1}, Lcom/twitter/app/common/list/p;->a(Lcmf;)V

    return-void
.end method
