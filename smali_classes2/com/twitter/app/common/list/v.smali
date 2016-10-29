.class public Lcom/twitter/app/common/list/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/list/b;


# instance fields
.field private a:Z

.field final synthetic c:Lcom/twitter/app/common/list/TwitterListFragment;


# direct methods
.method protected constructor <init>(Lcom/twitter/app/common/list/TwitterListFragment;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/twitter/app/common/list/v;->c:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x1

    return v0
.end method

.method public a(Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1261
    iget-object v2, p0, Lcom/twitter/app/common/list/v;->c:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v2}, Lcom/twitter/app/common/list/TwitterListFragment;->aO()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return v0

    .line 1264
    :cond_1
    iget-object v2, p0, Lcom/twitter/app/common/list/v;->c:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v2}, Lcom/twitter/app/common/list/TwitterListFragment;->aD()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1265
    iput-boolean v0, p0, Lcom/twitter/app/common/list/v;->a:Z

    goto :goto_0

    .line 1267
    :cond_2
    iget-boolean v2, p0, Lcom/twitter/app/common/list/v;->a:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_0

    .line 1270
    :cond_3
    iput-boolean v1, p0, Lcom/twitter/app/common/list/v;->a:Z

    move v0, v1

    .line 1271
    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/twitter/app/common/list/v;->c:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-static {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->c(Lcom/twitter/app/common/list/TwitterListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/list/v;->c:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-static {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->d(Lcom/twitter/app/common/list/TwitterListFragment;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
