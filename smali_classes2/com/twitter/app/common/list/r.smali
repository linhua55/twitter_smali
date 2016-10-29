.class Lcom/twitter/app/common/list/r;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/common/list/TwitterListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/list/TwitterListFragment;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/twitter/app/common/list/r;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/app/common/list/aa;)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/twitter/app/common/list/r;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/list/r;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->aP()Lcvt;

    move-result-object v0

    invoke-virtual {v0}, Lcvt;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/twitter/app/common/list/r;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->h()V

    .line 725
    :cond_0
    return-void
.end method
